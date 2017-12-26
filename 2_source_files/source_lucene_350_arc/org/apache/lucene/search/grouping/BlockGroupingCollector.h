//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/BlockGroupingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingBlockGroupingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingBlockGroupingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingBlockGroupingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingBlockGroupingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingBlockGroupingCollector

#if !defined (OrgApacheLuceneSearchGroupingBlockGroupingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingBlockGroupingCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingBlockGroupingCollector))
#define OrgApacheLuceneSearchGroupingBlockGroupingCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchGroupingTopGroups;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchSort;

@interface OrgApacheLuceneSearchGroupingBlockGroupingCollector : OrgApacheLuceneSearchCollector

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                                          withInt:(jint)topNGroups
                                      withBoolean:(jboolean)needsScores
                  withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)lastDocPerGroup;

- (jboolean)acceptsDocsOutOfOrder;

- (void)collectWithInt:(jint)doc;

- (OrgApacheLuceneSearchGroupingTopGroups *)getTopGroupsWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                                                                              withInt:(jint)groupOffset
                                                                              withInt:(jint)withinGroupOffset
                                                                              withInt:(jint)maxDocsPerGroup
                                                                          withBoolean:(jboolean)fillSortFields;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingBlockGroupingCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *self, OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingBlockGroupingCollector *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingBlockGroupingCollector *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingBlockGroupingCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingBlockGroupingCollector")