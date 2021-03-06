//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/TermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchTermQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchTermQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTermQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTermQuery

#if !defined (OrgApacheLuceneSearchTermQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermQuery || defined(INCLUDE_OrgApacheLuceneSearchTermQuery))
#define OrgApacheLuceneSearchTermQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchTermQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (OrgApacheLuceneIndexTerm *)getTerm;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchTermQuery *self, OrgApacheLuceneIndexTerm *t);

FOUNDATION_EXPORT OrgApacheLuceneSearchTermQuery *new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *t) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTermQuery *create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *t);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermQuery")
