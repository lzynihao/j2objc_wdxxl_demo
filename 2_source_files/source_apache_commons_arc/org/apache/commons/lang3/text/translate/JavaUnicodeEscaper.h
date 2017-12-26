//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/text/translate/JavaUnicodeEscaper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper")
#ifdef RESTRICT_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper
#define INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper

#if !defined (OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_) && (INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper || defined(INCLUDE_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper))
#define OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_

#define RESTRICT_OrgApacheCommonsLang3TextTranslateUnicodeEscaper 1
#define INCLUDE_OrgApacheCommonsLang3TextTranslateUnicodeEscaper 1
#include "org/apache/commons/lang3/text/translate/UnicodeEscaper.h"

@interface OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper : OrgApacheCommonsLang3TextTranslateUnicodeEscaper

#pragma mark Public

- (instancetype)initWithInt:(jint)below
                    withInt:(jint)above
                withBoolean:(jboolean)between;

+ (OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *)aboveWithInt:(jint)codepoint;

+ (OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *)belowWithInt:(jint)codepoint;

+ (OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *)betweenWithInt:(jint)codepointLow
                                                                 withInt:(jint)codepointHigh;

+ (OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *)outsideOfWithInt:(jint)codepointLow
                                                                   withInt:(jint)codepointHigh;

#pragma mark Protected

- (NSString *)toUtf16EscapeWithInt:(jint)codepoint;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper)

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_aboveWithInt_(jint codepoint);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_belowWithInt_(jint codepoint);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_betweenWithInt_withInt_(jint codepointLow, jint codepointHigh);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_outsideOfWithInt_withInt_(jint codepointLow, jint codepointHigh);

FOUNDATION_EXPORT void OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_initWithInt_withInt_withBoolean_(OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *self, jint below, jint above, jboolean between);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *new_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_initWithInt_withInt_withBoolean_(jint below, jint above, jboolean between) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper *create_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper_initWithInt_withInt_withBoolean_(jint below, jint above, jboolean between);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateJavaUnicodeEscaper")