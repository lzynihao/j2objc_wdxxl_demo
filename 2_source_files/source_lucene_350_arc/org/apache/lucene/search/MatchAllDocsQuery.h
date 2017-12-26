//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/MatchAllDocsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchMatchAllDocsQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchMatchAllDocsQuery

#if !defined (OrgApacheLuceneSearchMatchAllDocsQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery || defined(INCLUDE_OrgApacheLuceneSearchMatchAllDocsQuery))
#define OrgApacheLuceneSearchMatchAllDocsQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchMatchAllDocsQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)normsField;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMatchAllDocsQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMatchAllDocsQuery_init(OrgApacheLuceneSearchMatchAllDocsQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *new_OrgApacheLuceneSearchMatchAllDocsQuery_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *create_OrgApacheLuceneSearchMatchAllDocsQuery_init();

FOUNDATION_EXPORT void OrgApacheLuceneSearchMatchAllDocsQuery_initWithNSString_(OrgApacheLuceneSearchMatchAllDocsQuery *self, NSString *normsField);

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *new_OrgApacheLuceneSearchMatchAllDocsQuery_initWithNSString_(NSString *normsField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMatchAllDocsQuery *create_OrgApacheLuceneSearchMatchAllDocsQuery_initWithNSString_(NSString *normsField);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMatchAllDocsQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchMatchAllDocsQuery")
