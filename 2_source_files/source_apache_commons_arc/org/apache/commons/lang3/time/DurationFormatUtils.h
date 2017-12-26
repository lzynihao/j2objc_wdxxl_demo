//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/time/DurationFormatUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils")
#ifdef RESTRICT_OrgApacheCommonsLang3TimeDurationFormatUtils
#define INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3TimeDurationFormatUtils

#if !defined (OrgApacheCommonsLang3TimeDurationFormatUtils_) && (INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils || defined(INCLUDE_OrgApacheCommonsLang3TimeDurationFormatUtils))
#define OrgApacheCommonsLang3TimeDurationFormatUtils_

@class IOSObjectArray;
@class JavaUtilTimeZone;

@interface OrgApacheCommonsLang3TimeDurationFormatUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)formatDurationWithLong:(jlong)durationMillis
                        withNSString:(NSString *)format;

+ (NSString *)formatDurationWithLong:(jlong)durationMillis
                        withNSString:(NSString *)format
                         withBoolean:(jboolean)padWithZeros;

+ (NSString *)formatDurationHMSWithLong:(jlong)durationMillis;

+ (NSString *)formatDurationISOWithLong:(jlong)durationMillis;

+ (NSString *)formatDurationWordsWithLong:(jlong)durationMillis
                              withBoolean:(jboolean)suppressLeadingZeroElements
                              withBoolean:(jboolean)suppressTrailingZeroElements;

+ (NSString *)formatPeriodWithLong:(jlong)startMillis
                          withLong:(jlong)endMillis
                      withNSString:(NSString *)format;

+ (NSString *)formatPeriodWithLong:(jlong)startMillis
                          withLong:(jlong)endMillis
                      withNSString:(NSString *)format
                       withBoolean:(jboolean)padWithZeros
              withJavaUtilTimeZone:(JavaUtilTimeZone *)timezone;

+ (NSString *)formatPeriodISOWithLong:(jlong)startMillis
                             withLong:(jlong)endMillis;

#pragma mark Package-Private

+ (NSString *)formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:(IOSObjectArray *)tokens
                                                                       withLong:(jlong)years
                                                                       withLong:(jlong)months
                                                                       withLong:(jlong)days
                                                                       withLong:(jlong)hours
                                                                       withLong:(jlong)minutes
                                                                       withLong:(jlong)seconds
                                                                       withLong:(jlong)milliseconds
                                                                    withBoolean:(jboolean)padWithZeros;

+ (IOSObjectArray *)lexxWithNSString:(NSString *)format;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TimeDurationFormatUtils)

inline NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_get_ISO_EXTENDED_FORMAT_PATTERN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_ISO_EXTENDED_FORMAT_PATTERN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, ISO_EXTENDED_FORMAT_PATTERN, NSString *)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_y();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_y;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, y, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_M();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_M;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, M, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_d();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_d;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, d, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_H();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_H;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, H, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_m();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_m;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, m, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_s();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_s;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, s, id)

inline id OrgApacheCommonsLang3TimeDurationFormatUtils_get_S();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheCommonsLang3TimeDurationFormatUtils_S;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeDurationFormatUtils, S, id)

FOUNDATION_EXPORT void OrgApacheCommonsLang3TimeDurationFormatUtils_init(OrgApacheCommonsLang3TimeDurationFormatUtils *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils *new_OrgApacheCommonsLang3TimeDurationFormatUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils *create_OrgApacheCommonsLang3TimeDurationFormatUtils_init();

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationHMSWithLong_(jlong durationMillis);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationISOWithLong_(jlong durationMillis);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_(jlong durationMillis, NSString *format);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_withBoolean_(jlong durationMillis, NSString *format, jboolean padWithZeros);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWordsWithLong_withBoolean_withBoolean_(jlong durationMillis, jboolean suppressLeadingZeroElements, jboolean suppressTrailingZeroElements);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodISOWithLong_withLong_(jlong startMillis, jlong endMillis);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_(jlong startMillis, jlong endMillis, NSString *format);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_withBoolean_withJavaUtilTimeZone_(jlong startMillis, jlong endMillis, NSString *format, jboolean padWithZeros, JavaUtilTimeZone *timezone);

FOUNDATION_EXPORT NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withLong_withLong_withLong_withLong_withLong_withLong_withLong_withBoolean_(IOSObjectArray *tokens, jlong years, jlong months, jlong days, jlong hours, jlong minutes, jlong seconds, jlong milliseconds, jboolean padWithZeros);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3TimeDurationFormatUtils_lexxWithNSString_(NSString *format);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TimeDurationFormatUtils)

#endif

#if !defined (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_) && (INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils || defined(INCLUDE_OrgApacheCommonsLang3TimeDurationFormatUtils_Token))
#define OrgApacheCommonsLang3TimeDurationFormatUtils_Token_

@class IOSObjectArray;

@interface OrgApacheCommonsLang3TimeDurationFormatUtils_Token : NSObject

#pragma mark Public

- (jboolean)isEqual:(id)obj2;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithId:(id)value;

- (instancetype)initWithId:(id)value
                   withInt:(jint)count;

+ (jboolean)containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:(IOSObjectArray *)tokens
                                                                                       withId:(id)value;

- (jint)getCount;

- (id)getValue;

- (void)increment;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TimeDurationFormatUtils_Token)

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(IOSObjectArray *tokens, id value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(OrgApacheCommonsLang3TimeDurationFormatUtils_Token *self, id value);

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils_Token *new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils_Token *create_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(id value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(OrgApacheCommonsLang3TimeDurationFormatUtils_Token *self, id value, jint count);

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils_Token *new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(id value, jint count) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDurationFormatUtils_Token *create_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(id value, jint count);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TimeDurationFormatUtils_Token)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3TimeDurationFormatUtils")
