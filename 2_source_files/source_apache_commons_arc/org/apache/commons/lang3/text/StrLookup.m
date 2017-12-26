//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/text/StrLookup.java
//

#include "J2ObjC_source.h"
#include "java/lang/SecurityException.h"
#include "java/lang/System.h"
#include "java/util/Enumeration.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "org/apache/commons/lang3/text/StrLookup.h"

@interface OrgApacheCommonsLang3TextStrLookup ()

+ (JavaUtilProperties *)copyPropertiesWithJavaUtilProperties:(JavaUtilProperties *)input OBJC_METHOD_FAMILY_NONE;

@end

inline OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_get_NONE_LOOKUP();
static OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_NONE_LOOKUP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TextStrLookup, NONE_LOOKUP, OrgApacheCommonsLang3TextStrLookup *)

__attribute__((unused)) static JavaUtilProperties *OrgApacheCommonsLang3TextStrLookup_copyPropertiesWithJavaUtilProperties_(JavaUtilProperties *input);

@interface OrgApacheCommonsLang3TextStrLookup_MapStrLookup () {
 @public
  id<JavaUtilMap> map_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3TextStrLookup_MapStrLookup, map_, id<JavaUtilMap>)

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsLang3TextStrLookup)

@implementation OrgApacheCommonsLang3TextStrLookup

+ (OrgApacheCommonsLang3TextStrLookup *)noneLookup {
  return OrgApacheCommonsLang3TextStrLookup_noneLookup();
}

+ (JavaUtilProperties *)copyPropertiesWithJavaUtilProperties:(JavaUtilProperties *)input {
  return OrgApacheCommonsLang3TextStrLookup_copyPropertiesWithJavaUtilProperties_(input);
}

+ (OrgApacheCommonsLang3TextStrLookup *)systemPropertiesLookup {
  return OrgApacheCommonsLang3TextStrLookup_systemPropertiesLookup();
}

+ (OrgApacheCommonsLang3TextStrLookup *)mapLookupWithJavaUtilMap:(id<JavaUtilMap>)map {
  return OrgApacheCommonsLang3TextStrLookup_mapLookupWithJavaUtilMap_(map);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TextStrLookup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)lookupWithNSString:(NSString *)key {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheCommonsLang3TextStrLookup;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0xa, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TextStrLookup;", 0x9, -1, -1, -1, 3, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TextStrLookup;", 0x9, 4, 5, -1, 6, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(noneLookup);
  methods[1].selector = @selector(copyPropertiesWithJavaUtilProperties:);
  methods[2].selector = @selector(systemPropertiesLookup);
  methods[3].selector = @selector(mapLookupWithJavaUtilMap:);
  methods[4].selector = @selector(init);
  methods[5].selector = @selector(lookupWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NONE_LOOKUP", "LOrgApacheCommonsLang3TextStrLookup;", .constantValue.asLong = 0, 0x1a, -1, 9, 10, -1 },
  };
  static const void *ptrTable[] = { "()Lorg/apache/commons/lang3/text/StrLookup<*>;", "copyProperties", "LJavaUtilProperties;", "()Lorg/apache/commons/lang3/text/StrLookup<Ljava/lang/String;>;", "mapLookup", "LJavaUtilMap;", "<V:Ljava/lang/Object;>(Ljava/util/Map<Ljava/lang/String;TV;>;)Lorg/apache/commons/lang3/text/StrLookup<TV;>;", "lookup", "LNSString;", &OrgApacheCommonsLang3TextStrLookup_NONE_LOOKUP, "Lorg/apache/commons/lang3/text/StrLookup<Ljava/lang/String;>;", "LOrgApacheCommonsLang3TextStrLookup_MapStrLookup;", "<V:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextStrLookup = { "StrLookup", "org.apache.commons.lang3.text", ptrTable, methods, fields, 7, 0x401, 6, 1, -1, 11, -1, 12, -1 };
  return &_OrgApacheCommonsLang3TextStrLookup;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsLang3TextStrLookup class]) {
    OrgApacheCommonsLang3TextStrLookup_NONE_LOOKUP = new_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(nil);
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsLang3TextStrLookup)
  }
}

@end

OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_noneLookup() {
  OrgApacheCommonsLang3TextStrLookup_initialize();
  return OrgApacheCommonsLang3TextStrLookup_NONE_LOOKUP;
}

JavaUtilProperties *OrgApacheCommonsLang3TextStrLookup_copyPropertiesWithJavaUtilProperties_(JavaUtilProperties *input) {
  OrgApacheCommonsLang3TextStrLookup_initialize();
  if (input == nil) {
    return nil;
  }
  JavaUtilProperties *output = new_JavaUtilProperties_init();
  id<JavaUtilEnumeration> propertyNames = [input propertyNames];
  while ([((id<JavaUtilEnumeration>) nil_chk(propertyNames)) hasMoreElements]) {
    NSString *propertyName = [propertyNames nextElement];
    (void) [output setPropertyWithNSString:propertyName withNSString:[input getPropertyWithNSString:propertyName]];
  }
  return output;
}

OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_systemPropertiesLookup() {
  OrgApacheCommonsLang3TextStrLookup_initialize();
  JavaUtilProperties *systemProperties = nil;
  @try {
    systemProperties = JavaLangSystem_getProperties();
  }
  @catch (JavaLangSecurityException *ex) {
  }
  JavaUtilProperties *properties = OrgApacheCommonsLang3TextStrLookup_copyPropertiesWithJavaUtilProperties_(systemProperties);
  id<JavaUtilMap> propertiesMap = properties;
  return new_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(propertiesMap);
}

OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_mapLookupWithJavaUtilMap_(id<JavaUtilMap> map) {
  OrgApacheCommonsLang3TextStrLookup_initialize();
  return new_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(map);
}

void OrgApacheCommonsLang3TextStrLookup_init(OrgApacheCommonsLang3TextStrLookup *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextStrLookup)

@implementation OrgApacheCommonsLang3TextStrLookup_MapStrLookup

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(self, map);
  return self;
}

- (NSString *)lookupWithNSString:(NSString *)key {
  if (map_ == nil) {
    return nil;
  }
  id obj = [map_ getWithId:key];
  if (obj == nil) {
    return nil;
  }
  return [obj description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(lookupWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "map_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;TV;>;)V", "lookup", "LNSString;", "Ljava/util/Map<Ljava/lang/String;TV;>;", "LOrgApacheCommonsLang3TextStrLookup;", "<V:Ljava/lang/Object;>Lorg/apache/commons/lang3/text/StrLookup<TV;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextStrLookup_MapStrLookup = { "MapStrLookup", "org.apache.commons.lang3.text", ptrTable, methods, fields, 7, 0x8, 2, 1, 5, -1, -1, 6, -1 };
  return &_OrgApacheCommonsLang3TextStrLookup_MapStrLookup;
}

@end

void OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(OrgApacheCommonsLang3TextStrLookup_MapStrLookup *self, id<JavaUtilMap> map) {
  OrgApacheCommonsLang3TextStrLookup_init(self);
  self->map_ = map;
}

OrgApacheCommonsLang3TextStrLookup_MapStrLookup *new_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(id<JavaUtilMap> map) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TextStrLookup_MapStrLookup, initWithJavaUtilMap_, map)
}

OrgApacheCommonsLang3TextStrLookup_MapStrLookup *create_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(id<JavaUtilMap> map) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TextStrLookup_MapStrLookup, initWithJavaUtilMap_, map)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextStrLookup_MapStrLookup)
