//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/digest/B64.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Random.h"
#include "org/apache/commons/codec/digest/B64.h"

NSString *OrgApacheCommonsCodecDigestB64_B64T = @"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

@implementation OrgApacheCommonsCodecDigestB64

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecDigestB64_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)b64from24bitWithByte:(jbyte)b2
                    withByte:(jbyte)b1
                    withByte:(jbyte)b0
                     withInt:(jint)outLen
   withJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(b2, b1, b0, outLen, buffer);
}

+ (NSString *)getRandomSaltWithInt:(jint)num {
  return OrgApacheCommonsCodecDigestB64_getRandomSaltWithInt_(num);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(b64from24bitWithByte:withByte:withByte:withInt:withJavaLangStringBuilder:);
  methods[2].selector = @selector(getRandomSaltWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "B64T", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "b64from24bit", "BBBILJavaLangStringBuilder;", "getRandomSalt", "I", &OrgApacheCommonsCodecDigestB64_B64T };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecDigestB64 = { "B64", "org.apache.commons.codec.digest", ptrTable, methods, fields, 7, 0x0, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecDigestB64;
}

@end

void OrgApacheCommonsCodecDigestB64_init(OrgApacheCommonsCodecDigestB64 *self) {
  NSObject_init(self);
}

OrgApacheCommonsCodecDigestB64 *new_OrgApacheCommonsCodecDigestB64_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecDigestB64, init)
}

OrgApacheCommonsCodecDigestB64 *create_OrgApacheCommonsCodecDigestB64_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecDigestB64, init)
}

void OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(jbyte b2, jbyte b1, jbyte b0, jint outLen, JavaLangStringBuilder *buffer) {
  OrgApacheCommonsCodecDigestB64_initialize();
  jint w = ((JreLShift32(b2, 16)) & (jint) 0x00ffffff) | ((JreLShift32(b1, 8)) & (jint) 0x00ffff) | (b0 & (jint) 0xff);
  jint n = outLen;
  while (n-- > 0) {
    (void) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithChar:[((NSString *) nil_chk(OrgApacheCommonsCodecDigestB64_B64T)) charAtWithInt:w & (jint) 0x3f]];
    JreRShiftAssignInt(&w, 6);
  }
}

NSString *OrgApacheCommonsCodecDigestB64_getRandomSaltWithInt_(jint num) {
  OrgApacheCommonsCodecDigestB64_initialize();
  JavaLangStringBuilder *saltString = new_JavaLangStringBuilder_init();
  for (jint i = 1; i <= num; i++) {
    (void) [saltString appendWithChar:[((NSString *) nil_chk(OrgApacheCommonsCodecDigestB64_B64T)) charAtWithInt:[new_JavaUtilRandom_init() nextIntWithInt:[OrgApacheCommonsCodecDigestB64_B64T java_length]]]];
  }
  return [saltString description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecDigestB64)
