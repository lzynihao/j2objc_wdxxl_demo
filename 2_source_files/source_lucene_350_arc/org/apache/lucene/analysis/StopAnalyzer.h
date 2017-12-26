//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/StopAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStopAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStopAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStopAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStopAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStopAnalyzer

#if !defined (OrgApacheLuceneAnalysisStopAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStopAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisStopAnalyzer))
#define OrgApacheLuceneAnalysisStopAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/StopwordAnalyzerBase.h"

@class JavaIoFile;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents;
@class OrgApacheLuceneUtilVersion;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisStopAnalyzer : OrgApacheLuceneAnalysisStopwordAnalyzerBase

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                    withJavaIoFile:(JavaIoFile *)stopwordsFile;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)stopwords;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                   withJavaUtilSet:(id<JavaUtilSet>)stopWords;

#pragma mark Protected

- (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName
                                                                                   withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStopAnalyzer)

inline id<JavaUtilSet> OrgApacheLuceneAnalysisStopAnalyzer_get_ENGLISH_STOP_WORDS_SET();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilSet> OrgApacheLuceneAnalysisStopAnalyzer_ENGLISH_STOP_WORDS_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStopAnalyzer, ENGLISH_STOP_WORDS_SET, id<JavaUtilSet>)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisStopAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *new_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *create_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneAnalysisStopAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *new_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *create_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneAnalysisStopAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwordsFile);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *new_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwordsFile) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *create_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwordsFile);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisStopAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *new_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStopAnalyzer *create_OrgApacheLuceneAnalysisStopAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStopAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStopAnalyzer")
