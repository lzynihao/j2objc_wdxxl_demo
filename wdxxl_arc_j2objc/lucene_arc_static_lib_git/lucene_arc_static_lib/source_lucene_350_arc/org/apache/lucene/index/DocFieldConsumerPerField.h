//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/DocFieldConsumerPerField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocFieldConsumerPerField")
#ifdef RESTRICT_OrgApacheLuceneIndexDocFieldConsumerPerField
#define INCLUDE_ALL_OrgApacheLuceneIndexDocFieldConsumerPerField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocFieldConsumerPerField 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocFieldConsumerPerField

#if !defined (OrgApacheLuceneIndexDocFieldConsumerPerField_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocFieldConsumerPerField || defined(INCLUDE_OrgApacheLuceneIndexDocFieldConsumerPerField))
#define OrgApacheLuceneIndexDocFieldConsumerPerField_

@class IOSObjectArray;

@interface OrgApacheLuceneIndexDocFieldConsumerPerField : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (void)abort;

- (void)processFieldsWithOrgApacheLuceneDocumentFieldableArray:(IOSObjectArray *)fields
                                                       withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocFieldConsumerPerField)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocFieldConsumerPerField_init(OrgApacheLuceneIndexDocFieldConsumerPerField *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocFieldConsumerPerField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocFieldConsumerPerField")
