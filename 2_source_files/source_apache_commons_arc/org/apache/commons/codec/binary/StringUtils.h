//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/binary/StringUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsCodecBinaryStringUtils")
#ifdef RESTRICT_OrgApacheCommonsCodecBinaryStringUtils
#define INCLUDE_ALL_OrgApacheCommonsCodecBinaryStringUtils 0
#else
#define INCLUDE_ALL_OrgApacheCommonsCodecBinaryStringUtils 1
#endif
#undef RESTRICT_OrgApacheCommonsCodecBinaryStringUtils

#if !defined (OrgApacheCommonsCodecBinaryStringUtils_) && (INCLUDE_ALL_OrgApacheCommonsCodecBinaryStringUtils || defined(INCLUDE_OrgApacheCommonsCodecBinaryStringUtils))
#define OrgApacheCommonsCodecBinaryStringUtils_

@class IOSByteArray;
@protocol JavaLangCharSequence;

@interface OrgApacheCommonsCodecBinaryStringUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (jboolean)equalsWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs1
                  withJavaLangCharSequence:(id<JavaLangCharSequence>)cs2;

+ (IOSByteArray *)getBytesIso8859_1WithNSString:(NSString *)string;

+ (IOSByteArray *)getBytesUncheckedWithNSString:(NSString *)string
                                   withNSString:(NSString *)charsetName;

+ (IOSByteArray *)getBytesUsAsciiWithNSString:(NSString *)string;

+ (IOSByteArray *)getBytesUtf16WithNSString:(NSString *)string;

+ (IOSByteArray *)getBytesUtf16BeWithNSString:(NSString *)string;

+ (IOSByteArray *)getBytesUtf16LeWithNSString:(NSString *)string;

+ (IOSByteArray *)getBytesUtf8WithNSString:(NSString *)string;

+ (NSString *)newStringWithByteArray:(IOSByteArray *)bytes
                        withNSString:(NSString *)charsetName OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringIso8859_1WithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringUsAsciiWithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringUtf16WithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringUtf16BeWithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringUtf16LeWithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

+ (NSString *)newStringUtf8WithByteArray:(IOSByteArray *)bytes OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsCodecBinaryStringUtils)

FOUNDATION_EXPORT void OrgApacheCommonsCodecBinaryStringUtils_init(OrgApacheCommonsCodecBinaryStringUtils *self);

FOUNDATION_EXPORT OrgApacheCommonsCodecBinaryStringUtils *new_OrgApacheCommonsCodecBinaryStringUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecBinaryStringUtils *create_OrgApacheCommonsCodecBinaryStringUtils_init();

FOUNDATION_EXPORT jboolean OrgApacheCommonsCodecBinaryStringUtils_equalsWithJavaLangCharSequence_withJavaLangCharSequence_(id<JavaLangCharSequence> cs1, id<JavaLangCharSequence> cs2);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesIso8859_1WithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUncheckedWithNSString_withNSString_(NSString *string, NSString *charsetName);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUsAsciiWithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUtf16WithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUtf16BeWithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUtf16LeWithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *OrgApacheCommonsCodecBinaryStringUtils_getBytesUtf8WithNSString_(NSString *string);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringWithByteArray_withNSString_(IOSByteArray *bytes, NSString *charsetName);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringIso8859_1WithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringUsAsciiWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringUtf16WithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringUtf16BeWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringUtf16LeWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheCommonsCodecBinaryStringUtils_newStringUtf8WithByteArray_(IOSByteArray *bytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsCodecBinaryStringUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsCodecBinaryStringUtils")
