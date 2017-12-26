//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/language/bm/NameType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsCodecLanguageBmNameType")
#ifdef RESTRICT_OrgApacheCommonsCodecLanguageBmNameType
#define INCLUDE_ALL_OrgApacheCommonsCodecLanguageBmNameType 0
#else
#define INCLUDE_ALL_OrgApacheCommonsCodecLanguageBmNameType 1
#endif
#undef RESTRICT_OrgApacheCommonsCodecLanguageBmNameType

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheCommonsCodecLanguageBmNameType_) && (INCLUDE_ALL_OrgApacheCommonsCodecLanguageBmNameType || defined(INCLUDE_OrgApacheCommonsCodecLanguageBmNameType))
#define OrgApacheCommonsCodecLanguageBmNameType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheCommonsCodecLanguageBmNameType_Enum) {
  OrgApacheCommonsCodecLanguageBmNameType_Enum_ASHKENAZI = 0,
  OrgApacheCommonsCodecLanguageBmNameType_Enum_GENERIC = 1,
  OrgApacheCommonsCodecLanguageBmNameType_Enum_SEPHARDIC = 2,
};

@interface OrgApacheCommonsCodecLanguageBmNameType : JavaLangEnum < NSCopying >

#pragma mark Public

- (NSString *)getName;

+ (OrgApacheCommonsCodecLanguageBmNameType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheCommonsCodecLanguageBmNameType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_values_[];

inline OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_get_ASHKENAZI();
J2OBJC_ENUM_CONSTANT(OrgApacheCommonsCodecLanguageBmNameType, ASHKENAZI)

inline OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_get_GENERIC();
J2OBJC_ENUM_CONSTANT(OrgApacheCommonsCodecLanguageBmNameType, GENERIC)

inline OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_get_SEPHARDIC();
J2OBJC_ENUM_CONSTANT(OrgApacheCommonsCodecLanguageBmNameType, SEPHARDIC)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsCodecLanguageBmNameType_values();

FOUNDATION_EXPORT OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheCommonsCodecLanguageBmNameType *OrgApacheCommonsCodecLanguageBmNameType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsCodecLanguageBmNameType)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsCodecLanguageBmNameType")