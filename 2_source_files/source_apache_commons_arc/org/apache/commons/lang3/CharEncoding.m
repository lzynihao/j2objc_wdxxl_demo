//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/CharEncoding.java
//

#include "J2ObjC_source.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/IllegalCharsetNameException.h"
#include "org/apache/commons/lang3/CharEncoding.h"

NSString *OrgApacheCommonsLang3CharEncoding_ISO_8859_1 = @"ISO-8859-1";
NSString *OrgApacheCommonsLang3CharEncoding_US_ASCII = @"US-ASCII";
NSString *OrgApacheCommonsLang3CharEncoding_UTF_16 = @"UTF-16";
NSString *OrgApacheCommonsLang3CharEncoding_UTF_16BE = @"UTF-16BE";
NSString *OrgApacheCommonsLang3CharEncoding_UTF_16LE = @"UTF-16LE";
NSString *OrgApacheCommonsLang3CharEncoding_UTF_8 = @"UTF-8";

@implementation OrgApacheCommonsLang3CharEncoding

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3CharEncoding_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)isSupportedWithNSString:(NSString *)name {
  return OrgApacheCommonsLang3CharEncoding_isSupportedWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isSupportedWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ISO_8859_1", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "US_ASCII", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "UTF_16", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "UTF_16BE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "UTF_16LE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "UTF_8", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "isSupported", "LNSString;", &OrgApacheCommonsLang3CharEncoding_ISO_8859_1, &OrgApacheCommonsLang3CharEncoding_US_ASCII, &OrgApacheCommonsLang3CharEncoding_UTF_16, &OrgApacheCommonsLang3CharEncoding_UTF_16BE, &OrgApacheCommonsLang3CharEncoding_UTF_16LE, &OrgApacheCommonsLang3CharEncoding_UTF_8 };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3CharEncoding = { "CharEncoding", "org.apache.commons.lang3", ptrTable, methods, fields, 7, 0x1, 2, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3CharEncoding;
}

@end

void OrgApacheCommonsLang3CharEncoding_init(OrgApacheCommonsLang3CharEncoding *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3CharEncoding *new_OrgApacheCommonsLang3CharEncoding_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3CharEncoding, init)
}

OrgApacheCommonsLang3CharEncoding *create_OrgApacheCommonsLang3CharEncoding_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3CharEncoding, init)
}

jboolean OrgApacheCommonsLang3CharEncoding_isSupportedWithNSString_(NSString *name) {
  OrgApacheCommonsLang3CharEncoding_initialize();
  if (name == nil) {
    return false;
  }
  @try {
    return JavaNioCharsetCharset_isSupportedWithNSString_(name);
  }
  @catch (JavaNioCharsetIllegalCharsetNameException *ex) {
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3CharEncoding)