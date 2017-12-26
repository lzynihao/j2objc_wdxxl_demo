//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/ByteSliceWriter.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/ByteBlockPool.h"
#include "org/apache/lucene/index/ByteSliceWriter.h"
#include "org/apache/lucene/index/DocumentsWriter.h"

@interface OrgApacheLuceneIndexByteSliceWriter () {
 @public
  IOSByteArray *slice_;
  jint upto_;
  OrgApacheLuceneIndexByteBlockPool *pool_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexByteSliceWriter, slice_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexByteSliceWriter, pool_, OrgApacheLuceneIndexByteBlockPool *)

@implementation OrgApacheLuceneIndexByteSliceWriter

- (instancetype)initWithOrgApacheLuceneIndexByteBlockPool:(OrgApacheLuceneIndexByteBlockPool *)pool {
  OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(self, pool);
  return self;
}

- (void)init__WithInt:(jint)address {
  slice_ = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneIndexByteBlockPool *) nil_chk(pool_))->buffers_), JreRShift32(address, OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SHIFT));
  JreAssert((slice_ != nil), (@"org/apache/lucene/index/ByteSliceWriter.java:44 condition failed: assert slice != null;"));
  upto_ = address & OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_MASK;
  offset0_ = address;
  JreAssert((upto_ < ((IOSByteArray *) nil_chk(slice_))->size_), (@"org/apache/lucene/index/ByteSliceWriter.java:47 condition failed: assert upto < slice.length;"));
}

- (void)writeByteWithByte:(jbyte)b {
  JreAssert((slice_ != nil), (@"org/apache/lucene/index/ByteSliceWriter.java:52 condition failed: assert slice != null;"));
  if (IOSByteArray_Get(nil_chk(slice_), upto_) != 0) {
    upto_ = [((OrgApacheLuceneIndexByteBlockPool *) nil_chk(pool_)) allocSliceWithByteArray:slice_ withInt:upto_];
    slice_ = pool_->buffer_;
    offset0_ = pool_->byteOffset_;
    JreAssert((slice_ != nil), (@"org/apache/lucene/index/ByteSliceWriter.java:57 condition failed: assert slice != null;"));
  }
  *IOSByteArray_GetRef(nil_chk(slice_), upto_++) = b;
  JreAssert((upto_ != slice_->size_), (@"org/apache/lucene/index/ByteSliceWriter.java:60 condition failed: assert upto != slice.length;"));
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len {
  jint offsetEnd = offset + len;
  while (offset < offsetEnd) {
    if (IOSByteArray_Get(nil_chk(slice_), upto_) != 0) {
      upto_ = [((OrgApacheLuceneIndexByteBlockPool *) nil_chk(pool_)) allocSliceWithByteArray:slice_ withInt:upto_];
      slice_ = pool_->buffer_;
      offset0_ = pool_->byteOffset_;
    }
    *IOSByteArray_GetRef(nil_chk(slice_), upto_++) = IOSByteArray_Get(nil_chk(b), offset++);
    JreAssert((upto_ != slice_->size_), (@"org/apache/lucene/index/ByteSliceWriter.java:74 condition failed: assert upto != slice.length;"));
  }
}

- (jint)getAddress {
  return upto_ + (offset0_ & OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_NOT_MASK);
}

- (void)writeVIntWithInt:(jint)i {
  while ((i & ~(jint) 0x7F) != 0) {
    [self writeByteWithByte:(jbyte) ((i & (jint) 0x7f) | (jint) 0x80)];
    JreURShiftAssignInt(&i, 7);
  }
  [self writeByteWithByte:(jbyte) i];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexByteBlockPool:);
  methods[1].selector = @selector(init__WithInt:);
  methods[2].selector = @selector(writeByteWithByte:);
  methods[3].selector = @selector(writeBytesWithByteArray:withInt:withInt:);
  methods[4].selector = @selector(getAddress);
  methods[5].selector = @selector(writeVIntWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "slice_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pool_", "LOrgApacheLuceneIndexByteBlockPool;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offset0_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexByteBlockPool;", "init", "I", "writeByte", "B", "writeBytes", "[BII", "writeVInt" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexByteSliceWriter = { "ByteSliceWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexByteSliceWriter;
}

@end

void OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteSliceWriter *self, OrgApacheLuceneIndexByteBlockPool *pool) {
  NSObject_init(self);
  self->pool_ = pool;
}

OrgApacheLuceneIndexByteSliceWriter *new_OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteBlockPool *pool) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexByteSliceWriter, initWithOrgApacheLuceneIndexByteBlockPool_, pool)
}

OrgApacheLuceneIndexByteSliceWriter *create_OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteBlockPool *pool) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexByteSliceWriter, initWithOrgApacheLuceneIndexByteBlockPool_, pool)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexByteSliceWriter)
