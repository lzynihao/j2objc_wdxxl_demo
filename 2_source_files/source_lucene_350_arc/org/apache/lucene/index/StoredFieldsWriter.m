//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/StoredFieldsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FieldsWriter.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/StoredFieldsWriter.h"
#include "org/apache/lucene/index/StoredFieldsWriterPerThread.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneIndexStoredFieldsWriter ()

- (void)initFieldsWriter OBJC_METHOD_FAMILY_NONE;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexStoredFieldsWriter_initFieldsWriter(OrgApacheLuceneIndexStoredFieldsWriter *self);

@interface OrgApacheLuceneIndexStoredFieldsWriter_PerDoc () {
 @public
  OrgApacheLuceneIndexStoredFieldsWriter *this$0_;
}

@end

@implementation OrgApacheLuceneIndexStoredFieldsWriter

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter
                         withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos {
  OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(self, docWriter, fieldInfos);
  return self;
}

- (OrgApacheLuceneIndexStoredFieldsWriterPerThread *)addThreadWithOrgApacheLuceneIndexDocumentsWriter_DocState:(OrgApacheLuceneIndexDocumentsWriter_DocState *)docState {
  return new_OrgApacheLuceneIndexStoredFieldsWriterPerThread_initWithOrgApacheLuceneIndexDocumentsWriter_DocState_withOrgApacheLuceneIndexStoredFieldsWriter_(docState, self);
}

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  @synchronized(self) {
    if (((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->numDocs_ > lastDocID_) {
      OrgApacheLuceneIndexStoredFieldsWriter_initFieldsWriter(self);
      [self fillWithInt:state->numDocs_];
    }
    if (fieldsWriter_ != nil) {
      [fieldsWriter_ close];
      fieldsWriter_ = nil;
      lastDocID_ = 0;
      NSString *fieldsIdxName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(state->segmentName_, OrgApacheLuceneIndexIndexFileNames_FIELDS_INDEX_EXTENSION);
      if (4 + ((jlong) state->numDocs_) * 8 != [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) fileLengthWithNSString:fieldsIdxName]) {
        @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$J$$$Z", @"after flush: fdx size mismatch: ", state->numDocs_, @" docs vs ", [state->directory_ fileLengthWithNSString:fieldsIdxName], @" length in bytes of ", fieldsIdxName, @" file exists?=", [state->directory_ fileExistsWithNSString:fieldsIdxName]));
      }
    }
  }
}

- (void)initFieldsWriter {
  OrgApacheLuceneIndexStoredFieldsWriter_initFieldsWriter(self);
}

- (OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)getPerDoc {
  @synchronized(self) {
    if (freeCount_ == 0) {
      allocCount_++;
      if (allocCount_ > ((IOSObjectArray *) nil_chk(docFreeList_))->size_) {
        JreAssert((allocCount_ == 1 + docFreeList_->size_), (@"org/apache/lucene/index/StoredFieldsWriter.java:79 condition failed: assert allocCount == 1+docFreeList.length;"));
        docFreeList_ = [IOSObjectArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(allocCount_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_class_()];
      }
      return new_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(self);
    }
    else {
      return IOSObjectArray_Get(nil_chk(docFreeList_), --freeCount_);
    }
  }
}

- (void)abort {
  @synchronized(self) {
    if (fieldsWriter_ != nil) {
      [fieldsWriter_ abort];
      fieldsWriter_ = nil;
      lastDocID_ = 0;
    }
  }
}

- (void)fillWithInt:(jint)docID {
  while (lastDocID_ < docID) {
    [((OrgApacheLuceneIndexFieldsWriter *) nil_chk(fieldsWriter_)) skipDocument];
    lastDocID_++;
  }
}

- (void)finishDocumentWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)perDoc {
  @synchronized(self) {
    JreAssert(([((OrgApacheLuceneIndexIndexWriter *) nil_chk(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_))->writer_)) testPointWithNSString:@"StoredFieldsWriter.finishDocument start"]), (@"org/apache/lucene/index/StoredFieldsWriter.java:107 condition failed: assert docWriter.writer.testPoint(\"StoredFieldsWriter.finishDocument start\");"));
    OrgApacheLuceneIndexStoredFieldsWriter_initFieldsWriter(self);
    [self fillWithInt:((OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *) nil_chk(perDoc))->docID_];
    [((OrgApacheLuceneIndexFieldsWriter *) nil_chk(fieldsWriter_)) flushDocumentWithInt:perDoc->numStoredFields_ withOrgApacheLuceneStoreRAMOutputStream:perDoc->fdt_];
    lastDocID_++;
    [perDoc reset];
    [self freeWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:perDoc];
    JreAssert(([((OrgApacheLuceneIndexIndexWriter *) nil_chk(docWriter_->writer_)) testPointWithNSString:@"StoredFieldsWriter.finishDocument end"]), (@"org/apache/lucene/index/StoredFieldsWriter.java:117 condition failed: assert docWriter.writer.testPoint(\"StoredFieldsWriter.finishDocument end\");"));
  }
}

- (void)freeWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)perDoc {
  @synchronized(self) {
    JreAssert((freeCount_ < ((IOSObjectArray *) nil_chk(docFreeList_))->size_), (@"org/apache/lucene/index/StoredFieldsWriter.java:121 condition failed: assert freeCount < docFreeList.length;"));
    JreAssert((0 == ((OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *) nil_chk(perDoc))->numStoredFields_), (@"org/apache/lucene/index/StoredFieldsWriter.java:122 condition failed: assert 0 == perDoc.numStoredFields;"));
    JreAssert((0 == [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(perDoc->fdt_)) length]), (@"org/apache/lucene/index/StoredFieldsWriter.java:123 condition failed: assert 0 == perDoc.fdt.length();"));
    JreAssert((0 == [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(perDoc->fdt_)) getFilePointer]), (@"org/apache/lucene/index/StoredFieldsWriter.java:124 condition failed: assert 0 == perDoc.fdt.getFilePointer();"));
    (void) IOSObjectArray_Set(nil_chk(docFreeList_), freeCount_++, perDoc);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexStoredFieldsWriterPerThread;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x21, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x22, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexStoredFieldsWriter_PerDoc;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 7, 3, -1, -1, -1 },
    { NULL, "V", 0x20, 8, 9, 3, -1, -1, -1 },
    { NULL, "V", 0x20, 10, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriter:withOrgApacheLuceneIndexFieldInfos:);
  methods[1].selector = @selector(addThreadWithOrgApacheLuceneIndexDocumentsWriter_DocState:);
  methods[2].selector = @selector(flushWithOrgApacheLuceneIndexSegmentWriteState:);
  methods[3].selector = @selector(initFieldsWriter);
  methods[4].selector = @selector(getPerDoc);
  methods[5].selector = @selector(abort);
  methods[6].selector = @selector(fillWithInt:);
  methods[7].selector = @selector(finishDocumentWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:);
  methods[8].selector = @selector(freeWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldsWriter_", "LOrgApacheLuceneIndexFieldsWriter;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docWriter_", "LOrgApacheLuceneIndexDocumentsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lastDocID_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docFreeList_", "[LOrgApacheLuceneIndexStoredFieldsWriter_PerDoc;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "freeCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "allocCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriter;LOrgApacheLuceneIndexFieldInfos;", "addThread", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", "LJavaIoIOException;", "flush", "LOrgApacheLuceneIndexSegmentWriteState;", "fill", "I", "finishDocument", "LOrgApacheLuceneIndexStoredFieldsWriter_PerDoc;", "free" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexStoredFieldsWriter = { "StoredFieldsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 9, 7, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneIndexStoredFieldsWriter;
}

@end

void OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexStoredFieldsWriter *self, OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  NSObject_init(self);
  self->docFreeList_ = [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_class_()];
  self->docWriter_ = docWriter;
  self->fieldInfos_ = fieldInfos;
}

OrgApacheLuceneIndexStoredFieldsWriter *new_OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexStoredFieldsWriter, initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_, docWriter, fieldInfos)
}

OrgApacheLuceneIndexStoredFieldsWriter *create_OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexStoredFieldsWriter, initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_, docWriter, fieldInfos)
}

void OrgApacheLuceneIndexStoredFieldsWriter_initFieldsWriter(OrgApacheLuceneIndexStoredFieldsWriter *self) {
  @synchronized(self) {
    if (self->fieldsWriter_ == nil) {
      self->fieldsWriter_ = new_OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(self->docWriter_))->directory_, [self->docWriter_ getSegment], self->fieldInfos_);
      self->lastDocID_ = 0;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexStoredFieldsWriter)

@implementation OrgApacheLuceneIndexStoredFieldsWriter_PerDoc

- (instancetype)initWithOrgApacheLuceneIndexStoredFieldsWriter:(OrgApacheLuceneIndexStoredFieldsWriter *)outer$ {
  OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(self, outer$);
  return self;
}

- (void)reset {
  [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(fdt_)) reset];
  [((OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *) nil_chk(buffer_)) recycle];
  numStoredFields_ = 0;
}

- (void)abort {
  [self reset];
  [this$0_ freeWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:self];
}

- (jlong)sizeInBytes {
  return [((OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *) nil_chk(buffer_)) getSizeInBytes];
}

- (void)finish {
  [this$0_ finishDocumentWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexStoredFieldsWriter:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(sizeInBytes);
  methods[4].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneIndexStoredFieldsWriter;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "buffer_", "LOrgApacheLuceneIndexDocumentsWriter_PerDocBuffer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fdt_", "LOrgApacheLuceneStoreRAMOutputStream;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "numStoredFields_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoIOException;", "LOrgApacheLuceneIndexStoredFieldsWriter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexStoredFieldsWriter_PerDoc = { "PerDoc", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 5, 4, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc;
}

@end

void OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *self, OrgApacheLuceneIndexStoredFieldsWriter *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneIndexDocumentsWriter_DocWriter_init(self);
  self->buffer_ = [((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(outer$->docWriter_)) newPerDocBuffer];
  self->fdt_ = new_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(self->buffer_);
}

OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *new_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc, initWithOrgApacheLuceneIndexStoredFieldsWriter_, outer$)
}

OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *create_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc, initWithOrgApacheLuceneIndexStoredFieldsWriter_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc)
