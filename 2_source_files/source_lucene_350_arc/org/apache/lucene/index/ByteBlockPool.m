//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/ByteBlockPool.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/ByteBlockPool.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneIndexByteBlockPool () {
 @public
  OrgApacheLuceneIndexByteBlockPool_Allocator *allocator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexByteBlockPool, allocator_, OrgApacheLuceneIndexByteBlockPool_Allocator *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexByteBlockPool)

IOSIntArray *OrgApacheLuceneIndexByteBlockPool_nextLevelArray;
IOSIntArray *OrgApacheLuceneIndexByteBlockPool_levelSizeArray;
jint OrgApacheLuceneIndexByteBlockPool_FIRST_LEVEL_SIZE;

@implementation OrgApacheLuceneIndexByteBlockPool

- (instancetype)initWithOrgApacheLuceneIndexByteBlockPool_Allocator:(OrgApacheLuceneIndexByteBlockPool_Allocator *)allocator {
  OrgApacheLuceneIndexByteBlockPool_initWithOrgApacheLuceneIndexByteBlockPool_Allocator_(self, allocator);
  return self;
}

- (void)reset {
  if (bufferUpto_ != -1) {
    for (jint i = 0; i < bufferUpto_; i++) JavaUtilArrays_fillWithByteArray_withByte_(IOSObjectArray_Get(nil_chk(buffers_), i), (jbyte) 0);
    JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(IOSObjectArray_Get(nil_chk(buffers_), bufferUpto_), 0, byteUpto_, (jbyte) 0);
    if (bufferUpto_ > 0) [((OrgApacheLuceneIndexByteBlockPool_Allocator *) nil_chk(allocator_)) recycleByteBlocksWithByteArray2:buffers_ withInt:1 withInt:1 + bufferUpto_];
    bufferUpto_ = 0;
    byteUpto_ = 0;
    byteOffset_ = 0;
    buffer_ = IOSObjectArray_Get(nil_chk(buffers_), 0);
  }
}

- (void)nextBuffer {
  if (1 + bufferUpto_ == ((IOSObjectArray *) nil_chk(buffers_))->size_) {
    IOSObjectArray *newBuffers = [IOSObjectArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(buffers_->size_ + 1, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:IOSClass_byteArray(1)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffers_, 0, newBuffers, 0, ((IOSObjectArray *) nil_chk(buffers_))->size_);
    buffers_ = newBuffers;
  }
  buffer_ = IOSObjectArray_Set(buffers_, 1 + bufferUpto_, [((OrgApacheLuceneIndexByteBlockPool_Allocator *) nil_chk(allocator_)) getByteBlock]);
  bufferUpto_++;
  byteUpto_ = 0;
  byteOffset_ += OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
}

- (jint)newSliceWithInt:(jint)size {
  if (byteUpto_ > OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE - size) [self nextBuffer];
  jint upto = byteUpto_;
  byteUpto_ += size;
  *IOSByteArray_GetRef(nil_chk(buffer_), byteUpto_ - 1) = 16;
  return upto;
}

- (jint)allocSliceWithByteArray:(IOSByteArray *)slice
                        withInt:(jint)upto {
  jint level = IOSByteArray_Get(nil_chk(slice), upto) & 15;
  jint newLevel = IOSIntArray_Get(nil_chk(OrgApacheLuceneIndexByteBlockPool_nextLevelArray), level);
  jint newSize = IOSIntArray_Get(nil_chk(OrgApacheLuceneIndexByteBlockPool_levelSizeArray), newLevel);
  if (byteUpto_ > OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE - newSize) [self nextBuffer];
  jint newUpto = byteUpto_;
  jint offset = newUpto + byteOffset_;
  byteUpto_ += newSize;
  *IOSByteArray_GetRef(nil_chk(buffer_), newUpto) = IOSByteArray_Get(slice, upto - 3);
  *IOSByteArray_GetRef(buffer_, newUpto + 1) = IOSByteArray_Get(slice, upto - 2);
  *IOSByteArray_GetRef(buffer_, newUpto + 2) = IOSByteArray_Get(slice, upto - 1);
  *IOSByteArray_GetRef(slice, upto - 3) = (jbyte) (JreURShift32(offset, 24));
  *IOSByteArray_GetRef(slice, upto - 2) = (jbyte) (JreURShift32(offset, 16));
  *IOSByteArray_GetRef(slice, upto - 1) = (jbyte) (JreURShift32(offset, 8));
  *IOSByteArray_GetRef(slice, upto) = (jbyte) offset;
  *IOSByteArray_GetRef(buffer_, byteUpto_ - 1) = (jbyte) (16 | newLevel);
  return newUpto + 3;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexByteBlockPool_Allocator:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(nextBuffer);
  methods[3].selector = @selector(newSliceWithInt:);
  methods[4].selector = @selector(allocSliceWithByteArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffers_", "[[B", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "bufferUpto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "byteUpto_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "buffer_", "[B", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "byteOffset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "allocator_", "LOrgApacheLuceneIndexByteBlockPool_Allocator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "nextLevelArray", "[I", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
    { "levelSizeArray", "[I", .constantValue.asLong = 0, 0x18, -1, 6, -1, -1 },
    { "FIRST_LEVEL_SIZE", "I", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexByteBlockPool_Allocator;", "newSlice", "I", "allocSlice", "[BI", &OrgApacheLuceneIndexByteBlockPool_nextLevelArray, &OrgApacheLuceneIndexByteBlockPool_levelSizeArray, &OrgApacheLuceneIndexByteBlockPool_FIRST_LEVEL_SIZE };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexByteBlockPool = { "ByteBlockPool", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 9, -1, 0, -1, -1, -1 };
  return &_OrgApacheLuceneIndexByteBlockPool;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexByteBlockPool class]) {
    OrgApacheLuceneIndexByteBlockPool_nextLevelArray = [IOSIntArray newArrayWithInts:(jint[]){ 1, 2, 3, 4, 5, 6, 7, 8, 9, 9 } count:10];
    OrgApacheLuceneIndexByteBlockPool_levelSizeArray = [IOSIntArray newArrayWithInts:(jint[]){ 5, 14, 20, 30, 40, 40, 80, 80, 120, 200 } count:10];
    OrgApacheLuceneIndexByteBlockPool_FIRST_LEVEL_SIZE = IOSIntArray_Get(OrgApacheLuceneIndexByteBlockPool_levelSizeArray, 0);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexByteBlockPool)
  }
}

@end

void OrgApacheLuceneIndexByteBlockPool_initWithOrgApacheLuceneIndexByteBlockPool_Allocator_(OrgApacheLuceneIndexByteBlockPool *self, OrgApacheLuceneIndexByteBlockPool_Allocator *allocator) {
  NSObject_init(self);
  self->buffers_ = [IOSObjectArray newArrayWithLength:10 type:IOSClass_byteArray(1)];
  self->bufferUpto_ = -1;
  self->byteUpto_ = OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  self->byteOffset_ = -OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  self->allocator_ = allocator;
}

OrgApacheLuceneIndexByteBlockPool *new_OrgApacheLuceneIndexByteBlockPool_initWithOrgApacheLuceneIndexByteBlockPool_Allocator_(OrgApacheLuceneIndexByteBlockPool_Allocator *allocator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexByteBlockPool, initWithOrgApacheLuceneIndexByteBlockPool_Allocator_, allocator)
}

OrgApacheLuceneIndexByteBlockPool *create_OrgApacheLuceneIndexByteBlockPool_initWithOrgApacheLuceneIndexByteBlockPool_Allocator_(OrgApacheLuceneIndexByteBlockPool_Allocator *allocator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexByteBlockPool, initWithOrgApacheLuceneIndexByteBlockPool_Allocator_, allocator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexByteBlockPool)

@implementation OrgApacheLuceneIndexByteBlockPool_Allocator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexByteBlockPool_Allocator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)recycleByteBlocksWithJavaUtilList:(id<JavaUtilList>)blocks {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (IOSByteArray *)getByteBlock {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 2, -1, 3, -1, -1 },
    { NULL, "[B", 0x400, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(recycleByteBlocksWithByteArray2:withInt:withInt:);
  methods[2].selector = @selector(recycleByteBlocksWithJavaUtilList:);
  methods[3].selector = @selector(getByteBlock);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "recycleByteBlocks", "[[BII", "LJavaUtilList;", "(Ljava/util/List<[B>;)V", "LOrgApacheLuceneIndexByteBlockPool;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexByteBlockPool_Allocator = { "Allocator", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x408, 4, 0, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexByteBlockPool_Allocator;
}

@end

void OrgApacheLuceneIndexByteBlockPool_Allocator_init(OrgApacheLuceneIndexByteBlockPool_Allocator *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexByteBlockPool_Allocator)
