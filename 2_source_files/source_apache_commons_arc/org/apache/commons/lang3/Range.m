//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/Range.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Comparable.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/commons/lang3/Range.h"

@interface OrgApacheCommonsLang3Range () {
 @public
  id<JavaUtilComparator> comparator_;
  id minimum_;
  id maximum_;
  jint hashCode_;
  NSString *toString_;
}

- (instancetype)initWithId:(id)element1
                    withId:(id)element2
    withJavaUtilComparator:(id<JavaUtilComparator>)comp;

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3Range, comparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3Range, minimum_, id)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3Range, maximum_, id)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3Range, toString_, NSString *)

inline jlong OrgApacheCommonsLang3Range_get_serialVersionUID();
#define OrgApacheCommonsLang3Range_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3Range, serialVersionUID, jlong)

__attribute__((unused)) static void OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(OrgApacheCommonsLang3Range *self, id element1, id element2, id<JavaUtilComparator> comp);

__attribute__((unused)) static OrgApacheCommonsLang3Range *new_OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(id element1, id element2, id<JavaUtilComparator> comp) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheCommonsLang3Range *create_OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(id element1, id element2, id<JavaUtilComparator> comp);

typedef NS_ENUM(NSUInteger, OrgApacheCommonsLang3Range_ComparableComparator_Enum) {
  OrgApacheCommonsLang3Range_ComparableComparator_Enum_INSTANCE = 0,
};

@interface OrgApacheCommonsLang3Range_ComparableComparator : JavaLangEnum < NSCopying, JavaUtilComparator >

- (jint)compareWithId:(id)obj1
               withId:(id)obj2;

+ (IOSObjectArray *)values;

+ (OrgApacheCommonsLang3Range_ComparableComparator *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheCommonsLang3Range_ComparableComparator)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_values_[];

inline OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_get_INSTANCE();
J2OBJC_ENUM_CONSTANT(OrgApacheCommonsLang3Range_ComparableComparator, INSTANCE)

__attribute__((unused)) static void OrgApacheCommonsLang3Range_ComparableComparator_initWithNSString_withInt_(OrgApacheCommonsLang3Range_ComparableComparator *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheCommonsLang3Range_ComparableComparator *new_OrgApacheCommonsLang3Range_ComparableComparator_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static IOSObjectArray *OrgApacheCommonsLang3Range_ComparableComparator_values();

__attribute__((unused)) static OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3Range_ComparableComparator)

@implementation OrgApacheCommonsLang3Range

+ (OrgApacheCommonsLang3Range *)isWithJavaLangComparable:(id<JavaLangComparable>)element {
  return OrgApacheCommonsLang3Range_isWithJavaLangComparable_(element);
}

+ (OrgApacheCommonsLang3Range *)isWithId:(id)element
                  withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  return OrgApacheCommonsLang3Range_isWithId_withJavaUtilComparator_(element, comparator);
}

+ (OrgApacheCommonsLang3Range *)betweenWithJavaLangComparable:(id<JavaLangComparable>)fromInclusive
                                       withJavaLangComparable:(id<JavaLangComparable>)toInclusive {
  return OrgApacheCommonsLang3Range_betweenWithJavaLangComparable_withJavaLangComparable_(fromInclusive, toInclusive);
}

+ (OrgApacheCommonsLang3Range *)betweenWithId:(id)fromInclusive
                                       withId:(id)toInclusive
                       withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  return OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(fromInclusive, toInclusive, comparator);
}

- (instancetype)initWithId:(id)element1
                    withId:(id)element2
    withJavaUtilComparator:(id<JavaUtilComparator>)comp {
  OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(self, element1, element2, comp);
  return self;
}

- (id)getMinimum {
  return minimum_;
}

- (id)getMaximum {
  return maximum_;
}

- (id<JavaUtilComparator>)getComparator {
  return comparator_;
}

- (jboolean)isNaturalOrdering {
  return comparator_ == JreLoadEnum(OrgApacheCommonsLang3Range_ComparableComparator, INSTANCE);
}

- (jboolean)containsWithId:(id)element {
  if (element == nil) {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:element withId:minimum_] > -1 && [comparator_ compareWithId:element withId:maximum_] < 1;
}

- (jboolean)isAfterWithId:(id)element {
  if (element == nil) {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:element withId:minimum_] < 0;
}

- (jboolean)isStartedByWithId:(id)element {
  if (element == nil) {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:element withId:minimum_] == 0;
}

- (jboolean)isEndedByWithId:(id)element {
  if (element == nil) {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:element withId:maximum_] == 0;
}

- (jboolean)isBeforeWithId:(id)element {
  if (element == nil) {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:element withId:maximum_] > 0;
}

- (jint)elementCompareToWithId:(id)element {
  if (element == nil) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"Element is null");
  }
  if ([self isAfterWithId:element]) {
    return -1;
  }
  else if ([self isBeforeWithId:element]) {
    return 1;
  }
  else {
    return 0;
  }
}

- (jboolean)containsRangeWithOrgApacheCommonsLang3Range:(OrgApacheCommonsLang3Range *)otherRange {
  if (otherRange == nil) {
    return false;
  }
  return [self containsWithId:otherRange->minimum_] && [self containsWithId:otherRange->maximum_];
}

- (jboolean)isAfterRangeWithOrgApacheCommonsLang3Range:(OrgApacheCommonsLang3Range *)otherRange {
  if (otherRange == nil) {
    return false;
  }
  return [self isAfterWithId:otherRange->maximum_];
}

- (jboolean)isOverlappedByWithOrgApacheCommonsLang3Range:(OrgApacheCommonsLang3Range *)otherRange {
  if (otherRange == nil) {
    return false;
  }
  return [otherRange containsWithId:minimum_] || [otherRange containsWithId:maximum_] || [self containsWithId:otherRange->minimum_];
}

- (jboolean)isBeforeRangeWithOrgApacheCommonsLang3Range:(OrgApacheCommonsLang3Range *)otherRange {
  if (otherRange == nil) {
    return false;
  }
  return [self isBeforeWithId:otherRange->minimum_];
}

- (OrgApacheCommonsLang3Range *)intersectionWithWithOrgApacheCommonsLang3Range:(OrgApacheCommonsLang3Range *)other {
  if (![self isOverlappedByWithOrgApacheCommonsLang3Range:other]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(NSString_java_formatWithNSString_withNSObjectArray_(@"Cannot calculate intersection with non-overlapping range %s", [IOSObjectArray newArrayWithObjects:(id[]){ other } count:1 type:NSObject_class_()]));
  }
  if ([self isEqual:other]) {
    return self;
  }
  id min = [((id<JavaUtilComparator>) nil_chk([self getComparator])) compareWithId:minimum_ withId:((OrgApacheCommonsLang3Range *) nil_chk(other))->minimum_] < 0 ? other->minimum_ : minimum_;
  id max = [((id<JavaUtilComparator>) nil_chk([self getComparator])) compareWithId:maximum_ withId:other->maximum_] < 0 ? maximum_ : other->maximum_;
  return OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(min, max, [self getComparator]);
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  else if (obj == nil || [obj java_getClass] != [self java_getClass]) {
    return false;
  }
  else {
    OrgApacheCommonsLang3Range *range = (OrgApacheCommonsLang3Range *) cast_chk(obj, [OrgApacheCommonsLang3Range class]);
    return [nil_chk(minimum_) isEqual:range->minimum_] && [nil_chk(maximum_) isEqual:range->maximum_];
  }
}

- (NSUInteger)hash {
  jint result = hashCode_;
  if (hashCode_ == 0) {
    result = 17;
    result = 37 * result + ((jint) [[self java_getClass] hash]);
    result = 37 * result + ((jint) [nil_chk(minimum_) hash]);
    result = 37 * result + ((jint) [nil_chk(maximum_) hash]);
    hashCode_ = result;
  }
  return result;
}

- (NSString *)description {
  NSString *result = toString_;
  if (result == nil) {
    JavaLangStringBuilder *buf = new_JavaLangStringBuilder_initWithInt_(32);
    (void) [buf appendWithChar:'['];
    (void) [buf appendWithId:minimum_];
    (void) [buf appendWithNSString:@".."];
    (void) [buf appendWithId:maximum_];
    (void) [buf appendWithChar:']'];
    result = [buf description];
    toString_ = result;
  }
  return result;
}

- (NSString *)toStringWithNSString:(NSString *)format {
  return NSString_java_formatWithNSString_withNSObjectArray_(format, [IOSObjectArray newArrayWithObjects:(id[]){ minimum_, maximum_, comparator_ } count:3 type:NSObject_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheCommonsLang3Range;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3Range;", 0x9, 0, 3, -1, 4, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3Range;", 0x9, 5, 6, -1, 7, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3Range;", 0x9, 5, 8, -1, 9, -1, -1 },
    { NULL, NULL, 0x2, -1, 8, -1, 10, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, 15, -1, -1 },
    { NULL, "Z", 0x1, 16, 14, -1, 15, -1, -1 },
    { NULL, "Z", 0x1, 17, 14, -1, 15, -1, -1 },
    { NULL, "Z", 0x1, 18, 14, -1, 15, -1, -1 },
    { NULL, "Z", 0x1, 19, 14, -1, 15, -1, -1 },
    { NULL, "I", 0x1, 20, 14, -1, 21, -1, -1 },
    { NULL, "Z", 0x1, 22, 23, -1, 24, -1, -1 },
    { NULL, "Z", 0x1, 25, 23, -1, 24, -1, -1 },
    { NULL, "Z", 0x1, 26, 23, -1, 24, -1, -1 },
    { NULL, "Z", 0x1, 27, 23, -1, 24, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3Range;", 0x1, 28, 23, -1, 29, -1, -1 },
    { NULL, "Z", 0x1, 30, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 31, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 32, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 32, 33, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(isWithJavaLangComparable:);
  methods[1].selector = @selector(isWithId:withJavaUtilComparator:);
  methods[2].selector = @selector(betweenWithJavaLangComparable:withJavaLangComparable:);
  methods[3].selector = @selector(betweenWithId:withId:withJavaUtilComparator:);
  methods[4].selector = @selector(initWithId:withId:withJavaUtilComparator:);
  methods[5].selector = @selector(getMinimum);
  methods[6].selector = @selector(getMaximum);
  methods[7].selector = @selector(getComparator);
  methods[8].selector = @selector(isNaturalOrdering);
  methods[9].selector = @selector(containsWithId:);
  methods[10].selector = @selector(isAfterWithId:);
  methods[11].selector = @selector(isStartedByWithId:);
  methods[12].selector = @selector(isEndedByWithId:);
  methods[13].selector = @selector(isBeforeWithId:);
  methods[14].selector = @selector(elementCompareToWithId:);
  methods[15].selector = @selector(containsRangeWithOrgApacheCommonsLang3Range:);
  methods[16].selector = @selector(isAfterRangeWithOrgApacheCommonsLang3Range:);
  methods[17].selector = @selector(isOverlappedByWithOrgApacheCommonsLang3Range:);
  methods[18].selector = @selector(isBeforeRangeWithOrgApacheCommonsLang3Range:);
  methods[19].selector = @selector(intersectionWithWithOrgApacheCommonsLang3Range:);
  methods[20].selector = @selector(isEqual:);
  methods[21].selector = @selector(hash);
  methods[22].selector = @selector(description);
  methods[23].selector = @selector(toStringWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3Range_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "comparator_", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x12, -1, -1, 34, -1 },
    { "minimum_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 35, -1 },
    { "maximum_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 35, -1 },
    { "hashCode_", "I", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
    { "toString_", "LNSString;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "is", "LJavaLangComparable;", "<T::Ljava/lang/Comparable<TT;>;>(TT;)Lorg/apache/commons/lang3/Range<TT;>;", "LNSObject;LJavaUtilComparator;", "<T:Ljava/lang/Object;>(TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;", "between", "LJavaLangComparable;LJavaLangComparable;", "<T::Ljava/lang/Comparable<TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>;", "LNSObject;LNSObject;LJavaUtilComparator;", "<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;", "(TT;TT;Ljava/util/Comparator<TT;>;)V", "()TT;", "()Ljava/util/Comparator<TT;>;", "contains", "LNSObject;", "(TT;)Z", "isAfter", "isStartedBy", "isEndedBy", "isBefore", "elementCompareTo", "(TT;)I", "containsRange", "LOrgApacheCommonsLang3Range;", "(Lorg/apache/commons/lang3/Range<TT;>;)Z", "isAfterRange", "isOverlappedBy", "isBeforeRange", "intersectionWith", "(Lorg/apache/commons/lang3/Range<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;", "equals", "hashCode", "toString", "LNSString;", "Ljava/util/Comparator<TT;>;", "TT;", "LOrgApacheCommonsLang3Range_ComparableComparator;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3Range = { "Range", "org.apache.commons.lang3", ptrTable, methods, fields, 7, 0x11, 24, 6, -1, 36, -1, 37, -1 };
  return &_OrgApacheCommonsLang3Range;
}

@end

OrgApacheCommonsLang3Range *OrgApacheCommonsLang3Range_isWithJavaLangComparable_(id<JavaLangComparable> element) {
  OrgApacheCommonsLang3Range_initialize();
  return OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(element, element, nil);
}

OrgApacheCommonsLang3Range *OrgApacheCommonsLang3Range_isWithId_withJavaUtilComparator_(id element, id<JavaUtilComparator> comparator) {
  OrgApacheCommonsLang3Range_initialize();
  return OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(element, element, comparator);
}

OrgApacheCommonsLang3Range *OrgApacheCommonsLang3Range_betweenWithJavaLangComparable_withJavaLangComparable_(id<JavaLangComparable> fromInclusive, id<JavaLangComparable> toInclusive) {
  OrgApacheCommonsLang3Range_initialize();
  return OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(fromInclusive, toInclusive, nil);
}

OrgApacheCommonsLang3Range *OrgApacheCommonsLang3Range_betweenWithId_withId_withJavaUtilComparator_(id fromInclusive, id toInclusive, id<JavaUtilComparator> comparator) {
  OrgApacheCommonsLang3Range_initialize();
  return new_OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(fromInclusive, toInclusive, comparator);
}

void OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(OrgApacheCommonsLang3Range *self, id element1, id element2, id<JavaUtilComparator> comp) {
  NSObject_init(self);
  if (element1 == nil || element2 == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@", @"Elements in a range must not be null: element1=", element1, @", element2=", element2));
  }
  if (comp == nil) {
    self->comparator_ = JreLoadEnum(OrgApacheCommonsLang3Range_ComparableComparator, INSTANCE);
  }
  else {
    self->comparator_ = comp;
  }
  if ([((id<JavaUtilComparator>) nil_chk(self->comparator_)) compareWithId:element1 withId:element2] < 1) {
    self->minimum_ = element1;
    self->maximum_ = element2;
  }
  else {
    self->minimum_ = element2;
    self->maximum_ = element1;
  }
}

OrgApacheCommonsLang3Range *new_OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(id element1, id element2, id<JavaUtilComparator> comp) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3Range, initWithId_withId_withJavaUtilComparator_, element1, element2, comp)
}

OrgApacheCommonsLang3Range *create_OrgApacheCommonsLang3Range_initWithId_withId_withJavaUtilComparator_(id element1, id element2, id<JavaUtilComparator> comp) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3Range, initWithId_withId_withJavaUtilComparator_, element1, element2, comp)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3Range)

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsLang3Range_ComparableComparator)

OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_values_[1];

@implementation OrgApacheCommonsLang3Range_ComparableComparator

- (jint)compareWithId:(id)obj1
               withId:(id)obj2 {
  return [((id<JavaLangComparable>) nil_chk(((id<JavaLangComparable>) cast_check(obj1, JavaLangComparable_class_())))) compareToWithId:obj2];
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (IOSObjectArray *)values {
  return OrgApacheCommonsLang3Range_ComparableComparator_values();
}

+ (OrgApacheCommonsLang3Range_ComparableComparator *)valueOfWithNSString:(NSString *)name {
  return OrgApacheCommonsLang3Range_ComparableComparator_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheCommonsLang3Range_ComparableComparator;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3Range_ComparableComparator;", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(compareWithId:withId:);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgApacheCommonsLang3Range_ComparableComparator;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "compare", "LNSObject;LNSObject;", "valueOf", "LNSString;", &JreEnum(OrgApacheCommonsLang3Range_ComparableComparator, INSTANCE), "LOrgApacheCommonsLang3Range;", "Ljava/lang/Enum<Lorg/apache/commons/lang3/Range$ComparableComparator;>;Ljava/util/Comparator;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3Range_ComparableComparator = { "ComparableComparator", "org.apache.commons.lang3", ptrTable, methods, fields, 7, 0x401a, 3, 1, 5, -1, -1, 6, -1 };
  return &_OrgApacheCommonsLang3Range_ComparableComparator;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsLang3Range_ComparableComparator class]) {
    JreEnum(OrgApacheCommonsLang3Range_ComparableComparator, INSTANCE) = new_OrgApacheCommonsLang3Range_ComparableComparator_initWithNSString_withInt_(@"INSTANCE", 0);
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsLang3Range_ComparableComparator)
  }
}

@end

void OrgApacheCommonsLang3Range_ComparableComparator_initWithNSString_withInt_(OrgApacheCommonsLang3Range_ComparableComparator *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheCommonsLang3Range_ComparableComparator *new_OrgApacheCommonsLang3Range_ComparableComparator_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3Range_ComparableComparator, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *OrgApacheCommonsLang3Range_ComparableComparator_values() {
  OrgApacheCommonsLang3Range_ComparableComparator_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheCommonsLang3Range_ComparableComparator_values_ count:1 type:OrgApacheCommonsLang3Range_ComparableComparator_class_()];
}

OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_valueOfWithNSString_(NSString *name) {
  OrgApacheCommonsLang3Range_ComparableComparator_initialize();
  for (int i = 0; i < 1; i++) {
    OrgApacheCommonsLang3Range_ComparableComparator *e = OrgApacheCommonsLang3Range_ComparableComparator_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheCommonsLang3Range_ComparableComparator *OrgApacheCommonsLang3Range_ComparableComparator_fromOrdinal(NSUInteger ordinal) {
  OrgApacheCommonsLang3Range_ComparableComparator_initialize();
  if (ordinal >= 1) {
    return nil;
  }
  return OrgApacheCommonsLang3Range_ComparableComparator_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3Range_ComparableComparator)
