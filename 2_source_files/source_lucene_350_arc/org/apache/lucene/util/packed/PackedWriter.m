//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/packed/PackedWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedWriter.h"

@interface OrgApacheLuceneUtilPackedPackedWriter () {
 @public
  jlong pending_;
  jint pendingBitPos_;
  IOSLongArray *masks_;
  jint written_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedWriter, masks_, IOSLongArray *)

@implementation OrgApacheLuceneUtilPackedPackedWriter

- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)valueCount
                                               withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(self, outArg, valueCount, bitsPerValue);
  return self;
}

- (void)addWithLong:(jlong)v {
  JreAssert((v <= OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(bitsPerValue_)), (JreStrcat("$J$J", @"v=", v, @" maxValue=", OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(bitsPerValue_))));
  JreAssert((v >= 0), (@"org/apache/lucene/util/packed/PackedWriter.java:62 condition failed: assert v >= 0;"));
  if (pendingBitPos_ >= bitsPerValue_) {
    pending_ |= JreLShift64(v, (pendingBitPos_ - bitsPerValue_));
    if (pendingBitPos_ == bitsPerValue_) {
      [((OrgApacheLuceneStoreDataOutput *) nil_chk(out_)) writeLongWithLong:pending_];
      pending_ = 0;
      pendingBitPos_ = 64;
    }
    else {
      pendingBitPos_ -= bitsPerValue_;
    }
  }
  else {
    pending_ |= (JreRShift64(v, (bitsPerValue_ - pendingBitPos_))) & IOSLongArray_Get(nil_chk(masks_), pendingBitPos_ - 1);
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(out_)) writeLongWithLong:pending_];
    pendingBitPos_ = 64 - bitsPerValue_ + pendingBitPos_;
    pending_ = (JreLShift64(v, pendingBitPos_));
  }
  written_++;
}

- (void)finish {
  while (written_ < valueCount_) {
    [self addWithLong:0LL];
  }
  if (pendingBitPos_ != 64) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(out_)) writeLongWithLong:pending_];
  }
}

- (NSString *)description {
  return JreStrcat("$ICI$I$", @"PackedWriter(written ", written_, '/', valueCount_, @" with ", bitsPerValue_, @" bits/value)");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreDataOutput:withInt:withInt:);
  methods[1].selector = @selector(addWithLong:);
  methods[2].selector = @selector(finish);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pending_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pendingBitPos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "masks_", "[J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "written_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreDataOutput;II", "LJavaIoIOException;", "add", "J", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedWriter = { "PackedWriter", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 4, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedWriter;
}

@end

void OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneUtilPackedPackedWriter *self, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(self, outArg, valueCount, bitsPerValue);
  self->written_ = 0;
  self->pendingBitPos_ = 64;
  self->masks_ = [IOSLongArray newArrayWithLength:bitsPerValue - 1];
  jlong v = 1;
  for (jint i = 0; i < bitsPerValue - 1; i++) {
    v *= 2;
    *IOSLongArray_GetRef(self->masks_, i) = v - 1;
  }
}

OrgApacheLuceneUtilPackedPackedWriter *new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPackedWriter, initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_, outArg, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPackedWriter *create_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPackedWriter, initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_, outArg, valueCount, bitsPerValue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedWriter)
