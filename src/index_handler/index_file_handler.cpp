#include "index_file_handler.h"

IndexFileHandler::IndexFileHandler(BufManager* _bm){
    bm = _bm;
}
void IndexFileHandler::openFile(const char* fileName){
    fileID = bm->openFile(fileName);
    if (fileID == -1){
        bm->createFile(fileName);
        fileID = bm->openFile(fileName);
        header = (IndexFileHeader*)bm->allocPage(fileID, 0, headerIndex);
        header->rootPageId = 1;
        header->pageCount = 1;
        header->firstLeaf = 1;
        header->lastLeaf = 1;
        header->sum = 0;
        bm->markDirty(headerIndex);
        bm->access(headerIndex);

        int index;
        BPlusNode* root = (BPlusNode*)bm->allocPage(fileID, 1, index);
        root->nextPage = 0;
        root->prevPage = 0;
        root->nodeType = ix::LEAF;
        root->pageId = 1;
        root->recs = 0;
        markPageDirty(index);

    }
    else header = (IndexFileHeader*)bm->getPage(fileID, 0, headerIndex);
}

IndexFileHandler::~IndexFileHandler(){
    closeFile();
}

char* IndexFileHandler::newPage(int &index){
    header->pageCount++;
    char* res = bm->getPage(fileID, header->pageCount, index);
    ((BPlusNode*)res)->pageId = header->pageCount;
    markPageDirty(index);
    markHeaderPageDirty(); 
    return res;
}

char* IndexFileHandler::getPage(int pageID, int& index){
    bm->access(headerIndex);
    return bm->getPage(fileID, pageID, index);
}


void IndexFileHandler::markHeaderPageDirty(){
    bm->access(headerIndex);
    bm->markDirty(headerIndex);
}

void IndexFileHandler::markPageDirty(int index){
    bm->markDirty(index);
}

void IndexFileHandler::closeFile(){
    if (bm != nullptr){
        bm->close();
        bm->closeFile(fileID);
    }
}
