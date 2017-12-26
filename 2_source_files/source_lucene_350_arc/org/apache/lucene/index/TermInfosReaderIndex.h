//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermInfosReaderIndex.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReaderIndex")
#ifdef RESTRICT_OrgApacheLuceneIndexTermInfosReaderIndex
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReaderIndex 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReaderIndex 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermInfosReaderIndex

#if !defined (OrgApacheLuceneIndexTermInfosReaderIndex_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReaderIndex || defined(INCLUDE_OrgApacheLuceneIndexTermInfosReaderIndex))
#define OrgApacheLuceneIndexTermInfosReaderIndex_

@class OrgApacheLuceneIndexSegmentTermEnum;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexTermInfosReaderIndex : NSObject

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentTermEnum:(OrgApacheLuceneIndexSegmentTermEnum *)indexEnum
                                                    withInt:(jint)indexDivisor
                                                   withLong:(jlong)tiiFileLength
                                                    withInt:(jint)totalIndexInterval;

- (jint)compareToWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termBytesRef
                                      withInt:(jint)termIndex;

- (jint)getIndexOffsetWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                   withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termBytesRef;

- (OrgApacheLuceneIndexTerm *)getTermWithInt:(jint)termIndex;

- (jint)length;

- (void)seekEnumWithOrgApacheLuceneIndexSegmentTermEnum:(OrgApacheLuceneIndexSegmentTermEnum *)enumerator
                                                withInt:(jint)indexOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermInfosReaderIndex)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermInfosReaderIndex_initWithOrgApacheLuceneIndexSegmentTermEnum_withInt_withLong_withInt_(OrgApacheLuceneIndexTermInfosReaderIndex *self, OrgApacheLuceneIndexSegmentTermEnum *indexEnum, jint indexDivisor, jlong tiiFileLength, jint totalIndexInterval);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosReaderIndex *new_OrgApacheLuceneIndexTermInfosReaderIndex_initWithOrgApacheLuceneIndexSegmentTermEnum_withInt_withLong_withInt_(OrgApacheLuceneIndexSegmentTermEnum *indexEnum, jint indexDivisor, jlong tiiFileLength, jint totalIndexInterval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosReaderIndex *create_OrgApacheLuceneIndexTermInfosReaderIndex_initWithOrgApacheLuceneIndexSegmentTermEnum_withInt_withLong_withInt_(OrgApacheLuceneIndexSegmentTermEnum *indexEnum, jint indexDivisor, jlong tiiFileLength, jint totalIndexInterval);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermInfosReaderIndex)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReaderIndex")
