//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/DecoderException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsCodecDecoderException")
#ifdef RESTRICT_OrgApacheCommonsCodecDecoderException
#define INCLUDE_ALL_OrgApacheCommonsCodecDecoderException 0
#else
#define INCLUDE_ALL_OrgApacheCommonsCodecDecoderException 1
#endif
#undef RESTRICT_OrgApacheCommonsCodecDecoderException

#if !defined (OrgApacheCommonsCodecDecoderException_) && (INCLUDE_ALL_OrgApacheCommonsCodecDecoderException || defined(INCLUDE_OrgApacheCommonsCodecDecoderException))
#define OrgApacheCommonsCodecDecoderException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

@interface OrgApacheCommonsCodecDecoderException : JavaLangException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1
                     withBoolean:(jboolean)arg2
                     withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsCodecDecoderException)

FOUNDATION_EXPORT void OrgApacheCommonsCodecDecoderException_init(OrgApacheCommonsCodecDecoderException *self);

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *new_OrgApacheCommonsCodecDecoderException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *create_OrgApacheCommonsCodecDecoderException_init(void);

FOUNDATION_EXPORT void OrgApacheCommonsCodecDecoderException_initWithNSString_(OrgApacheCommonsCodecDecoderException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *new_OrgApacheCommonsCodecDecoderException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *create_OrgApacheCommonsCodecDecoderException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsCodecDecoderException_initWithNSString_withJavaLangThrowable_(OrgApacheCommonsCodecDecoderException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *new_OrgApacheCommonsCodecDecoderException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *create_OrgApacheCommonsCodecDecoderException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT void OrgApacheCommonsCodecDecoderException_initWithJavaLangThrowable_(OrgApacheCommonsCodecDecoderException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *new_OrgApacheCommonsCodecDecoderException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecDecoderException *create_OrgApacheCommonsCodecDecoderException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsCodecDecoderException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsCodecDecoderException")
