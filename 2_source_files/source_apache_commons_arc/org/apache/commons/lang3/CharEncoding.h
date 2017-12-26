//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/CharEncoding.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3CharEncoding")
#ifdef RESTRICT_OrgApacheCommonsLang3CharEncoding
#define INCLUDE_ALL_OrgApacheCommonsLang3CharEncoding 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3CharEncoding 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3CharEncoding

#if !defined (OrgApacheCommonsLang3CharEncoding_) && (INCLUDE_ALL_OrgApacheCommonsLang3CharEncoding || defined(INCLUDE_OrgApacheCommonsLang3CharEncoding))
#define OrgApacheCommonsLang3CharEncoding_

@interface OrgApacheCommonsLang3CharEncoding : NSObject

#pragma mark Public

- (instancetype)init;

+ (jboolean)isSupportedWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3CharEncoding)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_ISO_8859_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_ISO_8859_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, ISO_8859_1, NSString *)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_US_ASCII();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_US_ASCII;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, US_ASCII, NSString *)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_UTF_16();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_UTF_16;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, UTF_16, NSString *)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_UTF_16BE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_UTF_16BE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, UTF_16BE, NSString *)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_UTF_16LE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_UTF_16LE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, UTF_16LE, NSString *)

inline NSString *OrgApacheCommonsLang3CharEncoding_get_UTF_8();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3CharEncoding_UTF_8;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3CharEncoding, UTF_8, NSString *)

FOUNDATION_EXPORT void OrgApacheCommonsLang3CharEncoding_init(OrgApacheCommonsLang3CharEncoding *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3CharEncoding *new_OrgApacheCommonsLang3CharEncoding_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3CharEncoding *create_OrgApacheCommonsLang3CharEncoding_init();

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3CharEncoding_isSupportedWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3CharEncoding)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3CharEncoding")
