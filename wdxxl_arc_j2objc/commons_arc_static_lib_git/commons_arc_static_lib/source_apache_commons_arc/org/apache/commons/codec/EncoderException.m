//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/EncoderException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Throwable.h"
#include "org/apache/commons/codec/EncoderException.h"

inline jlong OrgApacheCommonsCodecEncoderException_get_serialVersionUID(void);
#define OrgApacheCommonsCodecEncoderException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecEncoderException, serialVersionUID, jlong)

@implementation OrgApacheCommonsCodecEncoderException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecEncoderException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheCommonsCodecEncoderException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsCodecEncoderException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsCodecEncoderException_initWithJavaLangThrowable_(self, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[3].selector = @selector(initWithJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsCodecEncoderException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;", "LJavaLangThrowable;" };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecEncoderException = { "EncoderException", "org.apache.commons.codec", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecEncoderException;
}

@end

void OrgApacheCommonsCodecEncoderException_init(OrgApacheCommonsCodecEncoderException *self) {
  JavaLangException_init(self);
}

OrgApacheCommonsCodecEncoderException *new_OrgApacheCommonsCodecEncoderException_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecEncoderException, init)
}

OrgApacheCommonsCodecEncoderException *create_OrgApacheCommonsCodecEncoderException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecEncoderException, init)
}

void OrgApacheCommonsCodecEncoderException_initWithNSString_(OrgApacheCommonsCodecEncoderException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
}

OrgApacheCommonsCodecEncoderException *new_OrgApacheCommonsCodecEncoderException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecEncoderException, initWithNSString_, message)
}

OrgApacheCommonsCodecEncoderException *create_OrgApacheCommonsCodecEncoderException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecEncoderException, initWithNSString_, message)
}

void OrgApacheCommonsCodecEncoderException_initWithNSString_withJavaLangThrowable_(OrgApacheCommonsCodecEncoderException *self, NSString *message, JavaLangThrowable *cause) {
  JavaLangException_initWithNSString_withJavaLangThrowable_(self, message, cause);
}

OrgApacheCommonsCodecEncoderException *new_OrgApacheCommonsCodecEncoderException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecEncoderException, initWithNSString_withJavaLangThrowable_, message, cause)
}

OrgApacheCommonsCodecEncoderException *create_OrgApacheCommonsCodecEncoderException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecEncoderException, initWithNSString_withJavaLangThrowable_, message, cause)
}

void OrgApacheCommonsCodecEncoderException_initWithJavaLangThrowable_(OrgApacheCommonsCodecEncoderException *self, JavaLangThrowable *cause) {
  JavaLangException_initWithJavaLangThrowable_(self, cause);
}

OrgApacheCommonsCodecEncoderException *new_OrgApacheCommonsCodecEncoderException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecEncoderException, initWithJavaLangThrowable_, cause)
}

OrgApacheCommonsCodecEncoderException *create_OrgApacheCommonsCodecEncoderException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecEncoderException, initWithJavaLangThrowable_, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecEncoderException)