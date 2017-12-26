//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/concurrent/ConcurrentException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentException.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentUtils.h"

inline jlong OrgApacheCommonsLang3ConcurrentConcurrentException_get_serialVersionUID();
#define OrgApacheCommonsLang3ConcurrentConcurrentException_serialVersionUID 6622707671812226130LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3ConcurrentConcurrentException, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3ConcurrentConcurrentException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ConcurrentConcurrentException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSException:(NSException *)cause {
  OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSException_(self, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)msg
                 withNSException:(NSException *)cause {
  OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSString_withNSException_(self, msg, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSException:);
  methods[2].selector = @selector(initWithNSString:withNSException:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3ConcurrentConcurrentException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSException;", "LNSString;LNSException;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentConcurrentException = { "ConcurrentException", "org.apache.commons.lang3.concurrent", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3ConcurrentConcurrentException;
}

@end

void OrgApacheCommonsLang3ConcurrentConcurrentException_init(OrgApacheCommonsLang3ConcurrentConcurrentException *self) {
  JavaLangException_init(self);
}

OrgApacheCommonsLang3ConcurrentConcurrentException *new_OrgApacheCommonsLang3ConcurrentConcurrentException_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, init)
}

OrgApacheCommonsLang3ConcurrentConcurrentException *create_OrgApacheCommonsLang3ConcurrentConcurrentException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, init)
}

void OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSException_(OrgApacheCommonsLang3ConcurrentConcurrentException *self, NSException *cause) {
  JavaLangException_initWithNSException_(self, OrgApacheCommonsLang3ConcurrentConcurrentUtils_checkedExceptionWithNSException_(cause));
}

OrgApacheCommonsLang3ConcurrentConcurrentException *new_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSException_(NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, initWithNSException_, cause)
}

OrgApacheCommonsLang3ConcurrentConcurrentException *create_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSException_(NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, initWithNSException_, cause)
}

void OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSString_withNSException_(OrgApacheCommonsLang3ConcurrentConcurrentException *self, NSString *msg, NSException *cause) {
  JavaLangException_initWithNSString_withNSException_(self, msg, OrgApacheCommonsLang3ConcurrentConcurrentUtils_checkedExceptionWithNSException_(cause));
}

OrgApacheCommonsLang3ConcurrentConcurrentException *new_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSString_withNSException_(NSString *msg, NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, initWithNSString_withNSException_, msg, cause)
}

OrgApacheCommonsLang3ConcurrentConcurrentException *create_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSString_withNSException_(NSString *msg, NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentException, initWithNSString_withNSException_, msg, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentConcurrentException)