//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/language/Metaphone.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Locale.h"
#include "org/apache/commons/codec/EncoderException.h"
#include "org/apache/commons/codec/language/Metaphone.h"

@interface OrgApacheCommonsCodecLanguageMetaphone () {
 @public
  jint maxCodeLen_;
}

- (jboolean)isVowelWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                     withInt:(jint)index;

- (jboolean)isPreviousCharWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                            withInt:(jint)index
                                           withChar:(jchar)c;

- (jboolean)isNextCharWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                        withInt:(jint)index
                                       withChar:(jchar)c;

- (jboolean)regionMatchWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                         withInt:(jint)index
                                    withNSString:(NSString *)test;

- (jboolean)isLastCharWithInt:(jint)wdsz
                      withInt:(jint)n;

@end

inline NSString *OrgApacheCommonsCodecLanguageMetaphone_get_VOWELS();
static NSString *OrgApacheCommonsCodecLanguageMetaphone_VOWELS = @"AEIOU";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecLanguageMetaphone, VOWELS, NSString *)

inline NSString *OrgApacheCommonsCodecLanguageMetaphone_get_FRONTV();
static NSString *OrgApacheCommonsCodecLanguageMetaphone_FRONTV = @"EIY";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecLanguageMetaphone, FRONTV, NSString *)

inline NSString *OrgApacheCommonsCodecLanguageMetaphone_get_VARSON();
static NSString *OrgApacheCommonsCodecLanguageMetaphone_VARSON = @"CSPTG";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecLanguageMetaphone, VARSON, NSString *)

__attribute__((unused)) static jboolean OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index);

__attribute__((unused)) static jboolean OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, jchar c);

__attribute__((unused)) static jboolean OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, jchar c);

__attribute__((unused)) static jboolean OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, NSString *test);

__attribute__((unused)) static jboolean OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(OrgApacheCommonsCodecLanguageMetaphone *self, jint wdsz, jint n);

@implementation OrgApacheCommonsCodecLanguageMetaphone

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecLanguageMetaphone_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)metaphoneWithNSString:(NSString *)txt {
  jboolean hard = false;
  jint txtLength;
  if (txt == nil || (txtLength = [txt java_length]) == 0) {
    return @"";
  }
  if (txtLength == 1) {
    return [txt java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
  }
  IOSCharArray *inwd = [((NSString *) nil_chk([txt java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)])) java_toCharArray];
  JavaLangStringBuilder *local = new_JavaLangStringBuilder_initWithInt_(40);
  JavaLangStringBuilder *code = new_JavaLangStringBuilder_initWithInt_(10);
  switch (IOSCharArray_Get(nil_chk(inwd), 0)) {
    case 'K':
    case 'G':
    case 'P':
    if (IOSCharArray_Get(inwd, 1) == 'N') {
      (void) [local appendWithCharArray:inwd withInt:1 withInt:inwd->size_ - 1];
    }
    else {
      (void) [local appendWithCharArray:inwd];
    }
    break;
    case 'A':
    if (IOSCharArray_Get(inwd, 1) == 'E') {
      (void) [local appendWithCharArray:inwd withInt:1 withInt:inwd->size_ - 1];
    }
    else {
      (void) [local appendWithCharArray:inwd];
    }
    break;
    case 'W':
    if (IOSCharArray_Get(inwd, 1) == 'R') {
      (void) [local appendWithCharArray:inwd withInt:1 withInt:inwd->size_ - 1];
      break;
    }
    if (IOSCharArray_Get(inwd, 1) == 'H') {
      (void) [local appendWithCharArray:inwd withInt:1 withInt:inwd->size_ - 1];
      [local setCharAtWithInt:0 withChar:'W'];
    }
    else {
      (void) [local appendWithCharArray:inwd];
    }
    break;
    case 'X':
    *IOSCharArray_GetRef(inwd, 0) = 'S';
    (void) [local appendWithCharArray:inwd];
    break;
    default:
    (void) [local appendWithCharArray:inwd];
  }
  jint wdsz = [local java_length];
  jint n = 0;
  while ([code java_length] < [self getMaxCodeLen] && n < wdsz) {
    jchar symb = [local charAtWithInt:n];
    if (symb != 'C' && OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, symb)) {
      n++;
    }
    else {
      switch (symb) {
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
        if (n == 0) {
          (void) [code appendWithChar:symb];
        }
        break;
        case 'B':
        if (OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'M') && OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n)) {
          break;
        }
        (void) [code appendWithChar:symb];
        break;
        case 'C':
        if (OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'S') && !OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n) && [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_FRONTV)) java_indexOf:[local charAtWithInt:n + 1]] >= 0) {
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"CIA")) {
          (void) [code appendWithChar:'X'];
          break;
        }
        if (!OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n) && [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_FRONTV)) java_indexOf:[local charAtWithInt:n + 1]] >= 0) {
          (void) [code appendWithChar:'S'];
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'S') && OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'H')) {
          (void) [code appendWithChar:'K'];
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'H')) {
          if (n == 0 && wdsz >= 3 && OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(self, local, 2)) {
            (void) [code appendWithChar:'K'];
          }
          else {
            (void) [code appendWithChar:'X'];
          }
        }
        else {
          (void) [code appendWithChar:'K'];
        }
        break;
        case 'D':
        if (!OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n + 1) && OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'G') && [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_FRONTV)) java_indexOf:[local charAtWithInt:n + 2]] >= 0) {
          (void) [code appendWithChar:'J'];
          n += 2;
        }
        else {
          (void) [code appendWithChar:'T'];
        }
        break;
        case 'G':
        if (OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n + 1) && OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'H')) {
          break;
        }
        if (!OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n + 1) && OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'H') && !OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(self, local, n + 2)) {
          break;
        }
        if (n > 0 && (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"GN") || OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"GNED"))) {
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'G')) {
          hard = true;
        }
        else {
          hard = false;
        }
        if (!OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n) && [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_FRONTV)) java_indexOf:[local charAtWithInt:n + 1]] >= 0 && !hard) {
          (void) [code appendWithChar:'J'];
        }
        else {
          (void) [code appendWithChar:'K'];
        }
        break;
        case 'H':
        if (OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n)) {
          break;
        }
        if (n > 0 && [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_VARSON)) java_indexOf:[local charAtWithInt:n - 1]] >= 0) {
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(self, local, n + 1)) {
          (void) [code appendWithChar:'H'];
        }
        break;
        case 'F':
        case 'J':
        case 'L':
        case 'M':
        case 'N':
        case 'R':
        (void) [code appendWithChar:symb];
        break;
        case 'K':
        if (n > 0) {
          if (!OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'C')) {
            (void) [code appendWithChar:symb];
          }
        }
        else {
          (void) [code appendWithChar:symb];
        }
        break;
        case 'P':
        if (OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, local, n, 'H')) {
          (void) [code appendWithChar:'F'];
        }
        else {
          (void) [code appendWithChar:symb];
        }
        break;
        case 'Q':
        (void) [code appendWithChar:'K'];
        break;
        case 'S':
        if (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"SH") || OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"SIO") || OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"SIA")) {
          (void) [code appendWithChar:'X'];
        }
        else {
          (void) [code appendWithChar:'S'];
        }
        break;
        case 'T':
        if (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"TIA") || OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"TIO")) {
          (void) [code appendWithChar:'X'];
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"TCH")) {
          break;
        }
        if (OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, local, n, @"TH")) {
          (void) [code appendWithChar:'0'];
        }
        else {
          (void) [code appendWithChar:'T'];
        }
        break;
        case 'V':
        (void) [code appendWithChar:'F'];
        break;
        case 'W':
        case 'Y':
        if (!OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n) && OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(self, local, n + 1)) {
          (void) [code appendWithChar:symb];
        }
        break;
        case 'X':
        (void) [code appendWithChar:'K'];
        (void) [code appendWithChar:'S'];
        break;
        case 'Z':
        (void) [code appendWithChar:'S'];
        break;
        default:
        break;
      }
      n++;
    }
    if ([code java_length] > [self getMaxCodeLen]) {
      [code setLengthWithInt:[self getMaxCodeLen]];
    }
  }
  return [code description];
}

- (jboolean)isVowelWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                     withInt:(jint)index {
  return OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(self, string, index);
}

- (jboolean)isPreviousCharWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                            withInt:(jint)index
                                           withChar:(jchar)c {
  return OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(self, string, index, c);
}

- (jboolean)isNextCharWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                        withInt:(jint)index
                                       withChar:(jchar)c {
  return OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(self, string, index, c);
}

- (jboolean)regionMatchWithJavaLangStringBuilder:(JavaLangStringBuilder *)string
                                         withInt:(jint)index
                                    withNSString:(NSString *)test {
  return OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(self, string, index, test);
}

- (jboolean)isLastCharWithInt:(jint)wdsz
                      withInt:(jint)n {
  return OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(self, wdsz, n);
}

- (id)encodeWithId:(id)obj {
  if (!([obj isKindOfClass:[NSString class]])) {
    @throw new_OrgApacheCommonsCodecEncoderException_initWithNSString_(@"Parameter supplied to Metaphone encode is not of type java.lang.String");
  }
  return [self metaphoneWithNSString:(NSString *) cast_chk(obj, [NSString class])];
}

- (NSString *)encodeWithNSString:(NSString *)str {
  return [self metaphoneWithNSString:str];
}

- (jboolean)isMetaphoneEqualWithNSString:(NSString *)str1
                            withNSString:(NSString *)str2 {
  return [((NSString *) nil_chk([self metaphoneWithNSString:str1])) isEqual:[self metaphoneWithNSString:str2]];
}

- (jint)getMaxCodeLen {
  return self->maxCodeLen_;
}

- (void)setMaxCodeLenWithInt:(jint)maxCodeLen {
  self->maxCodeLen_ = maxCodeLen;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 6, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, 12, 13, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(metaphoneWithNSString:);
  methods[2].selector = @selector(isVowelWithJavaLangStringBuilder:withInt:);
  methods[3].selector = @selector(isPreviousCharWithJavaLangStringBuilder:withInt:withChar:);
  methods[4].selector = @selector(isNextCharWithJavaLangStringBuilder:withInt:withChar:);
  methods[5].selector = @selector(regionMatchWithJavaLangStringBuilder:withInt:withNSString:);
  methods[6].selector = @selector(isLastCharWithInt:withInt:);
  methods[7].selector = @selector(encodeWithId:);
  methods[8].selector = @selector(encodeWithNSString:);
  methods[9].selector = @selector(isMetaphoneEqualWithNSString:withNSString:);
  methods[10].selector = @selector(getMaxCodeLen);
  methods[11].selector = @selector(setMaxCodeLenWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "VOWELS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "FRONTV", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "VARSON", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "maxCodeLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "metaphone", "LNSString;", "isVowel", "LJavaLangStringBuilder;I", "isPreviousChar", "LJavaLangStringBuilder;IC", "isNextChar", "regionMatch", "LJavaLangStringBuilder;ILNSString;", "isLastChar", "II", "encode", "LNSObject;", "LOrgApacheCommonsCodecEncoderException;", "isMetaphoneEqual", "LNSString;LNSString;", "setMaxCodeLen", "I", &OrgApacheCommonsCodecLanguageMetaphone_VOWELS, &OrgApacheCommonsCodecLanguageMetaphone_FRONTV, &OrgApacheCommonsCodecLanguageMetaphone_VARSON };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecLanguageMetaphone = { "Metaphone", "org.apache.commons.codec.language", ptrTable, methods, fields, 7, 0x1, 12, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecLanguageMetaphone;
}

@end

void OrgApacheCommonsCodecLanguageMetaphone_init(OrgApacheCommonsCodecLanguageMetaphone *self) {
  NSObject_init(self);
  self->maxCodeLen_ = 4;
}

OrgApacheCommonsCodecLanguageMetaphone *new_OrgApacheCommonsCodecLanguageMetaphone_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecLanguageMetaphone, init)
}

OrgApacheCommonsCodecLanguageMetaphone *create_OrgApacheCommonsCodecLanguageMetaphone_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecLanguageMetaphone, init)
}

jboolean OrgApacheCommonsCodecLanguageMetaphone_isVowelWithJavaLangStringBuilder_withInt_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index) {
  return [((NSString *) nil_chk(OrgApacheCommonsCodecLanguageMetaphone_VOWELS)) java_indexOf:[((JavaLangStringBuilder *) nil_chk(string)) charAtWithInt:index]] >= 0;
}

jboolean OrgApacheCommonsCodecLanguageMetaphone_isPreviousCharWithJavaLangStringBuilder_withInt_withChar_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, jchar c) {
  jboolean matches = false;
  if (index > 0 && index < [((JavaLangStringBuilder *) nil_chk(string)) java_length]) {
    matches = ([((JavaLangStringBuilder *) nil_chk(string)) charAtWithInt:index - 1] == c);
  }
  return matches;
}

jboolean OrgApacheCommonsCodecLanguageMetaphone_isNextCharWithJavaLangStringBuilder_withInt_withChar_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, jchar c) {
  jboolean matches = false;
  if (index >= 0 && index < [((JavaLangStringBuilder *) nil_chk(string)) java_length] - 1) {
    matches = ([((JavaLangStringBuilder *) nil_chk(string)) charAtWithInt:index + 1] == c);
  }
  return matches;
}

jboolean OrgApacheCommonsCodecLanguageMetaphone_regionMatchWithJavaLangStringBuilder_withInt_withNSString_(OrgApacheCommonsCodecLanguageMetaphone *self, JavaLangStringBuilder *string, jint index, NSString *test) {
  jboolean matches = false;
  if (index >= 0 && index + [((NSString *) nil_chk(test)) java_length] - 1 < [((JavaLangStringBuilder *) nil_chk(string)) java_length]) {
    NSString *substring = [((JavaLangStringBuilder *) nil_chk(string)) substringWithInt:index withInt:index + [((NSString *) nil_chk(test)) java_length]];
    matches = [((NSString *) nil_chk(substring)) isEqual:test];
  }
  return matches;
}

jboolean OrgApacheCommonsCodecLanguageMetaphone_isLastCharWithInt_withInt_(OrgApacheCommonsCodecLanguageMetaphone *self, jint wdsz, jint n) {
  return n + 1 == wdsz;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecLanguageMetaphone)
