//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/binary/Base64OutputStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/OutputStream.h"
#include "org/apache/commons/codec/binary/Base64.h"
#include "org/apache/commons/codec/binary/Base64OutputStream.h"
#include "org/apache/commons/codec/binary/BaseNCodecOutputStream.h"

@implementation OrgApacheCommonsCodecBinaryBase64OutputStream

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_(self, outArg);
  return self;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                               withBoolean:(jboolean)doEncode {
  OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_(self, outArg, doEncode);
  return self;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                               withBoolean:(jboolean)doEncode
                                   withInt:(jint)lineLength
                             withByteArray:(IOSByteArray *)lineSeparator {
  OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_(self, outArg, doEncode, lineLength, lineSeparator);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoOutputStream:);
  methods[1].selector = @selector(initWithJavaIoOutputStream:withBoolean:);
  methods[2].selector = @selector(initWithJavaIoOutputStream:withBoolean:withInt:withByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoOutputStream;", "LJavaIoOutputStream;Z", "LJavaIoOutputStream;ZI[B" };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecBinaryBase64OutputStream = { "Base64OutputStream", "org.apache.commons.codec.binary", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecBinaryBase64OutputStream;
}

@end

void OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_(OrgApacheCommonsCodecBinaryBase64OutputStream *self, JavaIoOutputStream *outArg) {
  OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_(self, outArg, true);
}

OrgApacheCommonsCodecBinaryBase64OutputStream *new_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_(JavaIoOutputStream *outArg) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_, outArg)
}

OrgApacheCommonsCodecBinaryBase64OutputStream *create_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_(JavaIoOutputStream *outArg) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_, outArg)
}

void OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_(OrgApacheCommonsCodecBinaryBase64OutputStream *self, JavaIoOutputStream *outArg, jboolean doEncode) {
  OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(self, outArg, new_OrgApacheCommonsCodecBinaryBase64_initWithBoolean_(false), doEncode);
}

OrgApacheCommonsCodecBinaryBase64OutputStream *new_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_(JavaIoOutputStream *outArg, jboolean doEncode) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_withBoolean_, outArg, doEncode)
}

OrgApacheCommonsCodecBinaryBase64OutputStream *create_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_(JavaIoOutputStream *outArg, jboolean doEncode) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_withBoolean_, outArg, doEncode)
}

void OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_(OrgApacheCommonsCodecBinaryBase64OutputStream *self, JavaIoOutputStream *outArg, jboolean doEncode, jint lineLength, IOSByteArray *lineSeparator) {
  OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(self, outArg, new_OrgApacheCommonsCodecBinaryBase64_initWithInt_withByteArray_(lineLength, lineSeparator), doEncode);
}

OrgApacheCommonsCodecBinaryBase64OutputStream *new_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_(JavaIoOutputStream *outArg, jboolean doEncode, jint lineLength, IOSByteArray *lineSeparator) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_, outArg, doEncode, lineLength, lineSeparator)
}

OrgApacheCommonsCodecBinaryBase64OutputStream *create_OrgApacheCommonsCodecBinaryBase64OutputStream_initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_(JavaIoOutputStream *outArg, jboolean doEncode, jint lineLength, IOSByteArray *lineSeparator) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryBase64OutputStream, initWithJavaIoOutputStream_withBoolean_withInt_withByteArray_, outArg, doEncode, lineLength, lineSeparator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecBinaryBase64OutputStream)
