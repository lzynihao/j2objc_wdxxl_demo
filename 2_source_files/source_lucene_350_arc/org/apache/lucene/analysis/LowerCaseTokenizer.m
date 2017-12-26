//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/LowerCaseTokenizer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Character.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/LetterTokenizer.h"
#include "org/apache/lucene/analysis/LowerCaseTokenizer.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/Version.h"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$2();

@implementation OrgApacheLuceneAnalysisLowerCaseTokenizer

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, matchVersion, inArg);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
            withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                  withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, matchVersion, source, inArg);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
withOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                  withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, matchVersion, factory, inArg);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithJavaIoReader_(self, inArg);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, source, inArg);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, factory, inArg);
  return self;
}

- (jint)normalizeWithInt:(jint)c {
  return JavaLangCharacter_toLowerCaseWithInt_(c);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, 4, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, 6, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, 8, -1 },
    { NULL, "I", 0x4, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilVersion:withJavaIoReader:);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilVersion:withOrgApacheLuceneUtilAttributeSource:withJavaIoReader:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilVersion:withOrgApacheLuceneUtilAttributeSource_AttributeFactory:withJavaIoReader:);
  methods[3].selector = @selector(initWithJavaIoReader:);
  methods[4].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:withJavaIoReader:);
  methods[5].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:withJavaIoReader:);
  methods[6].selector = @selector(normalizeWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilVersion;LJavaIoReader;", "LOrgApacheLuceneUtilVersion;LOrgApacheLuceneUtilAttributeSource;LJavaIoReader;", "LOrgApacheLuceneUtilVersion;LOrgApacheLuceneUtilAttributeSource_AttributeFactory;LJavaIoReader;", "LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$0, "LOrgApacheLuceneUtilAttributeSource;LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$1, "LOrgApacheLuceneUtilAttributeSource_AttributeFactory;LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$2, "normalize", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLowerCaseTokenizer = { "LowerCaseTokenizer", "org.apache.lucene.analysis", ptrTable, methods, NULL, 7, 0x11, 7, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisLowerCaseTokenizer;
}

@end

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, matchVersion, inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, inArg)
}

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, matchVersion, source, inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_, matchVersion, source, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_, matchVersion, source, inArg)
}

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, matchVersion, factory, inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_, matchVersion, factory, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_, matchVersion, factory, inArg)
}

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithJavaIoReader_(JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithJavaIoReader_, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithJavaIoReader_(JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithJavaIoReader_, inArg)
}

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), source, inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_, source, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_, source, inArg)
}

void OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisLowerCaseTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisLetterTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), factory, inArg);
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *new_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_, factory, inArg)
}

OrgApacheLuceneAnalysisLowerCaseTokenizer *create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLowerCaseTokenizer, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_, factory, inArg)
}

IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisLowerCaseTokenizer__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLowerCaseTokenizer)
