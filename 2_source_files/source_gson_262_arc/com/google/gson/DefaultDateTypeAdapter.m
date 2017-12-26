//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/DefaultDateTypeAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/DefaultDateTypeAdapter.h"
#include "com/google/gson/JsonDeserializationContext.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonParseException.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/JsonSerializationContext.h"
#include "com/google/gson/JsonSyntaxException.h"
#include "com/google/gson/internal/bind/util/ISO8601Utils.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/reflect/Type.h"
#include "java/sql/Date.h"
#include "java/sql/Timestamp.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/ParsePosition.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"

@interface ComGoogleGsonDefaultDateTypeAdapter () {
 @public
  JavaTextDateFormat *enUsFormat_;
  JavaTextDateFormat *localFormat_;
}

- (JavaUtilDate *)deserializeToDateWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonDefaultDateTypeAdapter, enUsFormat_, JavaTextDateFormat *)
J2OBJC_FIELD_SETTER(ComGoogleGsonDefaultDateTypeAdapter, localFormat_, JavaTextDateFormat *)

__attribute__((unused)) static JavaUtilDate *ComGoogleGsonDefaultDateTypeAdapter_deserializeToDateWithComGoogleGsonJsonElement_(ComGoogleGsonDefaultDateTypeAdapter *self, ComGoogleGsonJsonElement *json);

@implementation ComGoogleGsonDefaultDateTypeAdapter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonDefaultDateTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)datePattern {
  ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(self, datePattern);
  return self;
}

- (instancetype)initWithInt:(jint)style {
  ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(self, style);
  return self;
}

- (instancetype)initWithInt:(jint)dateStyle
                    withInt:(jint)timeStyle {
  ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(self, dateStyle, timeStyle);
  return self;
}

- (instancetype)initWithJavaTextDateFormat:(JavaTextDateFormat *)enUsFormat
                    withJavaTextDateFormat:(JavaTextDateFormat *)localFormat {
  ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(self, enUsFormat, localFormat);
  return self;
}

- (ComGoogleGsonJsonElement *)serializeWithId:(JavaUtilDate *)src
                      withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
    withComGoogleGsonJsonSerializationContext:(id<ComGoogleGsonJsonSerializationContext>)context {
  @synchronized(localFormat_) {
    NSString *dateFormatAsString = [((JavaTextDateFormat *) nil_chk(enUsFormat_)) formatWithJavaUtilDate:src];
    return new_ComGoogleGsonJsonPrimitive_initWithNSString_(dateFormatAsString);
  }
}

- (JavaUtilDate *)deserializeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json
                                  withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT
              withComGoogleGsonJsonDeserializationContext:(id<ComGoogleGsonJsonDeserializationContext>)context {
  if (!([json isKindOfClass:[ComGoogleGsonJsonPrimitive class]])) {
    @throw new_ComGoogleGsonJsonParseException_initWithNSString_(@"The date should be a string value");
  }
  JavaUtilDate *date = ComGoogleGsonDefaultDateTypeAdapter_deserializeToDateWithComGoogleGsonJsonElement_(self, json);
  if (typeOfT == (id) JavaUtilDate_class_()) {
    return date;
  }
  else if (typeOfT == (id) JavaSqlTimestamp_class_()) {
    return new_JavaSqlTimestamp_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else if (typeOfT == (id) JavaSqlDate_class_()) {
    return new_JavaSqlDate_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("@$@", [self java_getClass], @" cannot deserialize to ", typeOfT));
  }
}

- (JavaUtilDate *)deserializeToDateWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json {
  return ComGoogleGsonDefaultDateTypeAdapter_deserializeToDateWithComGoogleGsonJsonElement_(self, json);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
  (void) [sb appendWithNSString:[ComGoogleGsonDefaultDateTypeAdapter_class_() getSimpleName]];
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithChar:'('])) appendWithNSString:[[((JavaTextDateFormat *) nil_chk(localFormat_)) java_getClass] getSimpleName]])) appendWithChar:')'];
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 3, -1, -1, -1, -1 },
    { NULL, "LComGoogleGsonJsonElement;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 6, 7, 8, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithInt:);
  methods[3].selector = @selector(initWithInt:withInt:);
  methods[4].selector = @selector(initWithJavaTextDateFormat:withJavaTextDateFormat:);
  methods[5].selector = @selector(serializeWithId:withJavaLangReflectType:withComGoogleGsonJsonSerializationContext:);
  methods[6].selector = @selector(deserializeWithComGoogleGsonJsonElement:withJavaLangReflectType:withComGoogleGsonJsonDeserializationContext:);
  methods[7].selector = @selector(deserializeToDateWithComGoogleGsonJsonElement:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "enUsFormat_", "LJavaTextDateFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "localFormat_", "LJavaTextDateFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "I", "II", "LJavaTextDateFormat;LJavaTextDateFormat;", "serialize", "LJavaUtilDate;LJavaLangReflectType;LComGoogleGsonJsonSerializationContext;", "deserialize", "LComGoogleGsonJsonElement;LJavaLangReflectType;LComGoogleGsonJsonDeserializationContext;", "LComGoogleGsonJsonParseException;", "deserializeToDate", "LComGoogleGsonJsonElement;", "toString", "Ljava/lang/Object;Lcom/google/gson/JsonSerializer<Ljava/util/Date;>;Lcom/google/gson/JsonDeserializer<Ljava/util/Date;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonDefaultDateTypeAdapter = { "DefaultDateTypeAdapter", "com.google.gson", ptrTable, methods, fields, 7, 0x10, 9, 2, -1, -1, -1, 12, -1 };
  return &_ComGoogleGsonDefaultDateTypeAdapter;
}

@end

void ComGoogleGsonDefaultDateTypeAdapter_init(ComGoogleGsonDefaultDateTypeAdapter *self) {
  ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(self, JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT, JreLoadStatic(JavaUtilLocale, US)), JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT));
}

ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultDateTypeAdapter, init)
}

ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultDateTypeAdapter, init)
}

void ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(ComGoogleGsonDefaultDateTypeAdapter *self, NSString *datePattern) {
  ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(self, new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(datePattern, JreLoadStatic(JavaUtilLocale, US)), new_JavaTextSimpleDateFormat_initWithNSString_(datePattern));
}

ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(NSString *datePattern) {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithNSString_, datePattern)
}

ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(NSString *datePattern) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithNSString_, datePattern)
}

void ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(ComGoogleGsonDefaultDateTypeAdapter *self, jint style) {
  ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(self, JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(style, JreLoadStatic(JavaUtilLocale, US)), JavaTextDateFormat_getDateInstanceWithInt_(style));
}

ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(jint style) {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithInt_, style)
}

ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(jint style) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithInt_, style)
}

void ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(ComGoogleGsonDefaultDateTypeAdapter *self, jint dateStyle, jint timeStyle) {
  ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(self, JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(dateStyle, timeStyle, JreLoadStatic(JavaUtilLocale, US)), JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(dateStyle, timeStyle));
}

ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

void ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(ComGoogleGsonDefaultDateTypeAdapter *self, JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat) {
  NSObject_init(self);
  self->enUsFormat_ = enUsFormat;
  self->localFormat_ = localFormat;
}

ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat) {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithJavaTextDateFormat_withJavaTextDateFormat_, enUsFormat, localFormat)
}

ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultDateTypeAdapter, initWithJavaTextDateFormat_withJavaTextDateFormat_, enUsFormat, localFormat)
}

JavaUtilDate *ComGoogleGsonDefaultDateTypeAdapter_deserializeToDateWithComGoogleGsonJsonElement_(ComGoogleGsonDefaultDateTypeAdapter *self, ComGoogleGsonJsonElement *json) {
  @synchronized(self->localFormat_) {
    @try {
      return [((JavaTextDateFormat *) nil_chk(self->localFormat_)) parseWithNSString:[((ComGoogleGsonJsonElement *) nil_chk(json)) getAsString]];
    }
    @catch (JavaTextParseException *ignored) {
    }
    @try {
      return [((JavaTextDateFormat *) nil_chk(self->enUsFormat_)) parseWithNSString:[json getAsString]];
    }
    @catch (JavaTextParseException *ignored) {
    }
    @try {
      return ComGoogleGsonInternalBindUtilISO8601Utils_parseWithNSString_withJavaTextParsePosition_([json getAsString], new_JavaTextParsePosition_initWithInt_(0));
    }
    @catch (JavaTextParseException *e) {
      @throw new_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_([json getAsString], e);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonDefaultDateTypeAdapter)