//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/JsonNull.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonNull.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleGsonJsonNull__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonJsonNull)

ComGoogleGsonJsonNull *ComGoogleGsonJsonNull_INSTANCE;

@implementation ComGoogleGsonJsonNull

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonJsonNull_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleGsonJsonNull *)deepCopy {
  return ComGoogleGsonJsonNull_INSTANCE;
}

- (NSUInteger)hash {
  return ((jint) [ComGoogleGsonJsonNull_class_() hash]);
}

- (jboolean)isEqual:(id)other {
  return self == other || [other isKindOfClass:[ComGoogleGsonJsonNull class]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, 0, -1 },
    { NULL, "LComGoogleGsonJsonNull;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(deepCopy);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LComGoogleGsonJsonNull;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&ComGoogleGsonJsonNull__Annotations$0, "hashCode", "equals", "LNSObject;", &ComGoogleGsonJsonNull_INSTANCE };
  static const J2ObjcClassInfo _ComGoogleGsonJsonNull = { "JsonNull", "com.google.gson", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonJsonNull;
}

+ (void)initialize {
  if (self == [ComGoogleGsonJsonNull class]) {
    ComGoogleGsonJsonNull_INSTANCE = new_ComGoogleGsonJsonNull_init();
    J2OBJC_SET_INITIALIZED(ComGoogleGsonJsonNull)
  }
}

@end

void ComGoogleGsonJsonNull_init(ComGoogleGsonJsonNull *self) {
  ComGoogleGsonJsonElement_init(self);
}

ComGoogleGsonJsonNull *new_ComGoogleGsonJsonNull_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonJsonNull, init)
}

ComGoogleGsonJsonNull *create_ComGoogleGsonJsonNull_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonJsonNull, init)
}

IOSObjectArray *ComGoogleGsonJsonNull__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonNull)
