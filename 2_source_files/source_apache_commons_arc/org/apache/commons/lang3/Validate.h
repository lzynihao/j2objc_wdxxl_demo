//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/Validate.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3Validate")
#ifdef RESTRICT_OrgApacheCommonsLang3Validate
#define INCLUDE_ALL_OrgApacheCommonsLang3Validate 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3Validate 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3Validate

#if !defined (OrgApacheCommonsLang3Validate_) && (INCLUDE_ALL_OrgApacheCommonsLang3Validate || defined(INCLUDE_OrgApacheCommonsLang3Validate))
#define OrgApacheCommonsLang3Validate_

@class IOSClass;
@class IOSObjectArray;
@protocol JavaLangCharSequence;
@protocol JavaLangComparable;
@protocol JavaLangIterable;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheCommonsLang3Validate : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)exclusiveBetweenWithDouble:(jdouble)start
                        withDouble:(jdouble)end
                        withDouble:(jdouble)value;

+ (void)exclusiveBetweenWithDouble:(jdouble)start
                        withDouble:(jdouble)end
                        withDouble:(jdouble)value
                      withNSString:(NSString *)message;

+ (void)exclusiveBetweenWithLong:(jlong)start
                        withLong:(jlong)end
                        withLong:(jlong)value;

+ (void)exclusiveBetweenWithLong:(jlong)start
                        withLong:(jlong)end
                        withLong:(jlong)value
                    withNSString:(NSString *)message;

+ (void)exclusiveBetweenWithId:(id)start
                        withId:(id)end
        withJavaLangComparable:(id<JavaLangComparable>)value;

+ (void)exclusiveBetweenWithId:(id)start
                        withId:(id)end
        withJavaLangComparable:(id<JavaLangComparable>)value
                  withNSString:(NSString *)message
             withNSObjectArray:(IOSObjectArray *)values;

+ (void)inclusiveBetweenWithDouble:(jdouble)start
                        withDouble:(jdouble)end
                        withDouble:(jdouble)value;

+ (void)inclusiveBetweenWithDouble:(jdouble)start
                        withDouble:(jdouble)end
                        withDouble:(jdouble)value
                      withNSString:(NSString *)message;

+ (void)inclusiveBetweenWithLong:(jlong)start
                        withLong:(jlong)end
                        withLong:(jlong)value;

+ (void)inclusiveBetweenWithLong:(jlong)start
                        withLong:(jlong)end
                        withLong:(jlong)value
                    withNSString:(NSString *)message;

+ (void)inclusiveBetweenWithId:(id)start
                        withId:(id)end
        withJavaLangComparable:(id<JavaLangComparable>)value;

+ (void)inclusiveBetweenWithId:(id)start
                        withId:(id)end
        withJavaLangComparable:(id<JavaLangComparable>)value
                  withNSString:(NSString *)message
             withNSObjectArray:(IOSObjectArray *)values;

+ (void)isAssignableFromWithIOSClass:(IOSClass *)superType
                        withIOSClass:(IOSClass *)type;

+ (void)isAssignableFromWithIOSClass:(IOSClass *)superType
                        withIOSClass:(IOSClass *)type
                        withNSString:(NSString *)message
                   withNSObjectArray:(IOSObjectArray *)values;

+ (void)isInstanceOfWithIOSClass:(IOSClass *)type
                          withId:(id)obj;

+ (void)isInstanceOfWithIOSClass:(IOSClass *)type
                          withId:(id)obj
                    withNSString:(NSString *)message
               withNSObjectArray:(IOSObjectArray *)values;

+ (void)isTrueWithBoolean:(jboolean)expression;

+ (void)isTrueWithBoolean:(jboolean)expression
             withNSString:(NSString *)message
               withDouble:(jdouble)value;

+ (void)isTrueWithBoolean:(jboolean)expression
             withNSString:(NSString *)message
                 withLong:(jlong)value;

+ (void)isTrueWithBoolean:(jboolean)expression
             withNSString:(NSString *)message
        withNSObjectArray:(IOSObjectArray *)values;

+ (void)matchesPatternWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                  withNSString:(NSString *)pattern;

+ (void)matchesPatternWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                  withNSString:(NSString *)pattern
                                  withNSString:(NSString *)message
                             withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaLangIterable>)noNullElementsWithJavaLangIterable:(id<JavaLangIterable>)iterable;

+ (id<JavaLangIterable>)noNullElementsWithJavaLangIterable:(id<JavaLangIterable>)iterable
                                              withNSString:(NSString *)message
                                         withNSObjectArray:(IOSObjectArray *)values;

+ (IOSObjectArray *)noNullElementsWithNSObjectArray:(IOSObjectArray *)array;

+ (IOSObjectArray *)noNullElementsWithNSObjectArray:(IOSObjectArray *)array
                                       withNSString:(NSString *)message
                                  withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaLangCharSequence>)notBlankWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars;

+ (id<JavaLangCharSequence>)notBlankWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars
                                                withNSString:(NSString *)message
                                           withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaUtilCollection>)notEmptyWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

+ (id<JavaUtilMap>)notEmptyWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (id<JavaLangCharSequence>)notEmptyWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars;

+ (id<JavaUtilCollection>)notEmptyWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                            withNSString:(NSString *)message
                                       withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaUtilMap>)notEmptyWithJavaUtilMap:(id<JavaUtilMap>)map
                              withNSString:(NSString *)message
                         withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaLangCharSequence>)notEmptyWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars
                                                withNSString:(NSString *)message
                                           withNSObjectArray:(IOSObjectArray *)values;

+ (IOSObjectArray *)notEmptyWithNSObjectArray:(IOSObjectArray *)array;

+ (IOSObjectArray *)notEmptyWithNSObjectArray:(IOSObjectArray *)array
                                 withNSString:(NSString *)message
                            withNSObjectArray:(IOSObjectArray *)values;

+ (id)notNullWithId:(id)object;

+ (id)notNullWithId:(id)object
       withNSString:(NSString *)message
  withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaUtilCollection>)validIndexWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                                   withInt:(jint)index;

+ (id<JavaLangCharSequence>)validIndexWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars
                                                       withInt:(jint)index;

+ (id<JavaUtilCollection>)validIndexWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                                   withInt:(jint)index
                                              withNSString:(NSString *)message
                                         withNSObjectArray:(IOSObjectArray *)values;

+ (id<JavaLangCharSequence>)validIndexWithJavaLangCharSequence:(id<JavaLangCharSequence>)chars
                                                       withInt:(jint)index
                                                  withNSString:(NSString *)message
                                             withNSObjectArray:(IOSObjectArray *)values;

+ (IOSObjectArray *)validIndexWithNSObjectArray:(IOSObjectArray *)array
                                        withInt:(jint)index;

+ (IOSObjectArray *)validIndexWithNSObjectArray:(IOSObjectArray *)array
                                        withInt:(jint)index
                                   withNSString:(NSString *)message
                              withNSObjectArray:(IOSObjectArray *)values;

+ (void)validStateWithBoolean:(jboolean)expression;

+ (void)validStateWithBoolean:(jboolean)expression
                 withNSString:(NSString *)message
            withNSObjectArray:(IOSObjectArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3Validate)

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_init(OrgApacheCommonsLang3Validate *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3Validate *new_OrgApacheCommonsLang3Validate_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3Validate *create_OrgApacheCommonsLang3Validate_init();

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withLong_(jboolean expression, NSString *message, jlong value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withDouble_(jboolean expression, NSString *message, jdouble value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(jboolean expression, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isTrueWithBoolean_(jboolean expression);

FOUNDATION_EXPORT id OrgApacheCommonsLang3Validate_notNullWithId_(id object);

FOUNDATION_EXPORT id OrgApacheCommonsLang3Validate_notNullWithId_withNSString_withNSObjectArray_(id object, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_notEmptyWithNSObjectArray_withNSString_withNSObjectArray_(IOSObjectArray *array, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_notEmptyWithNSObjectArray_(IOSObjectArray *array);

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheCommonsLang3Validate_notEmptyWithJavaUtilCollection_withNSString_withNSObjectArray_(id<JavaUtilCollection> collection, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheCommonsLang3Validate_notEmptyWithJavaUtilCollection_(id<JavaUtilCollection> collection);

FOUNDATION_EXPORT id<JavaUtilMap> OrgApacheCommonsLang3Validate_notEmptyWithJavaUtilMap_withNSString_withNSObjectArray_(id<JavaUtilMap> map, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaUtilMap> OrgApacheCommonsLang3Validate_notEmptyWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_notEmptyWithJavaLangCharSequence_withNSString_withNSObjectArray_(id<JavaLangCharSequence> chars, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_notEmptyWithJavaLangCharSequence_(id<JavaLangCharSequence> chars);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_notBlankWithJavaLangCharSequence_withNSString_withNSObjectArray_(id<JavaLangCharSequence> chars, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_notBlankWithJavaLangCharSequence_(id<JavaLangCharSequence> chars);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_noNullElementsWithNSObjectArray_withNSString_withNSObjectArray_(IOSObjectArray *array, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_noNullElementsWithNSObjectArray_(IOSObjectArray *array);

FOUNDATION_EXPORT id<JavaLangIterable> OrgApacheCommonsLang3Validate_noNullElementsWithJavaLangIterable_withNSString_withNSObjectArray_(id<JavaLangIterable> iterable, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaLangIterable> OrgApacheCommonsLang3Validate_noNullElementsWithJavaLangIterable_(id<JavaLangIterable> iterable);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_validIndexWithNSObjectArray_withInt_withNSString_withNSObjectArray_(IOSObjectArray *array, jint index, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheCommonsLang3Validate_validIndexWithNSObjectArray_withInt_(IOSObjectArray *array, jint index);

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheCommonsLang3Validate_validIndexWithJavaUtilCollection_withInt_withNSString_withNSObjectArray_(id<JavaUtilCollection> collection, jint index, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheCommonsLang3Validate_validIndexWithJavaUtilCollection_withInt_(id<JavaUtilCollection> collection, jint index);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_validIndexWithJavaLangCharSequence_withInt_withNSString_withNSObjectArray_(id<JavaLangCharSequence> chars, jint index, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheCommonsLang3Validate_validIndexWithJavaLangCharSequence_withInt_(id<JavaLangCharSequence> chars, jint index);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_validStateWithBoolean_(jboolean expression);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_validStateWithBoolean_withNSString_withNSObjectArray_(jboolean expression, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_matchesPatternWithJavaLangCharSequence_withNSString_(id<JavaLangCharSequence> input, NSString *pattern);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_matchesPatternWithJavaLangCharSequence_withNSString_withNSString_withNSObjectArray_(id<JavaLangCharSequence> input, NSString *pattern, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithId_withId_withJavaLangComparable_(id start, id end, id<JavaLangComparable> value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithId_withId_withJavaLangComparable_withNSString_withNSObjectArray_(id start, id end, id<JavaLangComparable> value, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithLong_withLong_withLong_(jlong start, jlong end, jlong value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithLong_withLong_withLong_withNSString_(jlong start, jlong end, jlong value, NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithDouble_withDouble_withDouble_(jdouble start, jdouble end, jdouble value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_inclusiveBetweenWithDouble_withDouble_withDouble_withNSString_(jdouble start, jdouble end, jdouble value, NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithId_withId_withJavaLangComparable_(id start, id end, id<JavaLangComparable> value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithId_withId_withJavaLangComparable_withNSString_withNSObjectArray_(id start, id end, id<JavaLangComparable> value, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithLong_withLong_withLong_(jlong start, jlong end, jlong value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithLong_withLong_withLong_withNSString_(jlong start, jlong end, jlong value, NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithDouble_withDouble_withDouble_(jdouble start, jdouble end, jdouble value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_exclusiveBetweenWithDouble_withDouble_withDouble_withNSString_(jdouble start, jdouble end, jdouble value, NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isInstanceOfWithIOSClass_withId_(IOSClass *type, id obj);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isInstanceOfWithIOSClass_withId_withNSString_withNSObjectArray_(IOSClass *type, id obj, NSString *message, IOSObjectArray *values);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isAssignableFromWithIOSClass_withIOSClass_(IOSClass *superType, IOSClass *type);

FOUNDATION_EXPORT void OrgApacheCommonsLang3Validate_isAssignableFromWithIOSClass_withIOSClass_withNSString_withNSObjectArray_(IOSClass *superType, IOSClass *type, NSString *message, IOSObjectArray *values);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3Validate)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3Validate")