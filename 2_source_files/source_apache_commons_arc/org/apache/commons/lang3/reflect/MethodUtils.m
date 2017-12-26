//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/reflect/MethodUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "java/lang/reflect/Type.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/commons/lang3/ArrayUtils.h"
#include "org/apache/commons/lang3/ClassUtils.h"
#include "org/apache/commons/lang3/Validate.h"
#include "org/apache/commons/lang3/reflect/MemberUtils.h"
#include "org/apache/commons/lang3/reflect/MethodUtils.h"
#include "org/apache/commons/lang3/reflect/TypeUtils.h"

@interface OrgApacheCommonsLang3ReflectMethodUtils ()

+ (JavaLangReflectMethod *)getAccessibleMethodFromSuperclassWithIOSClass:(IOSClass *)cls
                                                            withNSString:(NSString *)methodName
                                                       withIOSClassArray:(IOSObjectArray *)parameterTypes;

+ (JavaLangReflectMethod *)getAccessibleMethodFromInterfaceNestWithIOSClass:(IOSClass *)cls
                                                               withNSString:(NSString *)methodName
                                                          withIOSClassArray:(IOSObjectArray *)parameterTypes;

@end

__attribute__((unused)) static JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromSuperclassWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes);

__attribute__((unused)) static JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromInterfaceNestWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes);

@implementation OrgApacheCommonsLang3ReflectMethodUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ReflectMethodUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id)invokeMethodWithId:(id)object
            withNSString:(NSString *)methodName {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_(object, methodName);
}

+ (id)invokeMethodWithId:(id)object
            withNSString:(NSString *)methodName
       withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_(object, methodName, args);
}

+ (id)invokeMethodWithId:(id)object
            withNSString:(NSString *)methodName
       withNSObjectArray:(IOSObjectArray *)args
       withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, args, parameterTypes);
}

+ (id)invokeExactMethodWithId:(id)object
                 withNSString:(NSString *)methodName {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_(object, methodName);
}

+ (id)invokeExactMethodWithId:(id)object
                 withNSString:(NSString *)methodName
            withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_(object, methodName, args);
}

+ (id)invokeExactMethodWithId:(id)object
                 withNSString:(NSString *)methodName
            withNSObjectArray:(IOSObjectArray *)args
            withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, args, parameterTypes);
}

+ (id)invokeExactStaticMethodWithIOSClass:(IOSClass *)cls
                             withNSString:(NSString *)methodName
                        withNSObjectArray:(IOSObjectArray *)args
                        withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(cls, methodName, args, parameterTypes);
}

+ (id)invokeStaticMethodWithIOSClass:(IOSClass *)cls
                        withNSString:(NSString *)methodName
                   withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeStaticMethodWithIOSClass_withNSString_withNSObjectArray_(cls, methodName, args);
}

+ (id)invokeStaticMethodWithIOSClass:(IOSClass *)cls
                        withNSString:(NSString *)methodName
                   withNSObjectArray:(IOSObjectArray *)args
                   withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(cls, methodName, args, parameterTypes);
}

+ (id)invokeExactStaticMethodWithIOSClass:(IOSClass *)cls
                             withNSString:(NSString *)methodName
                        withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactStaticMethodWithIOSClass_withNSString_withNSObjectArray_(cls, methodName, args);
}

+ (JavaLangReflectMethod *)getAccessibleMethodWithIOSClass:(IOSClass *)cls
                                              withNSString:(NSString *)methodName
                                         withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
}

+ (JavaLangReflectMethod *)getAccessibleMethodWithJavaLangReflectMethod:(JavaLangReflectMethod *)method {
  return OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithJavaLangReflectMethod_(method);
}

+ (JavaLangReflectMethod *)getAccessibleMethodFromSuperclassWithIOSClass:(IOSClass *)cls
                                                            withNSString:(NSString *)methodName
                                                       withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromSuperclassWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
}

+ (JavaLangReflectMethod *)getAccessibleMethodFromInterfaceNestWithIOSClass:(IOSClass *)cls
                                                               withNSString:(NSString *)methodName
                                                          withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromInterfaceNestWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
}

+ (JavaLangReflectMethod *)getMatchingAccessibleMethodWithIOSClass:(IOSClass *)cls
                                                      withNSString:(NSString *)methodName
                                                 withIOSClassArray:(IOSObjectArray *)parameterTypes {
  return OrgApacheCommonsLang3ReflectMethodUtils_getMatchingAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
}

+ (id<JavaUtilSet>)getOverrideHierarchyWithJavaLangReflectMethod:(JavaLangReflectMethod *)method
                  withOrgApacheCommonsLang3ClassUtils_Interfaces:(OrgApacheCommonsLang3ClassUtils_Interfaces *)interfacesBehavior {
  return OrgApacheCommonsLang3ReflectMethodUtils_getOverrideHierarchyWithJavaLangReflectMethod_withOrgApacheCommonsLang3ClassUtils_Interfaces_(method, interfacesBehavior);
}

+ (IOSObjectArray *)getMethodsWithAnnotationWithIOSClass:(IOSClass *)cls
                                            withIOSClass:(IOSClass *)annotationCls {
  return OrgApacheCommonsLang3ReflectMethodUtils_getMethodsWithAnnotationWithIOSClass_withIOSClass_(cls, annotationCls);
}

+ (id<JavaUtilList>)getMethodsListWithAnnotationWithIOSClass:(IOSClass *)cls
                                                withIOSClass:(IOSClass *)annotationCls {
  return OrgApacheCommonsLang3ReflectMethodUtils_getMethodsListWithAnnotationWithIOSClass_withIOSClass_(cls, annotationCls);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x89, 0, 3, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 4, 2, 5, -1, -1 },
    { NULL, "LNSObject;", 0x9, 6, 1, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x89, 6, 3, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 6, 4, 2, 5, -1, -1 },
    { NULL, "LNSObject;", 0x9, 7, 8, 2, 9, -1, -1 },
    { NULL, "LNSObject;", 0x89, 10, 11, 2, 12, -1, -1 },
    { NULL, "LNSObject;", 0x9, 10, 8, 2, 9, -1, -1 },
    { NULL, "LNSObject;", 0x89, 7, 11, 2, 12, -1, -1 },
    { NULL, "LJavaLangReflectMethod;", 0x89, 13, 14, -1, 15, -1, -1 },
    { NULL, "LJavaLangReflectMethod;", 0x9, 13, 16, -1, -1, -1, -1 },
    { NULL, "LJavaLangReflectMethod;", 0x8a, 17, 14, -1, 15, -1, -1 },
    { NULL, "LJavaLangReflectMethod;", 0x8a, 18, 14, -1, 15, -1, -1 },
    { NULL, "LJavaLangReflectMethod;", 0x89, 19, 14, -1, 15, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x9, 20, 21, -1, 22, -1, -1 },
    { NULL, "[LJavaLangReflectMethod;", 0x9, 23, 24, -1, 25, -1, -1 },
    { NULL, "LJavaUtilList;", 0x9, 26, 24, -1, 27, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(invokeMethodWithId:withNSString:);
  methods[2].selector = @selector(invokeMethodWithId:withNSString:withNSObjectArray:);
  methods[3].selector = @selector(invokeMethodWithId:withNSString:withNSObjectArray:withIOSClassArray:);
  methods[4].selector = @selector(invokeExactMethodWithId:withNSString:);
  methods[5].selector = @selector(invokeExactMethodWithId:withNSString:withNSObjectArray:);
  methods[6].selector = @selector(invokeExactMethodWithId:withNSString:withNSObjectArray:withIOSClassArray:);
  methods[7].selector = @selector(invokeExactStaticMethodWithIOSClass:withNSString:withNSObjectArray:withIOSClassArray:);
  methods[8].selector = @selector(invokeStaticMethodWithIOSClass:withNSString:withNSObjectArray:);
  methods[9].selector = @selector(invokeStaticMethodWithIOSClass:withNSString:withNSObjectArray:withIOSClassArray:);
  methods[10].selector = @selector(invokeExactStaticMethodWithIOSClass:withNSString:withNSObjectArray:);
  methods[11].selector = @selector(getAccessibleMethodWithIOSClass:withNSString:withIOSClassArray:);
  methods[12].selector = @selector(getAccessibleMethodWithJavaLangReflectMethod:);
  methods[13].selector = @selector(getAccessibleMethodFromSuperclassWithIOSClass:withNSString:withIOSClassArray:);
  methods[14].selector = @selector(getAccessibleMethodFromInterfaceNestWithIOSClass:withNSString:withIOSClassArray:);
  methods[15].selector = @selector(getMatchingAccessibleMethodWithIOSClass:withNSString:withIOSClassArray:);
  methods[16].selector = @selector(getOverrideHierarchyWithJavaLangReflectMethod:withOrgApacheCommonsLang3ClassUtils_Interfaces:);
  methods[17].selector = @selector(getMethodsWithAnnotationWithIOSClass:withIOSClass:);
  methods[18].selector = @selector(getMethodsListWithAnnotationWithIOSClass:withIOSClass:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "invokeMethod", "LNSObject;LNSString;", "LJavaLangNoSuchMethodException;LJavaLangIllegalAccessException;LJavaLangReflectInvocationTargetException;", "LNSObject;LNSString;[LNSObject;", "LNSObject;LNSString;[LNSObject;[LIOSClass;", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class<*>;)Ljava/lang/Object;", "invokeExactMethod", "invokeExactStaticMethod", "LIOSClass;LNSString;[LNSObject;[LIOSClass;", "(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class<*>;)Ljava/lang/Object;", "invokeStaticMethod", "LIOSClass;LNSString;[LNSObject;", "(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "getAccessibleMethod", "LIOSClass;LNSString;[LIOSClass;", "(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;", "LJavaLangReflectMethod;", "getAccessibleMethodFromSuperclass", "getAccessibleMethodFromInterfaceNest", "getMatchingAccessibleMethod", "getOverrideHierarchy", "LJavaLangReflectMethod;LOrgApacheCommonsLang3ClassUtils_Interfaces;", "(Ljava/lang/reflect/Method;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/util/Set<Ljava/lang/reflect/Method;>;", "getMethodsWithAnnotation", "LIOSClass;LIOSClass;", "(Ljava/lang/Class<*>;Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;)[Ljava/lang/reflect/Method;", "getMethodsListWithAnnotation", "(Ljava/lang/Class<*>;Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;)Ljava/util/List<Ljava/lang/reflect/Method;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ReflectMethodUtils = { "MethodUtils", "org.apache.commons.lang3.reflect", ptrTable, methods, NULL, 7, 0x1, 19, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3ReflectMethodUtils;
}

@end

void OrgApacheCommonsLang3ReflectMethodUtils_init(OrgApacheCommonsLang3ReflectMethodUtils *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3ReflectMethodUtils *new_OrgApacheCommonsLang3ReflectMethodUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ReflectMethodUtils, init)
}

OrgApacheCommonsLang3ReflectMethodUtils *create_OrgApacheCommonsLang3ReflectMethodUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ReflectMethodUtils, init)
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_(id object, NSString *methodName) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, JreLoadStatic(OrgApacheCommonsLang3ArrayUtils, EMPTY_OBJECT_ARRAY), nil);
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_(id object, NSString *methodName, IOSObjectArray *args) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  IOSObjectArray *parameterTypes = OrgApacheCommonsLang3ClassUtils_toClassWithNSObjectArray_(args);
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, args, parameterTypes);
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(id object, NSString *methodName, IOSObjectArray *args, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  parameterTypes = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithIOSClassArray_(parameterTypes);
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  JavaLangReflectMethod *method = OrgApacheCommonsLang3ReflectMethodUtils_getMatchingAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_([nil_chk(object) java_getClass], methodName, parameterTypes);
  if (method == nil) {
    @throw new_JavaLangNoSuchMethodException_initWithNSString_(JreStrcat("$$$$", @"No such accessible method: ", methodName, @"() on object: ", [[object java_getClass] getName]));
  }
  return [method invokeWithId:object withNSObjectArray:args];
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_(id object, NSString *methodName) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, JreLoadStatic(OrgApacheCommonsLang3ArrayUtils, EMPTY_OBJECT_ARRAY), nil);
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_(id object, NSString *methodName, IOSObjectArray *args) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  IOSObjectArray *parameterTypes = OrgApacheCommonsLang3ClassUtils_toClassWithNSObjectArray_(args);
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(object, methodName, args, parameterTypes);
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeExactMethodWithId_withNSString_withNSObjectArray_withIOSClassArray_(id object, NSString *methodName, IOSObjectArray *args, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  parameterTypes = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithIOSClassArray_(parameterTypes);
  JavaLangReflectMethod *method = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_([nil_chk(object) java_getClass], methodName, parameterTypes);
  if (method == nil) {
    @throw new_JavaLangNoSuchMethodException_initWithNSString_(JreStrcat("$$$$", @"No such accessible method: ", methodName, @"() on object: ", [[object java_getClass] getName]));
  }
  return [method invokeWithId:object withNSObjectArray:args];
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeExactStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *args, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  parameterTypes = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithIOSClassArray_(parameterTypes);
  JavaLangReflectMethod *method = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
  if (method == nil) {
    @throw new_JavaLangNoSuchMethodException_initWithNSString_(JreStrcat("$$$$", @"No such accessible method: ", methodName, @"() on class: ", [((IOSClass *) nil_chk(cls)) getName]));
  }
  return [method invokeWithId:nil withNSObjectArray:args];
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeStaticMethodWithIOSClass_withNSString_withNSObjectArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *args) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  IOSObjectArray *parameterTypes = OrgApacheCommonsLang3ClassUtils_toClassWithNSObjectArray_(args);
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(cls, methodName, args, parameterTypes);
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *args, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  parameterTypes = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithIOSClassArray_(parameterTypes);
  JavaLangReflectMethod *method = OrgApacheCommonsLang3ReflectMethodUtils_getMatchingAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
  if (method == nil) {
    @throw new_JavaLangNoSuchMethodException_initWithNSString_(JreStrcat("$$$$", @"No such accessible method: ", methodName, @"() on class: ", [((IOSClass *) nil_chk(cls)) getName]));
  }
  return [method invokeWithId:nil withNSObjectArray:args];
}

id OrgApacheCommonsLang3ReflectMethodUtils_invokeExactStaticMethodWithIOSClass_withNSString_withNSObjectArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *args) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  args = OrgApacheCommonsLang3ArrayUtils_nullToEmptyWithNSObjectArray_(args);
  IOSObjectArray *parameterTypes = OrgApacheCommonsLang3ClassUtils_toClassWithNSObjectArray_(args);
  return OrgApacheCommonsLang3ReflectMethodUtils_invokeExactStaticMethodWithIOSClass_withNSString_withNSObjectArray_withIOSClassArray_(cls, methodName, args, parameterTypes);
}

JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  @try {
    return OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithJavaLangReflectMethod_([((IOSClass *) nil_chk(cls)) getMethod:methodName parameterTypes:parameterTypes]);
  }
  @catch (JavaLangNoSuchMethodException *e) {
    return nil;
  }
}

JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithJavaLangReflectMethod_(JavaLangReflectMethod *method) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  if (!OrgApacheCommonsLang3ReflectMemberUtils_isAccessibleWithJavaLangReflectMember_(method)) {
    return nil;
  }
  IOSClass *cls = [((JavaLangReflectMethod *) nil_chk(method)) getDeclaringClass];
  if (JavaLangReflectModifier_isPublicWithInt_([((IOSClass *) nil_chk(cls)) getModifiers])) {
    return method;
  }
  NSString *methodName = [method getName];
  IOSObjectArray *parameterTypes = [method getParameterTypes];
  method = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromInterfaceNestWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
  if (method == nil) {
    method = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromSuperclassWithIOSClass_withNSString_withIOSClassArray_(cls, methodName, parameterTypes);
  }
  return method;
}

JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromSuperclassWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  IOSClass *parentClass = [((IOSClass *) nil_chk(cls)) getSuperclass];
  while (parentClass != nil) {
    if (JavaLangReflectModifier_isPublicWithInt_([parentClass getModifiers])) {
      @try {
        return [parentClass getMethod:methodName parameterTypes:parameterTypes];
      }
      @catch (JavaLangNoSuchMethodException *e) {
        return nil;
      }
    }
    parentClass = [parentClass getSuperclass];
  }
  return nil;
}

JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromInterfaceNestWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  for (; cls != nil; cls = [cls getSuperclass]) {
    IOSObjectArray *interfaces = [cls getInterfaces];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(interfaces))->size_; i++) {
      if (!JavaLangReflectModifier_isPublicWithInt_([((IOSClass *) nil_chk(IOSObjectArray_Get(interfaces, i))) getModifiers])) {
        continue;
      }
      @try {
        return [((IOSClass *) nil_chk(IOSObjectArray_Get(interfaces, i))) getDeclaredMethod:methodName parameterTypes:parameterTypes];
      }
      @catch (JavaLangNoSuchMethodException *e) {
      }
      JavaLangReflectMethod *method = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodFromInterfaceNestWithIOSClass_withNSString_withIOSClassArray_(IOSObjectArray_Get(interfaces, i), methodName, parameterTypes);
      if (method != nil) {
        return method;
      }
    }
  }
  return nil;
}

JavaLangReflectMethod *OrgApacheCommonsLang3ReflectMethodUtils_getMatchingAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(IOSClass *cls, NSString *methodName, IOSObjectArray *parameterTypes) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  @try {
    JavaLangReflectMethod *method = [((IOSClass *) nil_chk(cls)) getMethod:methodName parameterTypes:parameterTypes];
    OrgApacheCommonsLang3ReflectMemberUtils_setAccessibleWorkaroundWithJavaLangReflectAccessibleObject_(method);
    return method;
  }
  @catch (JavaLangNoSuchMethodException *e) {
  }
  JavaLangReflectMethod *bestMatch = nil;
  IOSObjectArray *methods = [cls getMethods];
  {
    IOSObjectArray *a__ = methods;
    JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectMethod * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectMethod *method = *b__++;
      if ([((NSString *) nil_chk([((JavaLangReflectMethod *) nil_chk(method)) getName])) isEqual:methodName] && OrgApacheCommonsLang3ClassUtils_isAssignableWithIOSClassArray_withIOSClassArray_withBoolean_(parameterTypes, [method getParameterTypes], true)) {
        JavaLangReflectMethod *accessibleMethod = OrgApacheCommonsLang3ReflectMethodUtils_getAccessibleMethodWithJavaLangReflectMethod_(method);
        if (accessibleMethod != nil && (bestMatch == nil || OrgApacheCommonsLang3ReflectMemberUtils_compareParameterTypesWithIOSClassArray_withIOSClassArray_withIOSClassArray_([accessibleMethod getParameterTypes], [bestMatch getParameterTypes], parameterTypes) < 0)) {
          bestMatch = accessibleMethod;
        }
      }
    }
  }
  if (bestMatch != nil) {
    OrgApacheCommonsLang3ReflectMemberUtils_setAccessibleWorkaroundWithJavaLangReflectAccessibleObject_(bestMatch);
  }
  return bestMatch;
}

id<JavaUtilSet> OrgApacheCommonsLang3ReflectMethodUtils_getOverrideHierarchyWithJavaLangReflectMethod_withOrgApacheCommonsLang3ClassUtils_Interfaces_(JavaLangReflectMethod *method, OrgApacheCommonsLang3ClassUtils_Interfaces *interfacesBehavior) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  (void) OrgApacheCommonsLang3Validate_notNullWithId_(method);
  id<JavaUtilSet> result = new_JavaUtilLinkedHashSet_init();
  [result addWithId:method];
  IOSObjectArray *parameterTypes = [((JavaLangReflectMethod *) nil_chk(method)) getParameterTypes];
  IOSClass *declaringClass = [method getDeclaringClass];
  id<JavaUtilIterator> hierarchy = [((id<JavaLangIterable>) nil_chk(OrgApacheCommonsLang3ClassUtils_hierarchyWithIOSClass_withOrgApacheCommonsLang3ClassUtils_Interfaces_(declaringClass, interfacesBehavior))) iterator];
  (void) [((id<JavaUtilIterator>) nil_chk(hierarchy)) next];
  while ([hierarchy hasNext]) {
    {
      IOSClass *c = [hierarchy next];
      JavaLangReflectMethod *m = OrgApacheCommonsLang3ReflectMethodUtils_getMatchingAccessibleMethodWithIOSClass_withNSString_withIOSClassArray_(c, [method getName], parameterTypes);
      if (m == nil) {
        continue;
      }
      if (JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_([m getParameterTypes], parameterTypes)) {
        [result addWithId:m];
        continue;
      }
      id<JavaUtilMap> typeArguments = OrgApacheCommonsLang3ReflectTypeUtils_getTypeArgumentsWithJavaLangReflectType_withIOSClass_(declaringClass, [m getDeclaringClass]);
      for (jint i = 0; i < ((IOSObjectArray *) nil_chk(parameterTypes))->size_; i++) {
        id<JavaLangReflectType> childType = OrgApacheCommonsLang3ReflectTypeUtils_unrollVariablesWithJavaUtilMap_withJavaLangReflectType_(typeArguments, IOSObjectArray_Get(nil_chk([method getGenericParameterTypes]), i));
        id<JavaLangReflectType> parentType = OrgApacheCommonsLang3ReflectTypeUtils_unrollVariablesWithJavaUtilMap_withJavaLangReflectType_(typeArguments, IOSObjectArray_Get(nil_chk([m getGenericParameterTypes]), i));
        if (!OrgApacheCommonsLang3ReflectTypeUtils_equalsWithJavaLangReflectType_withJavaLangReflectType_(childType, parentType)) {
          goto continue_hierarchyTraversal;
        }
      }
      [result addWithId:m];
    }
    continue_hierarchyTraversal: ;
  }
  return result;
}

IOSObjectArray *OrgApacheCommonsLang3ReflectMethodUtils_getMethodsWithAnnotationWithIOSClass_withIOSClass_(IOSClass *cls, IOSClass *annotationCls) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  id<JavaUtilList> annotatedMethodsList = OrgApacheCommonsLang3ReflectMethodUtils_getMethodsListWithAnnotationWithIOSClass_withIOSClass_(cls, annotationCls);
  return [((id<JavaUtilList>) nil_chk(annotatedMethodsList)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[annotatedMethodsList size] type:JavaLangReflectMethod_class_()]];
}

id<JavaUtilList> OrgApacheCommonsLang3ReflectMethodUtils_getMethodsListWithAnnotationWithIOSClass_withIOSClass_(IOSClass *cls, IOSClass *annotationCls) {
  OrgApacheCommonsLang3ReflectMethodUtils_initialize();
  OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(cls != nil, @"The class must not be null", [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(annotationCls != nil, @"The annotation class must not be null", [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  IOSObjectArray *allMethods = [((IOSClass *) nil_chk(cls)) getMethods];
  id<JavaUtilList> annotatedMethods = new_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = allMethods;
    JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectMethod * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectMethod *method = *b__++;
      if ([((JavaLangReflectMethod *) nil_chk(method)) getAnnotationWithIOSClass:annotationCls] != nil) {
        [annotatedMethods addWithId:method];
      }
    }
  }
  return annotatedMethods;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ReflectMethodUtils)
