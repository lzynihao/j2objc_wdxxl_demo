//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/document/DateField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Long.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Date.h"
#include "org/apache/lucene/document/DateField.h"

@interface OrgApacheLuceneDocumentDateField ()

- (instancetype)init;

@end

inline jint OrgApacheLuceneDocumentDateField_get_DATE_LEN(void);
inline jint OrgApacheLuceneDocumentDateField_set_DATE_LEN(jint value);
inline jint *OrgApacheLuceneDocumentDateField_getRef_DATE_LEN(void);
static jint OrgApacheLuceneDocumentDateField_DATE_LEN;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneDocumentDateField, DATE_LEN, jint)

__attribute__((unused)) static void OrgApacheLuceneDocumentDateField_init(OrgApacheLuceneDocumentDateField *self);

__attribute__((unused)) static OrgApacheLuceneDocumentDateField *new_OrgApacheLuceneDocumentDateField_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentDateField *create_OrgApacheLuceneDocumentDateField_init(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneDocumentDateField__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentDateField)

@implementation OrgApacheLuceneDocumentDateField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentDateField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)MIN_DATE_STRING {
  return OrgApacheLuceneDocumentDateField_MIN_DATE_STRING();
}

+ (NSString *)MAX_DATE_STRING {
  return OrgApacheLuceneDocumentDateField_MAX_DATE_STRING();
}

+ (NSString *)dateToStringWithJavaUtilDate:(JavaUtilDate *)date {
  return OrgApacheLuceneDocumentDateField_dateToStringWithJavaUtilDate_(date);
}

+ (NSString *)timeToStringWithLong:(jlong)time {
  return OrgApacheLuceneDocumentDateField_timeToStringWithLong_(time);
}

+ (jlong)stringToTimeWithNSString:(NSString *)s {
  return OrgApacheLuceneDocumentDateField_stringToTimeWithNSString_(s);
}

+ (JavaUtilDate *)stringToDateWithNSString:(NSString *)s {
  return OrgApacheLuceneDocumentDateField_stringToDateWithNSString_(s);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x9, 6, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(MIN_DATE_STRING);
  methods[2].selector = @selector(MAX_DATE_STRING);
  methods[3].selector = @selector(dateToStringWithJavaUtilDate:);
  methods[4].selector = @selector(timeToStringWithLong:);
  methods[5].selector = @selector(stringToTimeWithNSString:);
  methods[6].selector = @selector(stringToDateWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DATE_LEN", "I", .constantValue.asLong = 0, 0xa, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "dateToString", "LJavaUtilDate;", "timeToString", "J", "stringToTime", "LNSString;", "stringToDate", &OrgApacheLuceneDocumentDateField_DATE_LEN, (void *)&OrgApacheLuceneDocumentDateField__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDateField = { "DateField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, 8 };
  return &_OrgApacheLuceneDocumentDateField;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentDateField class]) {
    OrgApacheLuceneDocumentDateField_DATE_LEN = [((NSString *) nil_chk(JavaLangLong_toStringWithLong_withInt_(1000LL * 365 * 24 * 60 * 60 * 1000, JavaLangCharacter_MAX_RADIX))) java_length];
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentDateField)
  }
}

@end

void OrgApacheLuceneDocumentDateField_init(OrgApacheLuceneDocumentDateField *self) {
  NSObject_init(self);
}

OrgApacheLuceneDocumentDateField *new_OrgApacheLuceneDocumentDateField_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDateField, init)
}

OrgApacheLuceneDocumentDateField *create_OrgApacheLuceneDocumentDateField_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDateField, init)
}

NSString *OrgApacheLuceneDocumentDateField_MIN_DATE_STRING() {
  OrgApacheLuceneDocumentDateField_initialize();
  return OrgApacheLuceneDocumentDateField_timeToStringWithLong_(0);
}

NSString *OrgApacheLuceneDocumentDateField_MAX_DATE_STRING() {
  OrgApacheLuceneDocumentDateField_initialize();
  IOSCharArray *buffer = [IOSCharArray arrayWithLength:OrgApacheLuceneDocumentDateField_DATE_LEN];
  jchar c = JavaLangCharacter_forDigitWithInt_withInt_(JavaLangCharacter_MAX_RADIX - 1, JavaLangCharacter_MAX_RADIX);
  for (jint i = 0; i < OrgApacheLuceneDocumentDateField_DATE_LEN; i++) *IOSCharArray_GetRef(buffer, i) = c;
  return [NSString java_stringWithCharacters:buffer];
}

NSString *OrgApacheLuceneDocumentDateField_dateToStringWithJavaUtilDate_(JavaUtilDate *date) {
  OrgApacheLuceneDocumentDateField_initialize();
  return OrgApacheLuceneDocumentDateField_timeToStringWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
}

NSString *OrgApacheLuceneDocumentDateField_timeToStringWithLong_(jlong time) {
  OrgApacheLuceneDocumentDateField_initialize();
  if (time < 0) @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$J$", @"time '", time, @"' is too early, must be >= 0"));
  NSString *s = JavaLangLong_toStringWithLong_withInt_(time, JavaLangCharacter_MAX_RADIX);
  if ([((NSString *) nil_chk(s)) java_length] > OrgApacheLuceneDocumentDateField_DATE_LEN) @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$J$I", @"time '", time, @"' is too late, length of string representation must be <= ", OrgApacheLuceneDocumentDateField_DATE_LEN));
  if ([s java_length] < OrgApacheLuceneDocumentDateField_DATE_LEN) {
    JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithNSString_(s);
    while ([sb java_length] < OrgApacheLuceneDocumentDateField_DATE_LEN) [sb insertWithInt:0 withInt:0];
    s = [sb description];
  }
  return s;
}

jlong OrgApacheLuceneDocumentDateField_stringToTimeWithNSString_(NSString *s) {
  OrgApacheLuceneDocumentDateField_initialize();
  return JavaLangLong_parseLongWithNSString_withInt_(s, JavaLangCharacter_MAX_RADIX);
}

JavaUtilDate *OrgApacheLuceneDocumentDateField_stringToDateWithNSString_(NSString *s) {
  OrgApacheLuceneDocumentDateField_initialize();
  return create_JavaUtilDate_initWithLong_(OrgApacheLuceneDocumentDateField_stringToTimeWithNSString_(s));
}

IOSObjectArray *OrgApacheLuceneDocumentDateField__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDateField)
