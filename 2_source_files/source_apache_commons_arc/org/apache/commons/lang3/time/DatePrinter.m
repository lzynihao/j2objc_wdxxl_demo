//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/time/DatePrinter.java
//

#include "J2ObjC_source.h"
#include "org/apache/commons/lang3/time/DatePrinter.h"

@interface OrgApacheCommonsLang3TimeDatePrinter : NSObject

@end

@implementation OrgApacheCommonsLang3TimeDatePrinter

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 0, 3, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x401, 0, 4, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x401, 0, 5, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x401, 0, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilTimeZone;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilLocale;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x401, 0, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(formatWithLong:);
  methods[1].selector = @selector(formatWithJavaUtilDate:);
  methods[2].selector = @selector(formatWithJavaUtilCalendar:);
  methods[3].selector = @selector(formatWithLong:withJavaLangStringBuffer:);
  methods[4].selector = @selector(formatWithJavaUtilDate:withJavaLangStringBuffer:);
  methods[5].selector = @selector(formatWithJavaUtilCalendar:withJavaLangStringBuffer:);
  methods[6].selector = @selector(getPattern);
  methods[7].selector = @selector(getTimeZone);
  methods[8].selector = @selector(getLocale);
  methods[9].selector = @selector(formatWithId:withJavaLangStringBuffer:withJavaTextFieldPosition:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "format", "J", "LJavaUtilDate;", "LJavaUtilCalendar;", "JLJavaLangStringBuffer;", "LJavaUtilDate;LJavaLangStringBuffer;", "LJavaUtilCalendar;LJavaLangStringBuffer;", "LNSObject;LJavaLangStringBuffer;LJavaTextFieldPosition;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TimeDatePrinter = { "DatePrinter", "org.apache.commons.lang3.time", ptrTable, methods, NULL, 7, 0x609, 10, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TimeDatePrinter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TimeDatePrinter)
