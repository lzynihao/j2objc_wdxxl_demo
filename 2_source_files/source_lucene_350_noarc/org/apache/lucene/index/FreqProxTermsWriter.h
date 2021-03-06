//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexFreqProxTermsWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFreqProxTermsWriter

#if !defined (OrgApacheLuceneIndexFreqProxTermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriter || defined(INCLUDE_OrgApacheLuceneIndexFreqProxTermsWriter))
#define OrgApacheLuceneIndexFreqProxTermsWriter_

#define RESTRICT_OrgApacheLuceneIndexTermsHashConsumer 1
#define INCLUDE_OrgApacheLuceneIndexTermsHashConsumer 1
#include "org/apache/lucene/index/TermsHashConsumer.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexFormatPostingsFieldsConsumer;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexTermsHashConsumerPerThread;
@class OrgApacheLuceneIndexTermsHashPerThread;
@class OrgApacheLuceneUtilUnicodeUtil_UTF8Result;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexFreqProxTermsWriter : OrgApacheLuceneIndexTermsHashConsumer {
 @public
  OrgApacheLuceneUtilUnicodeUtil_UTF8Result *termsUTF8_;
}

#pragma mark Public

- (OrgApacheLuceneIndexTermsHashConsumerPerThread *)addThreadWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)perThread;

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)threadsAndFields
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

#pragma mark Package-Private

- (instancetype)init;

- (void)abort;

- (void)appendPostingsWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
withOrgApacheLuceneIndexFreqProxTermsWriterPerFieldArray:(IOSObjectArray *)fields
withOrgApacheLuceneIndexFormatPostingsFieldsConsumer:(OrgApacheLuceneIndexFormatPostingsFieldsConsumer *)consumer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriter, termsUTF8_, OrgApacheLuceneUtilUnicodeUtil_UTF8Result *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxTermsWriter_init(OrgApacheLuceneIndexFreqProxTermsWriter *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriter *new_OrgApacheLuceneIndexFreqProxTermsWriter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriter *create_OrgApacheLuceneIndexFreqProxTermsWriter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxTermsWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriter")
