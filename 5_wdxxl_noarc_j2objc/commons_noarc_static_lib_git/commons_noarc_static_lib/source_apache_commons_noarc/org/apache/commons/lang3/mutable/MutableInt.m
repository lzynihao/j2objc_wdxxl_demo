//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/mutable/MutableInt.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/commons/lang3/math/NumberUtils.h"
#include "org/apache/commons/lang3/mutable/MutableInt.h"

@interface OrgApacheCommonsLang3MutableMutableInt () {
 @public
  jint value_;
}

@end

inline jlong OrgApacheCommonsLang3MutableMutableInt_get_serialVersionUID(void);
#define OrgApacheCommonsLang3MutableMutableInt_serialVersionUID 512176391864LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3MutableMutableInt, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3MutableMutableInt

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3MutableMutableInt_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)initWithInt:(jint)value {
  OrgApacheCommonsLang3MutableMutableInt_initWithInt_(self, value);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSNumber:(NSNumber *)value {
  OrgApacheCommonsLang3MutableMutableInt_initWithNSNumber_(self, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)value {
  OrgApacheCommonsLang3MutableMutableInt_initWithNSString_(self, value);
  return self;
}

- (JavaLangInteger *)getValue {
  return JavaLangInteger_valueOfWithInt_(self->value_);
}

- (void)setValueWithInt:(jint)value {
  self->value_ = value;
}

- (void)setValueWithId:(NSNumber *)value {
  self->value_ = [((NSNumber *) nil_chk(value)) intValue];
}

- (void)increment {
  value_++;
}

- (void)decrement {
  value_--;
}

- (void)addWithInt:(jint)operand {
  self->value_ += operand;
}

- (void)addWithNSNumber:(NSNumber *)operand {
  self->value_ += [((NSNumber *) nil_chk(operand)) intValue];
}

- (void)subtractWithInt:(jint)operand {
  self->value_ -= operand;
}

- (void)subtractWithNSNumber:(NSNumber *)operand {
  self->value_ -= [((NSNumber *) nil_chk(operand)) intValue];
}

- (jint)intValue {
  return value_;
}

- (jlong)longLongValue {
  return value_;
}

- (jfloat)floatValue {
  return value_;
}

- (jdouble)doubleValue {
  return value_;
}

- (JavaLangInteger *)toInteger {
  return JavaLangInteger_valueOfWithInt_([self intValue]);
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgApacheCommonsLang3MutableMutableInt class]]) {
    return value_ == [((OrgApacheCommonsLang3MutableMutableInt *) nil_chk(((OrgApacheCommonsLang3MutableMutableInt *) cast_chk(obj, [OrgApacheCommonsLang3MutableMutableInt class])))) intValue];
  }
  return false;
}

- (NSUInteger)hash {
  return value_;
}

- (jint)compareToWithId:(OrgApacheCommonsLang3MutableMutableInt *)other {
  cast_chk(other, [OrgApacheCommonsLang3MutableMutableInt class]);
  return OrgApacheCommonsLang3MathNumberUtils_compareWithInt_withInt_(self->value_, ((OrgApacheCommonsLang3MutableMutableInt *) nil_chk(other))->value_);
}

- (NSString *)description {
  return NSString_java_valueOfInt_(value_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithNSNumber:);
  methods[3].selector = @selector(initWithNSString:);
  methods[4].selector = @selector(getValue);
  methods[5].selector = @selector(setValueWithInt:);
  methods[6].selector = @selector(setValueWithId:);
  methods[7].selector = @selector(increment);
  methods[8].selector = @selector(decrement);
  methods[9].selector = @selector(addWithInt:);
  methods[10].selector = @selector(addWithNSNumber:);
  methods[11].selector = @selector(subtractWithInt:);
  methods[12].selector = @selector(subtractWithNSNumber:);
  methods[13].selector = @selector(intValue);
  methods[14].selector = @selector(longLongValue);
  methods[15].selector = @selector(floatValue);
  methods[16].selector = @selector(doubleValue);
  methods[17].selector = @selector(toInteger);
  methods[18].selector = @selector(isEqual:);
  methods[19].selector = @selector(hash);
  methods[20].selector = @selector(compareToWithId:);
  methods[21].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3MutableMutableInt_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "value_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LNSNumber;", "LNSString;", "LJavaLangNumberFormatException;", "setValue", "add", "subtract", "longValue", "equals", "LNSObject;", "hashCode", "compareTo", "LOrgApacheCommonsLang3MutableMutableInt;", "toString", "Ljava/lang/Number;Ljava/lang/Comparable<Lorg/apache/commons/lang3/mutable/MutableInt;>;Lorg/apache/commons/lang3/mutable/Mutable<Ljava/lang/Number;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3MutableMutableInt = { "MutableInt", "org.apache.commons.lang3.mutable", ptrTable, methods, fields, 7, 0x1, 22, 2, -1, -1, -1, 14, -1 };
  return &_OrgApacheCommonsLang3MutableMutableInt;
}

@end

void OrgApacheCommonsLang3MutableMutableInt_init(OrgApacheCommonsLang3MutableMutableInt *self) {
  NSNumber_init(self);
}

OrgApacheCommonsLang3MutableMutableInt *new_OrgApacheCommonsLang3MutableMutableInt_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableInt, init)
}

OrgApacheCommonsLang3MutableMutableInt *create_OrgApacheCommonsLang3MutableMutableInt_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableInt, init)
}

void OrgApacheCommonsLang3MutableMutableInt_initWithInt_(OrgApacheCommonsLang3MutableMutableInt *self, jint value) {
  NSNumber_init(self);
  self->value_ = value;
}

OrgApacheCommonsLang3MutableMutableInt *new_OrgApacheCommonsLang3MutableMutableInt_initWithInt_(jint value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithInt_, value)
}

OrgApacheCommonsLang3MutableMutableInt *create_OrgApacheCommonsLang3MutableMutableInt_initWithInt_(jint value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithInt_, value)
}

void OrgApacheCommonsLang3MutableMutableInt_initWithNSNumber_(OrgApacheCommonsLang3MutableMutableInt *self, NSNumber *value) {
  NSNumber_init(self);
  self->value_ = [((NSNumber *) nil_chk(value)) intValue];
}

OrgApacheCommonsLang3MutableMutableInt *new_OrgApacheCommonsLang3MutableMutableInt_initWithNSNumber_(NSNumber *value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithNSNumber_, value)
}

OrgApacheCommonsLang3MutableMutableInt *create_OrgApacheCommonsLang3MutableMutableInt_initWithNSNumber_(NSNumber *value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithNSNumber_, value)
}

void OrgApacheCommonsLang3MutableMutableInt_initWithNSString_(OrgApacheCommonsLang3MutableMutableInt *self, NSString *value) {
  NSNumber_init(self);
  self->value_ = JavaLangInteger_parseIntWithNSString_(value);
}

OrgApacheCommonsLang3MutableMutableInt *new_OrgApacheCommonsLang3MutableMutableInt_initWithNSString_(NSString *value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithNSString_, value)
}

OrgApacheCommonsLang3MutableMutableInt *create_OrgApacheCommonsLang3MutableMutableInt_initWithNSString_(NSString *value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableInt, initWithNSString_, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3MutableMutableInt)