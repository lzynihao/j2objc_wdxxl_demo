//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/text/translate/NumericEntityUnescaper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/util/Arrays.h"
#include "java/util/EnumSet.h"
#include "java/util/List.h"
#include "org/apache/commons/lang3/text/translate/CharSequenceTranslator.h"
#include "org/apache/commons/lang3/text/translate/NumericEntityUnescaper.h"

@interface OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper () {
 @public
  JavaUtilEnumSet *options_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper, options_, JavaUtilEnumSet *)

__attribute__((unused)) static void OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper

- (instancetype)initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray:(IOSObjectArray *)options {
  OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_(self, options);
  return self;
}

- (jboolean)isSetWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION:(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *)option {
  return options_ == nil ? false : [options_ containsWithId:option];
}

- (jint)translateWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                  withInt:(jint)index
                         withJavaIoWriter:(JavaIoWriter *)outArg {
  jint seqEnd = [((id<JavaLangCharSequence>) nil_chk(input)) java_length];
  if ([input charAtWithInt:index] == '&' && index < seqEnd - 2 && [input charAtWithInt:index + 1] == '#') {
    jint start = index + 2;
    jboolean isHex = false;
    jchar firstChar = [input charAtWithInt:start];
    if (firstChar == 'x' || firstChar == 'X') {
      start++;
      isHex = true;
      if (start == seqEnd) {
        return 0;
      }
    }
    jint end = start;
    while (end < seqEnd && (([input charAtWithInt:end] >= '0' && [input charAtWithInt:end] <= '9') || ([input charAtWithInt:end] >= 'a' && [input charAtWithInt:end] <= 'f') || ([input charAtWithInt:end] >= 'A' && [input charAtWithInt:end] <= 'F'))) {
      end++;
    }
    jboolean semiNext = end != seqEnd && [input charAtWithInt:end] == ';';
    if (!semiNext) {
      if ([self isSetWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION:JreLoadEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonRequired)]) {
        return 0;
      }
      else if ([self isSetWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION:JreLoadEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, errorIfNoSemiColon)]) {
        @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Semi-colon required at end of numeric entity");
      }
    }
    jint entityValue;
    @try {
      if (isHex) {
        entityValue = JavaLangInteger_parseIntWithNSString_withInt_([((id<JavaLangCharSequence>) nil_chk([input subSequenceFrom:start to:end])) description], 16);
      }
      else {
        entityValue = JavaLangInteger_parseIntWithNSString_withInt_([((id<JavaLangCharSequence>) nil_chk([input subSequenceFrom:start to:end])) description], 10);
      }
    }
    @catch (JavaLangNumberFormatException *nfe) {
      return 0;
    }
    if (entityValue > (jint) 0xFFFF) {
      IOSCharArray *chrs = JavaLangCharacter_toCharsWithInt_(entityValue);
      [((JavaIoWriter *) nil_chk(outArg)) writeWithInt:IOSCharArray_Get(nil_chk(chrs), 0)];
      [outArg writeWithInt:IOSCharArray_Get(chrs, 1)];
    }
    else {
      [((JavaIoWriter *) nil_chk(outArg)) writeWithInt:entityValue];
    }
    return 2 + end - start + (isHex ? 1 : 0) + (semiNext ? 1 : 0);
  }
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x81, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray:);
  methods[1].selector = @selector(isSetWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION:);
  methods[2].selector = @selector(translateWithJavaLangCharSequence:withInt:withJavaIoWriter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "options_", "LJavaUtilEnumSet;", .constantValue.asLong = 0, 0x12, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", "isSet", "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", "translate", "LJavaLangCharSequence;ILJavaIoWriter;", "LJavaIoIOException;", "Ljava/util/EnumSet<Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper = { "NumericEntityUnescaper", "org.apache.commons.lang3.text.translate", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, 2, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper;
}

@end

void OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper *self, IOSObjectArray *options) {
  OrgApacheCommonsLang3TextTranslateCharSequenceTranslator_init(self);
  if (((IOSObjectArray *) nil_chk(options))->size_ > 0) {
    self->options_ = JavaUtilEnumSet_copyOfWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(options));
  }
  else {
    self->options_ = JavaUtilEnumSet_copyOfWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonRequired) } count:1 type:OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_class_()]));
  }
}

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper *new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_(IOSObjectArray *options) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper, initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_, options)
}

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper *create_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_(IOSObjectArray *options) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper, initWithOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTIONArray_, options)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper)

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION)

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values_[3];

@implementation OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION

+ (IOSObjectArray *)values {
  return OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values();
}

+ (OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *)valueOfWithNSString:(NSString *)name {
  return OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "semiColonRequired", "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "semiColonOptional", "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "errorIfNoSemiColon", "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonRequired), &JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonOptional), &JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, errorIfNoSemiColon), "LOrgApacheCommonsLang3TextTranslateNumericEntityUnescaper;", "Ljava/lang/Enum<Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION = { "OPTION", "org.apache.commons.lang3.text.translate", ptrTable, methods, fields, 7, 0x4019, 2, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION class]) {
    JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonRequired) = new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(@"semiColonRequired", 0);
    JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, semiColonOptional) = new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(@"semiColonOptional", 1);
    JreEnum(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, errorIfNoSemiColon) = new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(@"errorIfNoSemiColon", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION)
  }
}

@end

void OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *new_OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values() {
  OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values_ count:3 type:OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_class_()];
}

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_valueOfWithNSString_(NSString *name) {
  OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *e = OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION *OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_fromOrdinal(NSUInteger ordinal) {
  OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextTranslateNumericEntityUnescaper_OPTION)