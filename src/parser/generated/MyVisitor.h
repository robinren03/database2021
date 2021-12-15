#pragma once
#include "SQLBaseVisitor.h"
#include "antlr4-runtime.h"
#include "../../query_manager/query_manager.h"

VarType getVarType(SQLParser::Type_Context*, int& len);
ConditionType getCondType(SQLParser::OperateContext*);

template <class Type>  
Type getValue(const string& str);

void getFromValue(Data& dt, SQLParser::ValueContext* data);

template <class Type>
std::vector<Type> castVector(antlrcpp::Any& x);

class MyVisitor: public SQLBaseVisitor {
    private:
      QueryManager* qm;
      RecordHandler* rh;
      IndexHandler* ih;
      SystemManager* sm;
    public:
  MyVisitor(){
    //TODO
  }
  virtual antlrcpp::Any visitCreate_db(SQLParser::Create_dbContext *ctx) override {
    sm->createDb(ctx->Identifier()->getText());
    return defaultResult();
  }

  virtual antlrcpp::Any visitDrop_db(SQLParser::Drop_dbContext *ctx) override {
    sm->dropDb(ctx->Identifier()->getText());
    return defaultResult();
  }

  virtual antlrcpp::Any visitShow_dbs(SQLParser::Show_dbsContext *ctx) override {
    //TODO
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitUse_db(SQLParser::Use_dbContext *ctx) override {
    sm->openDb(ctx->Identifier()->getText());
    return defaultResult();
  }

  virtual antlrcpp::Any visitShow_tables(SQLParser::Show_tablesContext *ctx) override {
    //TODO
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitShow_indexes(SQLParser::Show_indexesContext *ctx) override {
    //TODO
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitLoad_data(SQLParser::Load_dataContext *ctx) override {
    //TODO
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitStore_data(SQLParser::Store_dataContext *ctx) override {
    //TODO
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitCreate_table(SQLParser::Create_tableContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    std::vector<TableHeader> tableHeader;
    tableHeader.clear();
    std::vector<SQLParser::FieldContext *> fc = ctx->field_list()->field();
    TableHeader th;
    th.tableName = tableName;
    for(auto i:fc){
      
      SQLParser::Normal_fieldContext* pointer = dynamic_cast<SQLParser::Normal_fieldContext*>(i);
      if(pointer != nullptr) {
        th.headerName = pointer->Identifier()->getText();
        th.isForeign = false;
        th.isPrimary = false;
        th.varType = getVarType(pointer->type_(), th.len);
        th.permitNull = (pointer->Null() == nullptr);
        tableHeader.push_back(th);
        //TO BE FIXED: Default value?
      } else { 
        SQLParser::Primary_key_fieldContext* pointer = dynamic_cast<SQLParser::Primary_key_fieldContext*>(i);
        if(pointer != nullptr) {
          auto list = pointer->identifiers()->Identifier();
          for(auto id:list){
            for(auto member:tableHeader)
              if(member.headerName == id->getText()) {
                member.isPrimary = true;
                break;
              }
          }
        } else {
          SQLParser::Foreign_key_fieldContext* pointer = dynamic_cast<SQLParser::Foreign_key_fieldContext*>(i);
          if(pointer != nullptr) {
              //TODO: check the table & truly link
              for(auto member:tableHeader)
              if(member.headerName == pointer->Identifier(0)->getText()) {
                member.isForeign = true;
                break;
              }

          } else cerr << "UNKNOWN TYPE IN PARSING CREATE TABLE\n";
        }
      } 
    }
    sm->createTable(tableName, tableHeader);
    return defaultResult();
  }

  virtual antlrcpp::Any visitDrop_table(SQLParser::Drop_tableContext *ctx) override {
    sm->dropDb(ctx->Identifier()->getText());
    return defaultResult();
  }

  virtual antlrcpp::Any visitDescribe_table(SQLParser::Describe_tableContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitInsert_into_table(SQLParser::Insert_into_tableContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    auto list = ctx->value_lists()->value_list();
    for(auto i:list){
      std::vector<Data> datalist;
      datalist.clear();
      for(auto data:i->value()){
        Data dt = {0,0,0, "",0,false};
        getFromValue(dt, data);
        datalist.push_back(dt);
      }
      qm->exeInsert(tableName.c_str(), datalist); 
    }
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitDelete_from_table(SQLParser::Delete_from_tableContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    std::vector<Condition> conditionList = castVector<Condition>(visitWhere_and_clause(ctx->where_and_clause()));
    if(conditionList.size()) qm->exeDelete(tableName.c_str(), conditionList);
    else cerr << "The condition fails\n";
    return defaultResult();
  }

  virtual antlrcpp::Any visitUpdate_table(SQLParser::Update_tableContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    std::vector<std::string> headerList;
    std::vector<Data> dataList;
    std::vector<Condition> conditionList = castVector<Condition>(visitWhere_and_clause(ctx->where_and_clause()));
    SQLParser::Set_clauseContext* sc = ctx->set_clause();
    auto sc_eq = sc->EqualOrAssign();
    int size = sc_eq.size();
    for(int i = 0; i < size; i++)
    {
      Data dt;
      getFromValue(dt, sc->value(i));
      headerList.push_back(sc->Identifier(i)->getText());
      dataList.push_back(dt);
    }
    qm->exeUpdate(tableName, headerList, dataList, conditionList);
    return defaultResult();
  }

  virtual antlrcpp::Any visitSelect_table(SQLParser::Select_tableContext *ctx) override {
    std::vector<std::vector<Data>> resData;
    resData.clear();
    std::vector<std::string> tableNameList;
    std::vector<std::string> selectorList;
    std::vector<Condition> conditionList = castVector<Condition>(visitWhere_and_clause(ctx->where_and_clause()));
    tableNameList.clear();
    auto ids = ctx->identifiers()->Identifier();
    for(auto i:ids) 
      tableNameList.push_back(i->getText());
    //WARNING: AT PRESENT ONLY COL IS SUPPORTED IN SELECTOR LIST
    //NO GROUPED SEARCH SUPPORTED
    auto sls = ctx->selectors()->selector();
    for(auto i:sls)
    {
      selectorList.push_back(i->column()->Identifier(1)->getText());
    }
    qm->exeSelect(tableNameList, selectorList, conditionList, resData);
    return defaultResult();
  }

  virtual antlrcpp::Any visitAlter_add_index(SQLParser::Alter_add_indexContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    auto headerTable = ctx->identifiers()->Identifier();
    for(auto i:headerTable){
      sm->createIndex(tableName, i->getText());
    }
    return defaultResult();
  }

  virtual antlrcpp::Any visitAlter_drop_index(SQLParser::Alter_drop_indexContext *ctx) override {
    std::string tableName = ctx->Identifier()->getText();
    auto headerTable = ctx->identifiers()->Identifier();
    for(auto i:headerTable){
      sm->dropIndex(tableName, i->getText());
    }
    return defaultResult();
  }

  virtual antlrcpp::Any visitAlter_table_drop_pk(SQLParser::Alter_table_drop_pkContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitAlter_table_drop_foreign_key(SQLParser::Alter_table_drop_foreign_keyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitAlter_table_add_pk(SQLParser::Alter_table_add_pkContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitAlter_table_add_foreign_key(SQLParser::Alter_table_add_foreign_keyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitAlter_table_add_unique(SQLParser::Alter_table_add_uniqueContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitWhere_and_clause(SQLParser::Where_and_clauseContext *ctx) override{
    std::vector<Condition> conditionList;
    conditionList.clear();
    std::vector<SQLParser::Where_clauseContext *> wax = ctx->where_clause();
    for(auto i:wax){
      Condition cond;
      SQLParser::Where_operator_expressionContext* woe = dynamic_cast<SQLParser::Where_operator_expressionContext*>(i);
      if(woe==nullptr) continue;
      SQLParser::OperateContext* oc = woe->operate();
      cond.condType = getCondType(oc);
      SQLParser::ColumnContext* cc = woe->column();
      cond.leftTableName = cc->Identifier(0)->getText();
      cond.leftCol = cc->Identifier(1)->getText();
      SQLParser::ExpressionContext* ec = woe->expression();
      if(ec->value() != nullptr){
        Data dt = {0,0,0,"",0,false};
        getFromValue(dt,ec->value());
        cond.rightFloatVal = dt.floatVal;
        cond.rightStringVal = dt.stringVal;
        cond.rightIntVal = dt.intVal;
      } else if (ec->column() != nullptr) {
        cond.rightTableName = ec->column()->Identifier(0)->getText();
        cond.rightCol = ec->column()->Identifier(1)->getText();
      } else {
        cerr << "Get error in your right input side\n";
        return defaultResult();
      }
      conditionList.push_back(cond);
    }
    return conditionList;
  }

  virtual antlrcpp::Any visitWhere_operator_expression(SQLParser::Where_operator_expressionContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitAggregator(SQLParser::AggregatorContext *ctx) override {
    return visitChildren(ctx);
  }
};