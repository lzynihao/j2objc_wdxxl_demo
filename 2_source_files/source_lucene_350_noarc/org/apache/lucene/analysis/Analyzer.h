//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/Analyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisAnalyzer

#if !defined (OrgApacheLuceneAnalysisAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisAnalyzer))
#define OrgApacheLuceneAnalysisAnalyzer_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol OrgApacheLuceneDocumentFieldable;

@interface OrgApacheLuceneAnalysisAnalyzer : NSObject < JavaIoCloseable >

#pragma mark Public

- (void)close;

- (jint)getOffsetGapWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field;

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisTokenStream *)reusableTokenStreamWithNSString:(NSString *)fieldName
                                                       withJavaIoReader:(JavaIoReader *)reader;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader;

#pragma mark Protected

- (instancetype)init;

- (id)getPreviousTokenStream;

- (void)setPreviousTokenStreamWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisAnalyzer_init(OrgApacheLuceneAnalysisAnalyzer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisAnalyzer")
