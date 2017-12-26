//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/UnsupportedMimeTypeException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupUnsupportedMimeTypeException")
#ifdef RESTRICT_OrgJsoupUnsupportedMimeTypeException
#define INCLUDE_ALL_OrgJsoupUnsupportedMimeTypeException 0
#else
#define INCLUDE_ALL_OrgJsoupUnsupportedMimeTypeException 1
#endif
#undef RESTRICT_OrgJsoupUnsupportedMimeTypeException

#if !defined (OrgJsoupUnsupportedMimeTypeException_) && (INCLUDE_ALL_OrgJsoupUnsupportedMimeTypeException || defined(INCLUDE_OrgJsoupUnsupportedMimeTypeException))
#define OrgJsoupUnsupportedMimeTypeException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

@interface OrgJsoupUnsupportedMimeTypeException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message
                    withNSString:(NSString *)mimeType
                    withNSString:(NSString *)url;

- (NSString *)getMimeType;

- (NSString *)getUrl;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupUnsupportedMimeTypeException)

FOUNDATION_EXPORT void OrgJsoupUnsupportedMimeTypeException_initWithNSString_withNSString_withNSString_(OrgJsoupUnsupportedMimeTypeException *self, NSString *message, NSString *mimeType, NSString *url);

FOUNDATION_EXPORT OrgJsoupUnsupportedMimeTypeException *new_OrgJsoupUnsupportedMimeTypeException_initWithNSString_withNSString_withNSString_(NSString *message, NSString *mimeType, NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupUnsupportedMimeTypeException *create_OrgJsoupUnsupportedMimeTypeException_initWithNSString_withNSString_withNSString_(NSString *message, NSString *mimeType, NSString *url);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupUnsupportedMimeTypeException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupUnsupportedMimeTypeException")