//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/ComplexExplanation.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "org/apache/lucene/search/ComplexExplanation.h"
#include "org/apache/lucene/search/Explanation.h"

@interface OrgApacheLuceneSearchComplexExplanation () {
 @public
  JavaLangBoolean *match_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchComplexExplanation, match_, JavaLangBoolean *)

@implementation OrgApacheLuceneSearchComplexExplanation

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchComplexExplanation_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithBoolean:(jboolean)match
                      withFloat:(jfloat)value
                   withNSString:(NSString *)description_ {
  OrgApacheLuceneSearchComplexExplanation_initWithBoolean_withFloat_withNSString_(self, match, value, description_);
  return self;
}

- (JavaLangBoolean *)getMatch {
  return match_;
}

- (void)setMatchWithJavaLangBoolean:(JavaLangBoolean *)match {
  self->match_ = match;
}

- (jboolean)isMatch {
  JavaLangBoolean *m = [self getMatch];
  return (nil != m ? [m booleanValue] : [super isMatch]);
}

- (NSString *)getSummary {
  if (nil == [self getMatch]) return [super getSummary];
  return JreStrcat("F$$$", [self getValue], @" = ", ([self isMatch] ? @"(MATCH) " : @"(NON-MATCH) "), [self getDescription]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaLangBoolean;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithBoolean:withFloat:withNSString:);
  methods[2].selector = @selector(getMatch);
  methods[3].selector = @selector(setMatchWithJavaLangBoolean:);
  methods[4].selector = @selector(isMatch);
  methods[5].selector = @selector(getSummary);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "match_", "LJavaLangBoolean;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ZFLNSString;", "setMatch", "LJavaLangBoolean;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchComplexExplanation = { "ComplexExplanation", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchComplexExplanation;
}

@end

void OrgApacheLuceneSearchComplexExplanation_init(OrgApacheLuceneSearchComplexExplanation *self) {
  OrgApacheLuceneSearchExplanation_init(self);
}

OrgApacheLuceneSearchComplexExplanation *new_OrgApacheLuceneSearchComplexExplanation_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchComplexExplanation, init)
}

OrgApacheLuceneSearchComplexExplanation *create_OrgApacheLuceneSearchComplexExplanation_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchComplexExplanation, init)
}

void OrgApacheLuceneSearchComplexExplanation_initWithBoolean_withFloat_withNSString_(OrgApacheLuceneSearchComplexExplanation *self, jboolean match, jfloat value, NSString *description_) {
  OrgApacheLuceneSearchExplanation_initWithFloat_withNSString_(self, value, description_);
  self->match_ = JavaLangBoolean_valueOfWithBoolean_(match);
}

OrgApacheLuceneSearchComplexExplanation *new_OrgApacheLuceneSearchComplexExplanation_initWithBoolean_withFloat_withNSString_(jboolean match, jfloat value, NSString *description_) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchComplexExplanation, initWithBoolean_withFloat_withNSString_, match, value, description_)
}

OrgApacheLuceneSearchComplexExplanation *create_OrgApacheLuceneSearchComplexExplanation_initWithBoolean_withFloat_withNSString_(jboolean match, jfloat value, NSString *description_) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchComplexExplanation, initWithBoolean_withFloat_withNSString_, match, value, description_)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchComplexExplanation)
