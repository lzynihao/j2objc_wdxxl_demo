//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/mutable/MutableLong.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableLong")
#ifdef RESTRICT_OrgApacheCommonsLang3MutableMutableLong
#define INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableLong 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableLong 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3MutableMutableLong

#if !defined (OrgApacheCommonsLang3MutableMutableLong_) && (INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableLong || defined(INCLUDE_OrgApacheCommonsLang3MutableMutableLong))
#define OrgApacheCommonsLang3MutableMutableLong_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

#define RESTRICT_OrgApacheCommonsLang3MutableMutable 1
#define INCLUDE_OrgApacheCommonsLang3MutableMutable 1
#include "org/apache/commons/lang3/mutable/Mutable.h"

@class JavaLangLong;

@interface OrgApacheCommonsLang3MutableMutableLong : NSNumber < JavaLangComparable, OrgApacheCommonsLang3MutableMutable >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)value;

- (instancetype)initWithNSNumber:(NSNumber *)value;

- (instancetype)initWithNSString:(NSString *)value;

- (void)addWithLong:(jlong)operand;

- (void)addWithNSNumber:(NSNumber *)operand;

- (jint)compareToWithId:(OrgApacheCommonsLang3MutableMutableLong *)other;

- (void)decrement;

- (jdouble)doubleValue;

- (jboolean)isEqual:(id)obj;

- (jfloat)floatValue;

- (JavaLangLong *)getValue;

- (NSUInteger)hash;

- (void)increment;

- (jint)intValue;

- (jlong)longLongValue;

- (void)setValueWithLong:(jlong)value;

- (void)setValueWithId:(NSNumber *)value;

- (void)subtractWithLong:(jlong)operand;

- (void)subtractWithNSNumber:(NSNumber *)operand;

- (JavaLangLong *)toLong;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3MutableMutableLong)

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableLong_init(OrgApacheCommonsLang3MutableMutableLong *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *new_OrgApacheCommonsLang3MutableMutableLong_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *create_OrgApacheCommonsLang3MutableMutableLong_init(void);

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableLong_initWithLong_(OrgApacheCommonsLang3MutableMutableLong *self, jlong value);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *new_OrgApacheCommonsLang3MutableMutableLong_initWithLong_(jlong value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *create_OrgApacheCommonsLang3MutableMutableLong_initWithLong_(jlong value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableLong_initWithNSNumber_(OrgApacheCommonsLang3MutableMutableLong *self, NSNumber *value);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *new_OrgApacheCommonsLang3MutableMutableLong_initWithNSNumber_(NSNumber *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *create_OrgApacheCommonsLang3MutableMutableLong_initWithNSNumber_(NSNumber *value);

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableLong_initWithNSString_(OrgApacheCommonsLang3MutableMutableLong *self, NSString *value);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *new_OrgApacheCommonsLang3MutableMutableLong_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableLong *create_OrgApacheCommonsLang3MutableMutableLong_initWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3MutableMutableLong)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableLong")