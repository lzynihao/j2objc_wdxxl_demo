//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/HttpStatusException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/jsoup/HttpStatusException.h"

@interface OrgJsoupHttpStatusException () {
 @public
  jint statusCode_;
  NSString *url_;
}

@end

J2OBJC_FIELD_SETTER(OrgJsoupHttpStatusException, url_, NSString *)

@implementation OrgJsoupHttpStatusException

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)statusCode
                    withNSString:(NSString *)url {
  OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(self, message, statusCode, url);
  return self;
}

- (jint)getStatusCode {
  return statusCode_;
}

- (NSString *)getUrl {
  return url_;
}

- (NSString *)description {
  return JreStrcat("$$I$$", [super description], @". Status=", statusCode_, @", URL=", url_);
}

- (void)dealloc {
  RELEASE_(url_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withInt:withNSString:);
  methods[1].selector = @selector(getStatusCode);
  methods[2].selector = @selector(getUrl);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "statusCode_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "url_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;ILNSString;", "toString" };
  static const J2ObjcClassInfo _OrgJsoupHttpStatusException = { "HttpStatusException", "org.jsoup", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgJsoupHttpStatusException;
}

@end

void OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(OrgJsoupHttpStatusException *self, NSString *message, jint statusCode, NSString *url) {
  JavaIoIOException_initWithNSString_(self, message);
  self->statusCode_ = statusCode;
  JreStrongAssign(&self->url_, url);
}

OrgJsoupHttpStatusException *new_OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(NSString *message, jint statusCode, NSString *url) {
  J2OBJC_NEW_IMPL(OrgJsoupHttpStatusException, initWithNSString_withInt_withNSString_, message, statusCode, url)
}

OrgJsoupHttpStatusException *create_OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(NSString *message, jint statusCode, NSString *url) {
  J2OBJC_CREATE_IMPL(OrgJsoupHttpStatusException, initWithNSString_withInt_withNSString_, message, statusCode, url)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupHttpStatusException)