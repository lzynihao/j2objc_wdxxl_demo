//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/LogByteSizeMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexLogByteSizeMergePolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexLogByteSizeMergePolicy

#if !defined (OrgApacheLuceneIndexLogByteSizeMergePolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy || defined(INCLUDE_OrgApacheLuceneIndexLogByteSizeMergePolicy))
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_

#define RESTRICT_OrgApacheLuceneIndexLogMergePolicy 1
#define INCLUDE_OrgApacheLuceneIndexLogMergePolicy 1
#include "org/apache/lucene/index/LogMergePolicy.h"

@class OrgApacheLuceneIndexSegmentInfo;

@interface OrgApacheLuceneIndexLogByteSizeMergePolicy : OrgApacheLuceneIndexLogMergePolicy

#pragma mark Public

- (instancetype)init;

- (jdouble)getMaxMergeMB;

- (jdouble)getMaxMergeMBForForcedMerge;

- (jdouble)getMaxMergeMBForOptimize;

- (jdouble)getMinMergeMB;

- (void)setMaxMergeMBWithDouble:(jdouble)mb;

- (void)setMaxMergeMBForForcedMergeWithDouble:(jdouble)mb;

- (void)setMaxMergeMBForOptimizeWithDouble:(jdouble)mb;

- (void)setMinMergeMBWithDouble:(jdouble)mb;

#pragma mark Protected

- (jlong)sizeWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLogByteSizeMergePolicy)

inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MIN_MERGE_MB();
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MIN_MERGE_MB 1.6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MIN_MERGE_MB, jdouble)

inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MAX_MERGE_MB();
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MAX_MERGE_MB 2048.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MAX_MERGE_MB, jdouble)

inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE();
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE 9.223372036854776E18
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE, jdouble)

FOUNDATION_EXPORT void OrgApacheLuceneIndexLogByteSizeMergePolicy_init(OrgApacheLuceneIndexLogByteSizeMergePolicy *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexLogByteSizeMergePolicy *new_OrgApacheLuceneIndexLogByteSizeMergePolicy_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexLogByteSizeMergePolicy *create_OrgApacheLuceneIndexLogByteSizeMergePolicy_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLogByteSizeMergePolicy)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy")
