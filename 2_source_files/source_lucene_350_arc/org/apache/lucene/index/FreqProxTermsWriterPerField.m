//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxTermsWriterPerField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/document/Fieldable.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerField.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerThread.h"
#include "org/apache/lucene/index/ParallelPostingsArray.h"
#include "org/apache/lucene/index/Payload.h"
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@implementation OrgApacheLuceneIndexFreqProxTermsWriterPerField

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
         withOrgApacheLuceneIndexFreqProxTermsWriterPerThread:(OrgApacheLuceneIndexFreqProxTermsWriterPerThread *)perThread
                            withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(self, termsHashPerField, perThread, fieldInfo);
  return self;
}

- (jint)getStreamCount {
  if (((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) return 1;
  else return 2;
}

- (void)finish {
}

- (void)skippingLongTerm {
}

- (jint)compareToWithId:(OrgApacheLuceneIndexFreqProxTermsWriterPerField *)other {
  (void) cast_chk(other, [OrgApacheLuceneIndexFreqProxTermsWriterPerField class]);
  return [((NSString *) nil_chk(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_)) compareToWithId:((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(other))->fieldInfo_->name_];
}

- (void)reset {
  indexOptions_ = ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->indexOptions_;
  payloadAttribute_ = nil;
}

- (jboolean)startWithOrgApacheLuceneDocumentFieldableArray:(IOSObjectArray *)fields
                                                   withInt:(jint)count {
  for (jint i = 0; i < count; i++) if ([((id<OrgApacheLuceneDocumentFieldable>) nil_chk(IOSObjectArray_Get(nil_chk(fields), i))) isIndexed]) return true;
  return false;
}

- (void)startWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)f {
  if ([((OrgApacheLuceneUtilAttributeSource *) nil_chk(((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->attributeSource_)) hasAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]) {
    payloadAttribute_ = ((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) [((OrgApacheLuceneUtilAttributeSource *) nil_chk(fieldState_->attributeSource_)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
  }
  else {
    payloadAttribute_ = nil;
  }
}

- (void)writeProxWithInt:(jint)termID
                 withInt:(jint)proxCode {
  OrgApacheLuceneIndexPayload *payload;
  if (payloadAttribute_ == nil) {
    payload = nil;
  }
  else {
    payload = [payloadAttribute_ getPayload];
  }
  if (payload != nil && payload->length_ > 0) {
    [((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(termsHashPerField_)) writeVIntWithInt:1 withInt:(JreLShift32(proxCode, 1)) | 1];
    [termsHashPerField_ writeVIntWithInt:1 withInt:payload->length_];
    [termsHashPerField_ writeBytesWithInt:1 withByteArray:payload->data_ withInt:payload->offset_ withInt:payload->length_];
    hasPayloads_ = true;
  }
  else [((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(termsHashPerField_)) writeVIntWithInt:1 withInt:JreLShift32(proxCode, 1)];
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *postings = (OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) cast_chk(termsHashPerField_->postingsArray_, [OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray class]);
  *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(postings))->lastPositions_), termID) = ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->position_;
}

- (void)newTermWithInt:(jint)termID {
  JreAssert(([((OrgApacheLuceneIndexDocumentsWriter_DocState *) nil_chk(docState_)) testPointWithNSString:@"FreqProxTermsWriterPerField.newTerm start"]), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:118 condition failed: assert docState.testPoint(\"FreqProxTermsWriterPerField.newTerm start\");"));
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *postings = (OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) cast_chk(((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(termsHashPerField_))->postingsArray_, [OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray class]);
  *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(postings))->lastDocIDs_), termID) = docState_->docID_;
  if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_ONLY)) {
    *IOSIntArray_GetRef(nil_chk(postings->lastDocCodes_), termID) = docState_->docID_;
  }
  else {
    *IOSIntArray_GetRef(nil_chk(postings->lastDocCodes_), termID) = JreLShift32(docState_->docID_, 1);
    *IOSIntArray_GetRef(nil_chk(postings->docFreqs_), termID) = 1;
    if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
      [self writeProxWithInt:termID withInt:((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->position_];
    }
  }
  ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->maxTermFrequency_ = JavaLangMath_maxWithInt_withInt_(1, fieldState_->maxTermFrequency_);
  fieldState_->uniqueTermCount_++;
}

- (void)addTermWithInt:(jint)termID {
  JreAssert(([((OrgApacheLuceneIndexDocumentsWriter_DocState *) nil_chk(docState_)) testPointWithNSString:@"FreqProxTermsWriterPerField.addTerm start"]), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:138 condition failed: assert docState.testPoint(\"FreqProxTermsWriterPerField.addTerm start\");"));
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *postings = (OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) cast_chk(((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(termsHashPerField_))->postingsArray_, [OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray class]);
  JreAssert((indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_ONLY) || IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(postings))->docFreqs_), termID) > 0), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:142 condition failed: assert indexOptions == IndexOptions.DOCS_ONLY || postings.docFreqs[termID] > 0;"));
  if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_ONLY)) {
    if (docState_->docID_ != IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(postings))->lastDocIDs_), termID)) {
      JreAssert((docState_->docID_ > IOSIntArray_Get(postings->lastDocIDs_, termID)), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:146 condition failed: assert docState.docID > postings.lastDocIDs[termID];"));
      [termsHashPerField_ writeVIntWithInt:0 withInt:IOSIntArray_Get(nil_chk(postings->lastDocCodes_), termID)];
      *IOSIntArray_GetRef(nil_chk(postings->lastDocCodes_), termID) = docState_->docID_ - IOSIntArray_Get(nil_chk(postings->lastDocIDs_), termID);
      *IOSIntArray_GetRef(postings->lastDocIDs_, termID) = docState_->docID_;
      ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->uniqueTermCount_++;
    }
  }
  else {
    if (docState_->docID_ != IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(postings))->lastDocIDs_), termID)) {
      JreAssert((docState_->docID_ > IOSIntArray_Get(postings->lastDocIDs_, termID)), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:154 condition failed: assert docState.docID > postings.lastDocIDs[termID];"));
      if (1 == IOSIntArray_Get(nil_chk(postings->docFreqs_), termID)) [termsHashPerField_ writeVIntWithInt:0 withInt:IOSIntArray_Get(nil_chk(postings->lastDocCodes_), termID) | 1];
      else {
        [termsHashPerField_ writeVIntWithInt:0 withInt:IOSIntArray_Get(nil_chk(postings->lastDocCodes_), termID)];
        [termsHashPerField_ writeVIntWithInt:0 withInt:IOSIntArray_Get(nil_chk(postings->docFreqs_), termID)];
      }
      *IOSIntArray_GetRef(nil_chk(postings->docFreqs_), termID) = 1;
      ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->maxTermFrequency_ = JavaLangMath_maxWithInt_withInt_(1, fieldState_->maxTermFrequency_);
      *IOSIntArray_GetRef(nil_chk(postings->lastDocCodes_), termID) = JreLShift32((docState_->docID_ - IOSIntArray_Get(nil_chk(postings->lastDocIDs_), termID)), 1);
      *IOSIntArray_GetRef(postings->lastDocIDs_, termID) = docState_->docID_;
      if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
        [self writeProxWithInt:termID withInt:fieldState_->position_];
      }
      fieldState_->uniqueTermCount_++;
    }
    else {
      ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->maxTermFrequency_ = JavaLangMath_maxWithInt_withInt_(fieldState_->maxTermFrequency_, ++(*IOSIntArray_GetRef(nil_chk(postings->docFreqs_), termID)));
      if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
        [self writeProxWithInt:termID withInt:fieldState_->position_ - IOSIntArray_Get(nil_chk(postings->lastPositions_), termID)];
      }
    }
  }
}

- (OrgApacheLuceneIndexParallelPostingsArray *)createPostingsArrayWithInt:(jint)size {
  return new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(size);
}

- (void)abort {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 11, 10, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexParallelPostingsArray;", 0x0, 12, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermsHashPerField:withOrgApacheLuceneIndexFreqProxTermsWriterPerThread:withOrgApacheLuceneIndexFieldInfo:);
  methods[1].selector = @selector(getStreamCount);
  methods[2].selector = @selector(finish);
  methods[3].selector = @selector(skippingLongTerm);
  methods[4].selector = @selector(compareToWithId:);
  methods[5].selector = @selector(reset);
  methods[6].selector = @selector(startWithOrgApacheLuceneDocumentFieldableArray:withInt:);
  methods[7].selector = @selector(startWithOrgApacheLuceneDocumentFieldable:);
  methods[8].selector = @selector(writeProxWithInt:withInt:);
  methods[9].selector = @selector(newTermWithInt:);
  methods[10].selector = @selector(addTermWithInt:);
  methods[11].selector = @selector(createPostingsArrayWithInt:);
  methods[12].selector = @selector(abort);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "perThread_", "LOrgApacheLuceneIndexFreqProxTermsWriterPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsHashPerField_", "LOrgApacheLuceneIndexTermsHashPerField;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfo_", "LOrgApacheLuceneIndexFieldInfo;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldState_", "LOrgApacheLuceneIndexFieldInvertState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "indexOptions_", "LOrgApacheLuceneIndexFieldInfo_IndexOptions;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "payloadAttribute_", "LOrgApacheLuceneAnalysisTokenattributesPayloadAttribute;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "hasPayloads_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermsHashPerField;LOrgApacheLuceneIndexFreqProxTermsWriterPerThread;LOrgApacheLuceneIndexFieldInfo;", "LJavaIoIOException;", "compareTo", "LOrgApacheLuceneIndexFreqProxTermsWriterPerField;", "start", "[LOrgApacheLuceneDocumentFieldable;I", "LOrgApacheLuceneDocumentFieldable;", "writeProx", "II", "newTerm", "I", "addTerm", "createPostingsArray", "LOrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray;", "Lorg/apache/lucene/index/TermsHashConsumerPerField;Ljava/lang/Comparable<Lorg/apache/lucene/index/FreqProxTermsWriterPerField;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFreqProxTermsWriterPerField = { "FreqProxTermsWriterPerField", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 13, 8, -1, 13, -1, 14, -1 };
  return &_OrgApacheLuceneIndexFreqProxTermsWriterPerField;
}

@end

void OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexFreqProxTermsWriterPerField *self, OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexFreqProxTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  OrgApacheLuceneIndexTermsHashConsumerPerField_init(self);
  self->termsHashPerField_ = termsHashPerField;
  self->perThread_ = perThread;
  self->fieldInfo_ = fieldInfo;
  self->docState_ = ((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(termsHashPerField))->docState_;
  self->fieldState_ = termsHashPerField->fieldState_;
  self->indexOptions_ = ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->indexOptions_;
}

OrgApacheLuceneIndexFreqProxTermsWriterPerField *new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexFreqProxTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerField, initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_, termsHashPerField, perThread, fieldInfo)
}

OrgApacheLuceneIndexFreqProxTermsWriterPerField *create_OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexFreqProxTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerField, initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_, termsHashPerField, perThread, fieldInfo)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFreqProxTermsWriterPerField)

@implementation OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(self, size);
  return self;
}

- (OrgApacheLuceneIndexParallelPostingsArray *)newInstanceWithInt:(jint)size {
  return new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(size);
}

- (void)copyToWithOrgApacheLuceneIndexParallelPostingsArray:(OrgApacheLuceneIndexParallelPostingsArray *)toArray
                                                    withInt:(jint)numToCopy {
  JreAssert(([toArray isKindOfClass:[OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray class]]), (@"org/apache/lucene/index/FreqProxTermsWriterPerField.java:209 condition failed: assert toArray instanceof FreqProxPostingsArray;"));
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *to = (OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) cast_chk(toArray, [OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray class]);
  [super copyToWithOrgApacheLuceneIndexParallelPostingsArray:toArray withInt:numToCopy];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(docFreqs_, 0, ((OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *) nil_chk(to))->docFreqs_, 0, numToCopy);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(lastDocIDs_, 0, to->lastDocIDs_, 0, numToCopy);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(lastDocCodes_, 0, to->lastDocCodes_, 0, numToCopy);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(lastPositions_, 0, to->lastPositions_, 0, numToCopy);
}

- (jint)bytesPerPosting {
  return OrgApacheLuceneIndexParallelPostingsArray_BYTES_PER_POSTING + 4 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexParallelPostingsArray;", 0x0, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(newInstanceWithInt:);
  methods[2].selector = @selector(copyToWithOrgApacheLuceneIndexParallelPostingsArray:withInt:);
  methods[3].selector = @selector(bytesPerPosting);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docFreqs_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocIDs_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocCodes_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastPositions_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "newInstance", "copyTo", "LOrgApacheLuceneIndexParallelPostingsArray;I", "LOrgApacheLuceneIndexFreqProxTermsWriterPerField;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray = { "FreqProxPostingsArray", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x18, 4, 4, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray;
}

@end

void OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *self, jint size) {
  OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(self, size);
  self->docFreqs_ = [IOSIntArray newArrayWithLength:size];
  self->lastDocIDs_ = [IOSIntArray newArrayWithLength:size];
  self->lastDocCodes_ = [IOSIntArray newArrayWithLength:size];
  self->lastPositions_ = [IOSIntArray newArrayWithLength:size];
}

OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, initWithInt_, size)
}

OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *create_OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray)
