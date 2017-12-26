//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/time/DateUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils")
#ifdef RESTRICT_OrgApacheCommonsLang3TimeDateUtils
#define INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3TimeDateUtils

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheCommonsLang3TimeDateUtils_) && (INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils || defined(INCLUDE_OrgApacheCommonsLang3TimeDateUtils))
#define OrgApacheCommonsLang3TimeDateUtils_

@class IOSObjectArray;
@class JavaUtilCalendar;
@class JavaUtilDate;
@class JavaUtilLocale;
@protocol JavaUtilIterator;

@interface OrgApacheCommonsLang3TimeDateUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (JavaUtilDate *)addDaysWithJavaUtilDate:(JavaUtilDate *)date
                                  withInt:(jint)amount;

+ (JavaUtilDate *)addHoursWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)amount;

+ (JavaUtilDate *)addMillisecondsWithJavaUtilDate:(JavaUtilDate *)date
                                          withInt:(jint)amount;

+ (JavaUtilDate *)addMinutesWithJavaUtilDate:(JavaUtilDate *)date
                                     withInt:(jint)amount;

+ (JavaUtilDate *)addMonthsWithJavaUtilDate:(JavaUtilDate *)date
                                    withInt:(jint)amount;

+ (JavaUtilDate *)addSecondsWithJavaUtilDate:(JavaUtilDate *)date
                                     withInt:(jint)amount;

+ (JavaUtilDate *)addWeeksWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)amount;

+ (JavaUtilDate *)addYearsWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)amount;

+ (JavaUtilCalendar *)ceilingWithJavaUtilCalendar:(JavaUtilCalendar *)date
                                          withInt:(jint)field;

+ (JavaUtilDate *)ceilingWithJavaUtilDate:(JavaUtilDate *)date
                                  withInt:(jint)field;

+ (JavaUtilDate *)ceilingWithId:(id)date
                        withInt:(jint)field;

+ (jlong)getFragmentInDaysWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                       withInt:(jint)fragment;

+ (jlong)getFragmentInDaysWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)fragment;

+ (jlong)getFragmentInHoursWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                        withInt:(jint)fragment;

+ (jlong)getFragmentInHoursWithJavaUtilDate:(JavaUtilDate *)date
                                    withInt:(jint)fragment;

+ (jlong)getFragmentInMillisecondsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                               withInt:(jint)fragment;

+ (jlong)getFragmentInMillisecondsWithJavaUtilDate:(JavaUtilDate *)date
                                           withInt:(jint)fragment;

+ (jlong)getFragmentInMinutesWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                          withInt:(jint)fragment;

+ (jlong)getFragmentInMinutesWithJavaUtilDate:(JavaUtilDate *)date
                                      withInt:(jint)fragment;

+ (jlong)getFragmentInSecondsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                          withInt:(jint)fragment;

+ (jlong)getFragmentInSecondsWithJavaUtilDate:(JavaUtilDate *)date
                                      withInt:(jint)fragment;

+ (jboolean)isSameDayWithJavaUtilCalendar:(JavaUtilCalendar *)cal1
                     withJavaUtilCalendar:(JavaUtilCalendar *)cal2;

+ (jboolean)isSameDayWithJavaUtilDate:(JavaUtilDate *)date1
                     withJavaUtilDate:(JavaUtilDate *)date2;

+ (jboolean)isSameInstantWithJavaUtilCalendar:(JavaUtilCalendar *)cal1
                         withJavaUtilCalendar:(JavaUtilCalendar *)cal2;

+ (jboolean)isSameInstantWithJavaUtilDate:(JavaUtilDate *)date1
                         withJavaUtilDate:(JavaUtilDate *)date2;

+ (jboolean)isSameLocalTimeWithJavaUtilCalendar:(JavaUtilCalendar *)cal1
                           withJavaUtilCalendar:(JavaUtilCalendar *)cal2;

+ (id<JavaUtilIterator>)iteratorWithJavaUtilCalendar:(JavaUtilCalendar *)focus
                                             withInt:(jint)rangeStyle;

+ (id<JavaUtilIterator>)iteratorWithJavaUtilDate:(JavaUtilDate *)focus
                                         withInt:(jint)rangeStyle;

+ (id<JavaUtilIterator>)iteratorWithId:(id)focus
                               withInt:(jint)rangeStyle;

+ (JavaUtilDate *)parseDateWithNSString:(NSString *)str
                     withJavaUtilLocale:(JavaUtilLocale *)locale
                      withNSStringArray:(IOSObjectArray *)parsePatterns;

+ (JavaUtilDate *)parseDateWithNSString:(NSString *)str
                      withNSStringArray:(IOSObjectArray *)parsePatterns;

+ (JavaUtilDate *)parseDateStrictlyWithNSString:(NSString *)str
                             withJavaUtilLocale:(JavaUtilLocale *)locale
                              withNSStringArray:(IOSObjectArray *)parsePatterns;

+ (JavaUtilDate *)parseDateStrictlyWithNSString:(NSString *)str
                              withNSStringArray:(IOSObjectArray *)parsePatterns;

+ (JavaUtilCalendar *)roundWithJavaUtilCalendar:(JavaUtilCalendar *)date
                                        withInt:(jint)field;

+ (JavaUtilDate *)roundWithJavaUtilDate:(JavaUtilDate *)date
                                withInt:(jint)field;

+ (JavaUtilDate *)roundWithId:(id)date
                      withInt:(jint)field;

+ (JavaUtilDate *)setDaysWithJavaUtilDate:(JavaUtilDate *)date
                                  withInt:(jint)amount;

+ (JavaUtilDate *)setHoursWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)amount;

+ (JavaUtilDate *)setMillisecondsWithJavaUtilDate:(JavaUtilDate *)date
                                          withInt:(jint)amount;

+ (JavaUtilDate *)setMinutesWithJavaUtilDate:(JavaUtilDate *)date
                                     withInt:(jint)amount;

+ (JavaUtilDate *)setMonthsWithJavaUtilDate:(JavaUtilDate *)date
                                    withInt:(jint)amount;

+ (JavaUtilDate *)setSecondsWithJavaUtilDate:(JavaUtilDate *)date
                                     withInt:(jint)amount;

+ (JavaUtilDate *)setYearsWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)amount;

+ (JavaUtilCalendar *)toCalendarWithJavaUtilDate:(JavaUtilDate *)date;

+ (JavaUtilCalendar *)truncateWithJavaUtilCalendar:(JavaUtilCalendar *)date
                                           withInt:(jint)field;

+ (JavaUtilDate *)truncateWithJavaUtilDate:(JavaUtilDate *)date
                                   withInt:(jint)field;

+ (JavaUtilDate *)truncateWithId:(id)date
                         withInt:(jint)field;

+ (jint)truncatedCompareToWithJavaUtilCalendar:(JavaUtilCalendar *)cal1
                          withJavaUtilCalendar:(JavaUtilCalendar *)cal2
                                       withInt:(jint)field;

+ (jint)truncatedCompareToWithJavaUtilDate:(JavaUtilDate *)date1
                          withJavaUtilDate:(JavaUtilDate *)date2
                                   withInt:(jint)field;

+ (jboolean)truncatedEqualsWithJavaUtilCalendar:(JavaUtilCalendar *)cal1
                           withJavaUtilCalendar:(JavaUtilCalendar *)cal2
                                        withInt:(jint)field;

+ (jboolean)truncatedEqualsWithJavaUtilDate:(JavaUtilDate *)date1
                           withJavaUtilDate:(JavaUtilDate *)date2
                                    withInt:(jint)field;

@end

J2OBJC_STATIC_INIT(OrgApacheCommonsLang3TimeDateUtils)

inline jlong OrgApacheCommonsLang3TimeDateUtils_get_MILLIS_PER_SECOND(void);
#define OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_SECOND 1000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, MILLIS_PER_SECOND, jlong)

inline jlong OrgApacheCommonsLang3TimeDateUtils_get_MILLIS_PER_MINUTE(void);
#define OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_MINUTE 60000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, MILLIS_PER_MINUTE, jlong)

inline jlong OrgApacheCommonsLang3TimeDateUtils_get_MILLIS_PER_HOUR(void);
#define OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_HOUR 3600000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, MILLIS_PER_HOUR, jlong)

inline jlong OrgApacheCommonsLang3TimeDateUtils_get_MILLIS_PER_DAY(void);
#define OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_DAY 86400000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, MILLIS_PER_DAY, jlong)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_SEMI_MONTH(void);
#define OrgApacheCommonsLang3TimeDateUtils_SEMI_MONTH 1001
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, SEMI_MONTH, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_WEEK_SUNDAY(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_WEEK_SUNDAY 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_WEEK_SUNDAY, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_WEEK_MONDAY(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_WEEK_MONDAY 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_WEEK_MONDAY, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_WEEK_RELATIVE(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_WEEK_RELATIVE 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_WEEK_RELATIVE, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_WEEK_CENTER(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_WEEK_CENTER 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_WEEK_CENTER, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_MONTH_SUNDAY(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_MONTH_SUNDAY 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_MONTH_SUNDAY, jint)

inline jint OrgApacheCommonsLang3TimeDateUtils_get_RANGE_MONTH_MONDAY(void);
#define OrgApacheCommonsLang3TimeDateUtils_RANGE_MONTH_MONDAY 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeDateUtils, RANGE_MONTH_MONDAY, jint)

FOUNDATION_EXPORT void OrgApacheCommonsLang3TimeDateUtils_init(OrgApacheCommonsLang3TimeDateUtils *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDateUtils *new_OrgApacheCommonsLang3TimeDateUtils_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDateUtils *create_OrgApacheCommonsLang3TimeDateUtils_init(void);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_isSameDayWithJavaUtilDate_withJavaUtilDate_(JavaUtilDate *date1, JavaUtilDate *date2);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_isSameDayWithJavaUtilCalendar_withJavaUtilCalendar_(JavaUtilCalendar *cal1, JavaUtilCalendar *cal2);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_isSameInstantWithJavaUtilDate_withJavaUtilDate_(JavaUtilDate *date1, JavaUtilDate *date2);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_isSameInstantWithJavaUtilCalendar_withJavaUtilCalendar_(JavaUtilCalendar *cal1, JavaUtilCalendar *cal2);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_isSameLocalTimeWithJavaUtilCalendar_withJavaUtilCalendar_(JavaUtilCalendar *cal1, JavaUtilCalendar *cal2);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_parseDateWithNSString_withNSStringArray_(NSString *str, IOSObjectArray *parsePatterns);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_parseDateWithNSString_withJavaUtilLocale_withNSStringArray_(NSString *str, JavaUtilLocale *locale, IOSObjectArray *parsePatterns);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_parseDateStrictlyWithNSString_withNSStringArray_(NSString *str, IOSObjectArray *parsePatterns);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_parseDateStrictlyWithNSString_withJavaUtilLocale_withNSStringArray_(NSString *str, JavaUtilLocale *locale, IOSObjectArray *parsePatterns);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addYearsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addMonthsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addWeeksWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addDaysWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addHoursWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addMinutesWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addSecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_addMillisecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setYearsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setMonthsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setDaysWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setHoursWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setMinutesWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setSecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_setMillisecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint amount);

FOUNDATION_EXPORT JavaUtilCalendar *OrgApacheCommonsLang3TimeDateUtils_toCalendarWithJavaUtilDate_(JavaUtilDate *date);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_roundWithJavaUtilDate_withInt_(JavaUtilDate *date, jint field);

FOUNDATION_EXPORT JavaUtilCalendar *OrgApacheCommonsLang3TimeDateUtils_roundWithJavaUtilCalendar_withInt_(JavaUtilCalendar *date, jint field);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_roundWithId_withInt_(id date, jint field);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_truncateWithJavaUtilDate_withInt_(JavaUtilDate *date, jint field);

FOUNDATION_EXPORT JavaUtilCalendar *OrgApacheCommonsLang3TimeDateUtils_truncateWithJavaUtilCalendar_withInt_(JavaUtilCalendar *date, jint field);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_truncateWithId_withInt_(id date, jint field);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_ceilingWithJavaUtilDate_withInt_(JavaUtilDate *date, jint field);

FOUNDATION_EXPORT JavaUtilCalendar *OrgApacheCommonsLang3TimeDateUtils_ceilingWithJavaUtilCalendar_withInt_(JavaUtilCalendar *date, jint field);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheCommonsLang3TimeDateUtils_ceilingWithId_withInt_(id date, jint field);

FOUNDATION_EXPORT id<JavaUtilIterator> OrgApacheCommonsLang3TimeDateUtils_iteratorWithJavaUtilDate_withInt_(JavaUtilDate *focus, jint rangeStyle);

FOUNDATION_EXPORT id<JavaUtilIterator> OrgApacheCommonsLang3TimeDateUtils_iteratorWithJavaUtilCalendar_withInt_(JavaUtilCalendar *focus, jint rangeStyle);

FOUNDATION_EXPORT id<JavaUtilIterator> OrgApacheCommonsLang3TimeDateUtils_iteratorWithId_withInt_(id focus, jint rangeStyle);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInMillisecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInSecondsWithJavaUtilDate_withInt_(JavaUtilDate *date, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInMinutesWithJavaUtilDate_withInt_(JavaUtilDate *date, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInHoursWithJavaUtilDate_withInt_(JavaUtilDate *date, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInDaysWithJavaUtilDate_withInt_(JavaUtilDate *date, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInMillisecondsWithJavaUtilCalendar_withInt_(JavaUtilCalendar *calendar, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInSecondsWithJavaUtilCalendar_withInt_(JavaUtilCalendar *calendar, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInMinutesWithJavaUtilCalendar_withInt_(JavaUtilCalendar *calendar, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInHoursWithJavaUtilCalendar_withInt_(JavaUtilCalendar *calendar, jint fragment);

FOUNDATION_EXPORT jlong OrgApacheCommonsLang3TimeDateUtils_getFragmentInDaysWithJavaUtilCalendar_withInt_(JavaUtilCalendar *calendar, jint fragment);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_truncatedEqualsWithJavaUtilCalendar_withJavaUtilCalendar_withInt_(JavaUtilCalendar *cal1, JavaUtilCalendar *cal2, jint field);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3TimeDateUtils_truncatedEqualsWithJavaUtilDate_withJavaUtilDate_withInt_(JavaUtilDate *date1, JavaUtilDate *date2, jint field);

FOUNDATION_EXPORT jint OrgApacheCommonsLang3TimeDateUtils_truncatedCompareToWithJavaUtilCalendar_withJavaUtilCalendar_withInt_(JavaUtilCalendar *cal1, JavaUtilCalendar *cal2, jint field);

FOUNDATION_EXPORT jint OrgApacheCommonsLang3TimeDateUtils_truncatedCompareToWithJavaUtilDate_withJavaUtilDate_withInt_(JavaUtilDate *date1, JavaUtilDate *date2, jint field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TimeDateUtils)

#endif

#if !defined (OrgApacheCommonsLang3TimeDateUtils_DateIterator_) && (INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils || defined(INCLUDE_OrgApacheCommonsLang3TimeDateUtils_DateIterator))
#define OrgApacheCommonsLang3TimeDateUtils_DateIterator_

#define RESTRICT_JavaUtilIterator 1
#define INCLUDE_JavaUtilIterator 1
#include "java/util/Iterator.h"

@class JavaUtilCalendar;
@protocol JavaUtilFunctionConsumer;

@interface OrgApacheCommonsLang3TimeDateUtils_DateIterator : NSObject < JavaUtilIterator >

#pragma mark Public

- (jboolean)hasNext;

- (JavaUtilCalendar *)next;

- (void)remove;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilCalendar:(JavaUtilCalendar *)startFinal
                    withJavaUtilCalendar:(JavaUtilCalendar *)endFinal;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TimeDateUtils_DateIterator)

FOUNDATION_EXPORT void OrgApacheCommonsLang3TimeDateUtils_DateIterator_initWithJavaUtilCalendar_withJavaUtilCalendar_(OrgApacheCommonsLang3TimeDateUtils_DateIterator *self, JavaUtilCalendar *startFinal, JavaUtilCalendar *endFinal);

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDateUtils_DateIterator *new_OrgApacheCommonsLang3TimeDateUtils_DateIterator_initWithJavaUtilCalendar_withJavaUtilCalendar_(JavaUtilCalendar *startFinal, JavaUtilCalendar *endFinal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TimeDateUtils_DateIterator *create_OrgApacheCommonsLang3TimeDateUtils_DateIterator_initWithJavaUtilCalendar_withJavaUtilCalendar_(JavaUtilCalendar *startFinal, JavaUtilCalendar *endFinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TimeDateUtils_DateIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3TimeDateUtils")
