//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/spans/NearSpansOrdered.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansNearSpansOrdered")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansNearSpansOrdered
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansNearSpansOrdered 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansNearSpansOrdered 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansNearSpansOrdered

#if !defined (OrgApacheLuceneSearchSpansNearSpansOrdered_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansNearSpansOrdered || defined(INCLUDE_OrgApacheLuceneSearchSpansNearSpansOrdered))
#define OrgApacheLuceneSearchSpansNearSpansOrdered_

#define RESTRICT_OrgApacheLuceneSearchSpansSpans 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpans 1
#include "org/apache/lucene/search/spans/Spans.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchSpansSpanNearQuery;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchSpansNearSpansOrdered : OrgApacheLuceneSearchSpansSpans

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)spanNearQuery
                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)spanNearQuery
                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                    withBoolean:(jboolean)collectPayloads;

- (jint)doc;

- (jint)end;

- (id<JavaUtilCollection>)getPayload;

- (IOSObjectArray *)getSubSpans;

- (jboolean)isPayloadAvailable;

- (jboolean)next;

- (jboolean)skipToWithInt:(jint)target;

- (jint)start;

- (NSString *)description;

#pragma mark Package-Private

+ (jboolean)docSpansOrderedWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans1
                           withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans2;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansNearSpansOrdered)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansNearSpansOrdered *create_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansNearSpansOrdered *create_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads);

FOUNDATION_EXPORT jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *spans1, OrgApacheLuceneSearchSpansSpans *spans2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansNearSpansOrdered)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansNearSpansOrdered")
