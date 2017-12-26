//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/packed/PackedInts.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/CodecUtil.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/packed/Direct16.h"
#include "org/apache/lucene/util/packed/Direct32.h"
#include "org/apache/lucene/util/packed/Direct64.h"
#include "org/apache/lucene/util/packed/Direct8.h"
#include "org/apache/lucene/util/packed/Packed32.h"
#include "org/apache/lucene/util/packed/Packed64.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedWriter.h"

#pragma clang diagnostic ignored "-Wprotocol"

inline NSString *OrgApacheLuceneUtilPackedPackedInts_get_CODEC_NAME();
static NSString *OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME = @"PackedInts";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPackedInts, CODEC_NAME, NSString *)

inline jint OrgApacheLuceneUtilPackedPackedInts_get_VERSION_START();
#define OrgApacheLuceneUtilPackedPackedInts_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPackedInts, VERSION_START, jint)

inline jint OrgApacheLuceneUtilPackedPackedInts_get_VERSION_CURRENT();
#define OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPackedInts, VERSION_CURRENT, jint)

@interface OrgApacheLuceneUtilPackedPackedInts_Reader : NSObject

@end

@interface OrgApacheLuceneUtilPackedPackedInts_Mutable : NSObject

@end

@implementation OrgApacheLuceneUtilPackedPackedInts

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedPackedInts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<OrgApacheLuceneUtilPackedPackedInts_Reader>)getReaderWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  return OrgApacheLuceneUtilPackedPackedInts_getReaderWithOrgApacheLuceneStoreDataInput_(inArg);
}

+ (id<OrgApacheLuceneUtilPackedPackedInts_Mutable>)getMutableWithInt:(jint)valueCount
                                                             withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_(valueCount, bitsPerValue);
}

+ (OrgApacheLuceneUtilPackedPackedInts_Writer *)getWriterWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                                                                    withInt:(jint)valueCount
                                                                                    withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPackedInts_getWriterWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(outArg, valueCount, bitsPerValue);
}

+ (jint)bitsRequiredWithLong:(jlong)maxValue {
  return OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(maxValue);
}

+ (jlong)maxValueWithInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(bitsPerValue);
}

+ (jint)getNextFixedSizeWithInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPackedInts_getNextFixedSizeWithInt_(bitsPerValue);
}

+ (jint)getRoundedFixedSizeWithInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPackedInts_getRoundedFixedSizeWithInt_(bitsPerValue);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Reader;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Mutable;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Writer;", 0x9, 5, 6, 2, -1, -1, -1 },
    { NULL, "I", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 11, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 12, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getReaderWithOrgApacheLuceneStoreDataInput:);
  methods[2].selector = @selector(getMutableWithInt:withInt:);
  methods[3].selector = @selector(getWriterWithOrgApacheLuceneStoreDataOutput:withInt:withInt:);
  methods[4].selector = @selector(bitsRequiredWithLong:);
  methods[5].selector = @selector(maxValueWithInt:);
  methods[6].selector = @selector(getNextFixedSizeWithInt:);
  methods[7].selector = @selector(getRoundedFixedSizeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CODEC_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "VERSION_START", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPackedInts_VERSION_START, 0x1a, -1, -1, -1, -1 },
    { "VERSION_CURRENT", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getReader", "LOrgApacheLuceneStoreDataInput;", "LJavaIoIOException;", "getMutable", "II", "getWriter", "LOrgApacheLuceneStoreDataOutput;II", "bitsRequired", "J", "maxValue", "I", "getNextFixedSize", "getRoundedFixedSize", &OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME, "LOrgApacheLuceneUtilPackedPackedInts_Reader;LOrgApacheLuceneUtilPackedPackedInts_Mutable;LOrgApacheLuceneUtilPackedPackedInts_ReaderImpl;LOrgApacheLuceneUtilPackedPackedInts_Writer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedInts = { "PackedInts", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, 14, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedInts;
}

@end

void OrgApacheLuceneUtilPackedPackedInts_init(OrgApacheLuceneUtilPackedPackedInts *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilPackedPackedInts *new_OrgApacheLuceneUtilPackedPackedInts_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPackedInts, init)
}

OrgApacheLuceneUtilPackedPackedInts *create_OrgApacheLuceneUtilPackedPackedInts_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPackedInts, init)
}

id<OrgApacheLuceneUtilPackedPackedInts_Reader> OrgApacheLuceneUtilPackedPackedInts_getReaderWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  OrgApacheLuceneUtilCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(inArg, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME, OrgApacheLuceneUtilPackedPackedInts_VERSION_START, OrgApacheLuceneUtilPackedPackedInts_VERSION_START);
  jint bitsPerValue = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  JreAssert((bitsPerValue > 0 && bitsPerValue <= 64), (JreStrcat("$I", @"bitsPerValue=", bitsPerValue)));
  jint valueCount = [inArg readVInt];
  switch (bitsPerValue) {
    case 8:
    return new_OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(inArg, valueCount);
    case 16:
    return new_OrgApacheLuceneUtilPackedDirect16_initWithOrgApacheLuceneStoreDataInput_withInt_(inArg, valueCount);
    case 32:
    return new_OrgApacheLuceneUtilPackedDirect32_initWithOrgApacheLuceneStoreDataInput_withInt_(inArg, valueCount);
    case 64:
    return new_OrgApacheLuceneUtilPackedDirect64_initWithOrgApacheLuceneStoreDataInput_withInt_(inArg, valueCount);
    default:
    if (JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT) || bitsPerValue >= 32) {
      return new_OrgApacheLuceneUtilPackedPacked64_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(inArg, valueCount, bitsPerValue);
    }
    else {
      return new_OrgApacheLuceneUtilPackedPacked32_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(inArg, valueCount, bitsPerValue);
    }
  }
}

id<OrgApacheLuceneUtilPackedPackedInts_Mutable> OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  switch (bitsPerValue) {
    case 8:
    return new_OrgApacheLuceneUtilPackedDirect8_initWithInt_(valueCount);
    case 16:
    return new_OrgApacheLuceneUtilPackedDirect16_initWithInt_(valueCount);
    case 32:
    return new_OrgApacheLuceneUtilPackedDirect32_initWithInt_(valueCount);
    case 64:
    return new_OrgApacheLuceneUtilPackedDirect64_initWithInt_(valueCount);
    default:
    if (JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT) || bitsPerValue >= 32) {
      return new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(valueCount, bitsPerValue);
    }
    else {
      return new_OrgApacheLuceneUtilPackedPacked32_initWithInt_withInt_(valueCount, bitsPerValue);
    }
  }
}

OrgApacheLuceneUtilPackedPackedInts_Writer *OrgApacheLuceneUtilPackedPackedInts_getWriterWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  return new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(outArg, valueCount, bitsPerValue);
}

jint OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(jlong maxValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  if (maxValue > (jlong) 0x3FFFFFFFFFFFFFFFLL) {
    return 63;
  }
  if (maxValue > (jlong) 0x1FFFFFFFFFFFFFFFLL) {
    return 62;
  }
  return JavaLangMath_maxWithInt_withInt_(1, JreFpToInt(JavaLangMath_ceilWithDouble_(JavaLangMath_logWithDouble_(1 + maxValue) / JavaLangMath_logWithDouble_(2.0))));
}

jlong OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  return bitsPerValue == 64 ? JavaLangLong_MAX_VALUE : ~(JreLShift64(~0LL, bitsPerValue));
}

jint OrgApacheLuceneUtilPackedPackedInts_getNextFixedSizeWithInt_(jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  if (bitsPerValue <= 8) {
    return 8;
  }
  else if (bitsPerValue <= 16) {
    return 16;
  }
  else if (bitsPerValue <= 32) {
    return 32;
  }
  else {
    return 64;
  }
}

jint OrgApacheLuceneUtilPackedPackedInts_getRoundedFixedSizeWithInt_(jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_initialize();
  if (bitsPerValue > 58 || (bitsPerValue < 32 && bitsPerValue > 29)) {
    return OrgApacheLuceneUtilPackedPackedInts_getNextFixedSizeWithInt_(bitsPerValue);
  }
  else {
    return bitsPerValue;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedInts)

@implementation OrgApacheLuceneUtilPackedPackedInts_Reader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getWithInt:);
  methods[1].selector = @selector(getBitsPerValue);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(getArray);
  methods[4].selector = @selector(hasArray);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "get", "I", "LOrgApacheLuceneUtilPackedPackedInts;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedInts_Reader = { "Reader", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x609, 5, 0, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedInts_Reader;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedInts_Reader)

@implementation OrgApacheLuceneUtilPackedPackedInts_Mutable

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(setWithInt:withLong:);
  methods[1].selector = @selector(clear);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "set", "IJ", "LOrgApacheLuceneUtilPackedPackedInts;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedInts_Mutable = { "Mutable", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x609, 2, 0, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedInts_Mutable;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedInts_Mutable)

@implementation OrgApacheLuceneUtilPackedPackedInts_ReaderImpl

- (instancetype)initWithInt:(jint)valueCount
                    withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, bitsPerValue);
  return self;
}

- (jint)getBitsPerValue {
  return bitsPerValue_;
}

- (jint)size {
  return valueCount_;
}

- (jlong)getMaxValue {
  return OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(bitsPerValue_);
}

- (id)getArray {
  return nil;
}

- (jboolean)hasArray {
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(getBitsPerValue);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(getMaxValue);
  methods[4].selector = @selector(getArray);
  methods[5].selector = @selector(hasArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bitsPerValue_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "valueCount_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "LOrgApacheLuceneUtilPackedPackedInts;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedInts_ReaderImpl = { "ReaderImpl", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x409, 6, 2, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedInts_ReaderImpl;
}

@end

void OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_ReaderImpl *self, jint valueCount, jint bitsPerValue) {
  NSObject_init(self);
  self->bitsPerValue_ = bitsPerValue;
  JreAssert((bitsPerValue > 0 && bitsPerValue <= 64), (JreStrcat("$I", @"bitsPerValue=", bitsPerValue)));
  self->valueCount_ = valueCount;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)

@implementation OrgApacheLuceneUtilPackedPackedInts_Writer

- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)valueCount
                                               withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(self, outArg, valueCount, bitsPerValue);
  return self;
}

- (void)addWithLong:(jlong)v {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)finish {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreDataOutput:withInt:withInt:);
  methods[1].selector = @selector(addWithLong:);
  methods[2].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "out_", "LOrgApacheLuceneStoreDataOutput;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "bitsPerValue_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "valueCount_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreDataOutput;II", "LJavaIoIOException;", "add", "J", "LOrgApacheLuceneUtilPackedPackedInts;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedInts_Writer = { "Writer", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x409, 3, 3, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedInts_Writer;
}

@end

void OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_Writer *self, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue) {
  NSObject_init(self);
  JreAssert((bitsPerValue <= 64), (@"org/apache/lucene/util/packed/PackedInts.java:150 condition failed: assert bitsPerValue <= 64;"));
  self->out_ = outArg;
  self->valueCount_ = valueCount;
  self->bitsPerValue_ = bitsPerValue;
  (void) OrgApacheLuceneUtilCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(outArg, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME, OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT);
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:bitsPerValue];
  [outArg writeVIntWithInt:valueCount];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedInts_Writer)
