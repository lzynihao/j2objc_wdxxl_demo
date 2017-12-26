//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/builder/CompareToBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Comparable.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/Integer.h"
#include "java/lang/InternalError.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/reflect/AccessibleObject.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "org/apache/commons/lang3/ArrayUtils.h"
#include "org/apache/commons/lang3/builder/CompareToBuilder.h"
#include "org/apache/commons/lang3/builder/ReflectionToStringBuilder.h"

@interface OrgApacheCommonsLang3BuilderCompareToBuilder () {
 @public
  jint comparison_;
}

+ (void)reflectionAppendWithId:(id)lhs
                        withId:(id)rhs
                  withIOSClass:(IOSClass *)clazz
withOrgApacheCommonsLang3BuilderCompareToBuilder:(OrgApacheCommonsLang3BuilderCompareToBuilder *)builder
                   withBoolean:(jboolean)useTransients
             withNSStringArray:(IOSObjectArray *)excludeFields;

@end

__attribute__((unused)) static void OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionAppendWithId_withId_withIOSClass_withOrgApacheCommonsLang3BuilderCompareToBuilder_withBoolean_withNSStringArray_(id lhs, id rhs, IOSClass *clazz, OrgApacheCommonsLang3BuilderCompareToBuilder *builder, jboolean useTransients, IOSObjectArray *excludeFields);

@implementation OrgApacheCommonsLang3BuilderCompareToBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3BuilderCompareToBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)reflectionCompareWithId:(id)lhs
                         withId:(id)rhs {
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_(lhs, rhs);
}

+ (jint)reflectionCompareWithId:(id)lhs
                         withId:(id)rhs
                    withBoolean:(jboolean)compareTransients {
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_(lhs, rhs, compareTransients);
}

+ (jint)reflectionCompareWithId:(id)lhs
                         withId:(id)rhs
         withJavaUtilCollection:(id<JavaUtilCollection>)excludeFields {
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withJavaUtilCollection_(lhs, rhs, excludeFields);
}

+ (jint)reflectionCompareWithId:(id)lhs
                         withId:(id)rhs
              withNSStringArray:(IOSObjectArray *)excludeFields {
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withNSStringArray_(lhs, rhs, excludeFields);
}

+ (jint)reflectionCompareWithId:(id)lhs
                         withId:(id)rhs
                    withBoolean:(jboolean)compareTransients
                   withIOSClass:(IOSClass *)reflectUpToClass
              withNSStringArray:(IOSObjectArray *)excludeFields {
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_withIOSClass_withNSStringArray_(lhs, rhs, compareTransients, reflectUpToClass, excludeFields);
}

+ (void)reflectionAppendWithId:(id)lhs
                        withId:(id)rhs
                  withIOSClass:(IOSClass *)clazz
withOrgApacheCommonsLang3BuilderCompareToBuilder:(OrgApacheCommonsLang3BuilderCompareToBuilder *)builder
                   withBoolean:(jboolean)useTransients
             withNSStringArray:(IOSObjectArray *)excludeFields {
  OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionAppendWithId_withId_withIOSClass_withOrgApacheCommonsLang3BuilderCompareToBuilder_withBoolean_withNSStringArray_(lhs, rhs, clazz, builder, useTransients, excludeFields);
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendSuperWithInt:(jint)superCompareTo {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = superCompareTo;
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithId:(id)lhs
                                                        withId:(id)rhs {
  return [self appendWithId:lhs withId:rhs withJavaUtilComparator:nil];
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithId:(id)lhs
                                                        withId:(id)rhs
                                        withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if ([[lhs java_getClass] isArray]) {
    if ([lhs isKindOfClass:[IOSLongArray class]]) {
      (void) [self appendWithLongArray:(IOSLongArray *) cast_chk(lhs, [IOSLongArray class]) withLongArray:(IOSLongArray *) cast_chk(rhs, [IOSLongArray class])];
    }
    else if ([lhs isKindOfClass:[IOSIntArray class]]) {
      (void) [self appendWithIntArray:(IOSIntArray *) cast_chk(lhs, [IOSIntArray class]) withIntArray:(IOSIntArray *) cast_chk(rhs, [IOSIntArray class])];
    }
    else if ([lhs isKindOfClass:[IOSShortArray class]]) {
      (void) [self appendWithShortArray:(IOSShortArray *) cast_chk(lhs, [IOSShortArray class]) withShortArray:(IOSShortArray *) cast_chk(rhs, [IOSShortArray class])];
    }
    else if ([lhs isKindOfClass:[IOSCharArray class]]) {
      (void) [self appendWithCharArray:(IOSCharArray *) cast_chk(lhs, [IOSCharArray class]) withCharArray:(IOSCharArray *) cast_chk(rhs, [IOSCharArray class])];
    }
    else if ([lhs isKindOfClass:[IOSByteArray class]]) {
      (void) [self appendWithByteArray:(IOSByteArray *) cast_chk(lhs, [IOSByteArray class]) withByteArray:(IOSByteArray *) cast_chk(rhs, [IOSByteArray class])];
    }
    else if ([lhs isKindOfClass:[IOSDoubleArray class]]) {
      (void) [self appendWithDoubleArray:(IOSDoubleArray *) cast_chk(lhs, [IOSDoubleArray class]) withDoubleArray:(IOSDoubleArray *) cast_chk(rhs, [IOSDoubleArray class])];
    }
    else if ([lhs isKindOfClass:[IOSFloatArray class]]) {
      (void) [self appendWithFloatArray:(IOSFloatArray *) cast_chk(lhs, [IOSFloatArray class]) withFloatArray:(IOSFloatArray *) cast_chk(rhs, [IOSFloatArray class])];
    }
    else if ([lhs isKindOfClass:[IOSBooleanArray class]]) {
      (void) [self appendWithBooleanArray:(IOSBooleanArray *) cast_chk(lhs, [IOSBooleanArray class]) withBooleanArray:(IOSBooleanArray *) cast_chk(rhs, [IOSBooleanArray class])];
    }
    else {
      (void) [self appendWithNSObjectArray:(IOSObjectArray *) cast_check(lhs, IOSClass_arrayType(NSObject_class_(), 1)) withNSObjectArray:(IOSObjectArray *) cast_check(rhs, IOSClass_arrayType(NSObject_class_(), 1)) withJavaUtilComparator:comparator];
    }
  }
  else {
    if (comparator == nil) {
      id<JavaLangComparable> comparable = (id<JavaLangComparable>) cast_check(lhs, JavaLangComparable_class_());
      comparison_ = [comparable compareToWithId:rhs];
    }
    else {
      id<JavaUtilComparator> comparator2 = comparator;
      comparison_ = [comparator2 compareWithId:lhs withId:rhs];
    }
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithLong:(jlong)lhs
                                                        withLong:(jlong)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = ((lhs < rhs) ? -1 : ((lhs > rhs) ? 1 : 0));
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithInt:(jint)lhs
                                                        withInt:(jint)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = ((lhs < rhs) ? -1 : ((lhs > rhs) ? 1 : 0));
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithShort:(jshort)lhs
                                                        withShort:(jshort)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = ((lhs < rhs) ? -1 : ((lhs > rhs) ? 1 : 0));
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithChar:(jchar)lhs
                                                        withChar:(jchar)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = ((lhs < rhs) ? -1 : ((lhs > rhs) ? 1 : 0));
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithByte:(jbyte)lhs
                                                        withByte:(jbyte)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = ((lhs < rhs) ? -1 : ((lhs > rhs) ? 1 : 0));
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithDouble:(jdouble)lhs
                                                        withDouble:(jdouble)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = JavaLangDouble_compareWithDouble_withDouble_(lhs, rhs);
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithFloat:(jfloat)lhs
                                                        withFloat:(jfloat)rhs {
  if (comparison_ != 0) {
    return self;
  }
  comparison_ = JavaLangFloat_compareWithFloat_withFloat_(lhs, rhs);
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithBoolean:(jboolean)lhs
                                                        withBoolean:(jboolean)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == false) {
    comparison_ = -1;
  }
  else {
    comparison_ = +1;
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithNSObjectArray:(IOSObjectArray *)lhs
                                                        withNSObjectArray:(IOSObjectArray *)rhs {
  return [self appendWithNSObjectArray:lhs withNSObjectArray:rhs withJavaUtilComparator:nil];
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithNSObjectArray:(IOSObjectArray *)lhs
                                                        withNSObjectArray:(IOSObjectArray *)rhs
                                                   withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithId:IOSObjectArray_Get(lhs, i) withId:IOSObjectArray_Get(rhs, i) withJavaUtilComparator:comparator];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithLongArray:(IOSLongArray *)lhs
                                                        withLongArray:(IOSLongArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithLong:IOSLongArray_Get(lhs, i) withLong:IOSLongArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithIntArray:(IOSIntArray *)lhs
                                                        withIntArray:(IOSIntArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithInt:IOSIntArray_Get(lhs, i) withInt:IOSIntArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithShortArray:(IOSShortArray *)lhs
                                                        withShortArray:(IOSShortArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithShort:IOSShortArray_Get(lhs, i) withShort:IOSShortArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithCharArray:(IOSCharArray *)lhs
                                                        withCharArray:(IOSCharArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithChar:IOSCharArray_Get(lhs, i) withChar:IOSCharArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithByteArray:(IOSByteArray *)lhs
                                                        withByteArray:(IOSByteArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithByte:IOSByteArray_Get(lhs, i) withByte:IOSByteArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithDoubleArray:(IOSDoubleArray *)lhs
                                                        withDoubleArray:(IOSDoubleArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithDouble:IOSDoubleArray_Get(lhs, i) withDouble:IOSDoubleArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithFloatArray:(IOSFloatArray *)lhs
                                                        withFloatArray:(IOSFloatArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithFloat:IOSFloatArray_Get(lhs, i) withFloat:IOSFloatArray_Get(rhs, i)];
  }
  return self;
}

- (OrgApacheCommonsLang3BuilderCompareToBuilder *)appendWithBooleanArray:(IOSBooleanArray *)lhs
                                                        withBooleanArray:(IOSBooleanArray *)rhs {
  if (comparison_ != 0) {
    return self;
  }
  if (lhs == rhs) {
    return self;
  }
  if (lhs == nil) {
    comparison_ = -1;
    return self;
  }
  if (rhs == nil) {
    comparison_ = +1;
    return self;
  }
  if (lhs->size_ != rhs->size_) {
    comparison_ = (lhs->size_ < rhs->size_) ? -1 : +1;
    return self;
  }
  for (jint i = 0; i < lhs->size_ && comparison_ == 0; i++) {
    (void) [self appendWithBoolean:IOSBooleanArray_Get(lhs, i) withBoolean:IOSBooleanArray_Get(rhs, i)];
  }
  return self;
}

- (jint)toComparison {
  return comparison_;
}

- (JavaLangInteger *)build {
  return JavaLangInteger_valueOfWithInt_([self toComparison]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 3, -1, 4, -1, -1 },
    { NULL, "I", 0x89, 0, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x89, 0, 6, -1, 7, -1, -1 },
    { NULL, "V", 0xa, 8, 9, -1, 10, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 14, -1, 15, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 16, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 17, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 18, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 19, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 20, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 21, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 22, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 23, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 24, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 25, -1, 26, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 27, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 28, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 29, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 30, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 31, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 32, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 33, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3BuilderCompareToBuilder;", 0x1, 13, 34, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(reflectionCompareWithId:withId:);
  methods[2].selector = @selector(reflectionCompareWithId:withId:withBoolean:);
  methods[3].selector = @selector(reflectionCompareWithId:withId:withJavaUtilCollection:);
  methods[4].selector = @selector(reflectionCompareWithId:withId:withNSStringArray:);
  methods[5].selector = @selector(reflectionCompareWithId:withId:withBoolean:withIOSClass:withNSStringArray:);
  methods[6].selector = @selector(reflectionAppendWithId:withId:withIOSClass:withOrgApacheCommonsLang3BuilderCompareToBuilder:withBoolean:withNSStringArray:);
  methods[7].selector = @selector(appendSuperWithInt:);
  methods[8].selector = @selector(appendWithId:withId:);
  methods[9].selector = @selector(appendWithId:withId:withJavaUtilComparator:);
  methods[10].selector = @selector(appendWithLong:withLong:);
  methods[11].selector = @selector(appendWithInt:withInt:);
  methods[12].selector = @selector(appendWithShort:withShort:);
  methods[13].selector = @selector(appendWithChar:withChar:);
  methods[14].selector = @selector(appendWithByte:withByte:);
  methods[15].selector = @selector(appendWithDouble:withDouble:);
  methods[16].selector = @selector(appendWithFloat:withFloat:);
  methods[17].selector = @selector(appendWithBoolean:withBoolean:);
  methods[18].selector = @selector(appendWithNSObjectArray:withNSObjectArray:);
  methods[19].selector = @selector(appendWithNSObjectArray:withNSObjectArray:withJavaUtilComparator:);
  methods[20].selector = @selector(appendWithLongArray:withLongArray:);
  methods[21].selector = @selector(appendWithIntArray:withIntArray:);
  methods[22].selector = @selector(appendWithShortArray:withShortArray:);
  methods[23].selector = @selector(appendWithCharArray:withCharArray:);
  methods[24].selector = @selector(appendWithByteArray:withByteArray:);
  methods[25].selector = @selector(appendWithDoubleArray:withDoubleArray:);
  methods[26].selector = @selector(appendWithFloatArray:withFloatArray:);
  methods[27].selector = @selector(appendWithBooleanArray:withBooleanArray:);
  methods[28].selector = @selector(toComparison);
  methods[29].selector = @selector(build);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "comparison_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "reflectionCompare", "LNSObject;LNSObject;", "LNSObject;LNSObject;Z", "LNSObject;LNSObject;LJavaUtilCollection;", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection<Ljava/lang/String;>;)I", "LNSObject;LNSObject;[LNSString;", "LNSObject;LNSObject;ZLIOSClass;[LNSString;", "(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class<*>;[Ljava/lang/String;)I", "reflectionAppend", "LNSObject;LNSObject;LIOSClass;LOrgApacheCommonsLang3BuilderCompareToBuilder;Z[LNSString;", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class<*>;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V", "appendSuper", "I", "append", "LNSObject;LNSObject;LJavaUtilComparator;", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator<*>;)Lorg/apache/commons/lang3/builder/CompareToBuilder;", "JJ", "II", "SS", "CC", "BB", "DD", "FF", "ZZ", "[LNSObject;[LNSObject;", "[LNSObject;[LNSObject;LJavaUtilComparator;", "([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator<*>;)Lorg/apache/commons/lang3/builder/CompareToBuilder;", "[J[J", "[I[I", "[S[S", "[C[C", "[B[B", "[D[D", "[F[F", "[Z[Z", "Ljava/lang/Object;Lorg/apache/commons/lang3/builder/Builder<Ljava/lang/Integer;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3BuilderCompareToBuilder = { "CompareToBuilder", "org.apache.commons.lang3.builder", ptrTable, methods, fields, 7, 0x1, 30, 1, -1, -1, -1, 35, -1 };
  return &_OrgApacheCommonsLang3BuilderCompareToBuilder;
}

@end

void OrgApacheCommonsLang3BuilderCompareToBuilder_init(OrgApacheCommonsLang3BuilderCompareToBuilder *self) {
  NSObject_init(self);
  self->comparison_ = 0;
}

OrgApacheCommonsLang3BuilderCompareToBuilder *new_OrgApacheCommonsLang3BuilderCompareToBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3BuilderCompareToBuilder, init)
}

OrgApacheCommonsLang3BuilderCompareToBuilder *create_OrgApacheCommonsLang3BuilderCompareToBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3BuilderCompareToBuilder, init)
}

jint OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_(id lhs, id rhs) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_withIOSClass_withNSStringArray_(lhs, rhs, false, nil, [IOSObjectArray newArrayWithLength:0 type:NSString_class_()]);
}

jint OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_(id lhs, id rhs, jboolean compareTransients) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_withIOSClass_withNSStringArray_(lhs, rhs, compareTransients, nil, [IOSObjectArray newArrayWithLength:0 type:NSString_class_()]);
}

jint OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withJavaUtilCollection_(id lhs, id rhs, id<JavaUtilCollection> excludeFields) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withNSStringArray_(lhs, rhs, OrgApacheCommonsLang3BuilderReflectionToStringBuilder_toNoNullStringArrayWithJavaUtilCollection_(excludeFields));
}

jint OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withNSStringArray_(id lhs, id rhs, IOSObjectArray *excludeFields) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  return OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_withIOSClass_withNSStringArray_(lhs, rhs, false, nil, excludeFields);
}

jint OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionCompareWithId_withId_withBoolean_withIOSClass_withNSStringArray_(id lhs, id rhs, jboolean compareTransients, IOSClass *reflectUpToClass, IOSObjectArray *excludeFields) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  if (lhs == rhs) {
    return 0;
  }
  if (lhs == nil || rhs == nil) {
    @throw new_JavaLangNullPointerException_init();
  }
  IOSClass *lhsClazz = [lhs java_getClass];
  if (![lhsClazz isInstance:rhs]) {
    @throw new_JavaLangClassCastException_init();
  }
  OrgApacheCommonsLang3BuilderCompareToBuilder *compareToBuilder = new_OrgApacheCommonsLang3BuilderCompareToBuilder_init();
  OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionAppendWithId_withId_withIOSClass_withOrgApacheCommonsLang3BuilderCompareToBuilder_withBoolean_withNSStringArray_(lhs, rhs, lhsClazz, compareToBuilder, compareTransients, excludeFields);
  while ([((IOSClass *) nil_chk(lhsClazz)) getSuperclass] != nil && lhsClazz != reflectUpToClass) {
    lhsClazz = [lhsClazz getSuperclass];
    OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionAppendWithId_withId_withIOSClass_withOrgApacheCommonsLang3BuilderCompareToBuilder_withBoolean_withNSStringArray_(lhs, rhs, lhsClazz, compareToBuilder, compareTransients, excludeFields);
  }
  return [compareToBuilder toComparison];
}

void OrgApacheCommonsLang3BuilderCompareToBuilder_reflectionAppendWithId_withId_withIOSClass_withOrgApacheCommonsLang3BuilderCompareToBuilder_withBoolean_withNSStringArray_(id lhs, id rhs, IOSClass *clazz, OrgApacheCommonsLang3BuilderCompareToBuilder *builder, jboolean useTransients, IOSObjectArray *excludeFields) {
  OrgApacheCommonsLang3BuilderCompareToBuilder_initialize();
  IOSObjectArray *fields = [((IOSClass *) nil_chk(clazz)) getDeclaredFields];
  JavaLangReflectAccessibleObject_setAccessibleWithJavaLangReflectAccessibleObjectArray_withBoolean_(fields, true);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields))->size_ && ((OrgApacheCommonsLang3BuilderCompareToBuilder *) nil_chk(builder))->comparison_ == 0; i++) {
    JavaLangReflectField *f = IOSObjectArray_Get(fields, i);
    if (!OrgApacheCommonsLang3ArrayUtils_containsWithNSObjectArray_withId_(excludeFields, [((JavaLangReflectField *) nil_chk(f)) getName]) && ([((NSString *) nil_chk([f getName])) java_indexOf:'$'] == -1) && (useTransients || !JavaLangReflectModifier_isTransientWithInt_([f getModifiers])) && (!JavaLangReflectModifier_isStaticWithInt_([f getModifiers]))) {
      @try {
        (void) [((OrgApacheCommonsLang3BuilderCompareToBuilder *) nil_chk(builder)) appendWithId:[f getWithId:lhs] withId:[f getWithId:rhs]];
      }
      @catch (JavaLangIllegalAccessException *e) {
        @throw new_JavaLangInternalError_initWithNSString_(@"Unexpected IllegalAccessException");
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3BuilderCompareToBuilder)
