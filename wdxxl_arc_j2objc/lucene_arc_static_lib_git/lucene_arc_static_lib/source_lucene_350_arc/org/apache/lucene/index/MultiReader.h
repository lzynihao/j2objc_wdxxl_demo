//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/MultiReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMultiReader")
#ifdef RESTRICT_OrgApacheLuceneIndexMultiReader
#define INCLUDE_ALL_OrgApacheLuceneIndexMultiReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMultiReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMultiReader

#if !defined (OrgApacheLuceneIndexMultiReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiReader || defined(INCLUDE_OrgApacheLuceneIndexMultiReader))
#define OrgApacheLuceneIndexMultiReader_

#define RESTRICT_OrgApacheLuceneIndexIndexReader 1
#define INCLUDE_OrgApacheLuceneIndexIndexReader 1
#include "org/apache/lucene/index/IndexReader.h"

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneIndexIndexReader_FieldOption;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermEnum;
@class OrgApacheLuceneIndexTermVectorMapper;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneDocumentFieldSelector;
@protocol OrgApacheLuceneIndexIndexReader_ReaderFinishedListener;
@protocol OrgApacheLuceneIndexTermDocs;
@protocol OrgApacheLuceneIndexTermFreqVector;
@protocol OrgApacheLuceneIndexTermPositions;

@interface OrgApacheLuceneIndexMultiReader : OrgApacheLuceneIndexIndexReader < NSCopying > {
 @public
  IOSObjectArray *subReaders_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders;

- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders
                                                 withBoolean:(jboolean)closeSubReaders;

- (void)addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener;

- (id)java_clone;

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t;

- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)n
            withOrgApacheLuceneDocumentFieldSelector:(id<OrgApacheLuceneDocumentFieldSelector>)fieldSelector;

- (id<JavaUtilCollection>)getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:(OrgApacheLuceneIndexIndexReader_FieldOption *)fieldNames;

- (IOSObjectArray *)getSequentialSubReaders;

- (id<OrgApacheLuceneIndexTermFreqVector>)getTermFreqVectorWithInt:(jint)n
                                                      withNSString:(NSString *)field;

- (void)getTermFreqVectorWithInt:(jint)docNumber
                    withNSString:(NSString *)field
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper;

- (void)getTermFreqVectorWithInt:(jint)docNumber
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper;

- (IOSObjectArray *)getTermFreqVectorsWithInt:(jint)n;

- (jlong)getVersion;

- (jboolean)hasDeletions;

- (jboolean)hasNormsWithNSString:(NSString *)field;

- (jboolean)isCurrent;

- (jboolean)isDeletedWithInt:(jint)n;

- (jboolean)isOptimized;

- (jint)maxDoc;

- (IOSByteArray *)normsWithNSString:(NSString *)field;

- (void)normsWithNSString:(NSString *)field
            withByteArray:(IOSByteArray *)result
                  withInt:(jint)offset;

- (jint)numDocs;

- (void)removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener;

- (id<OrgApacheLuceneIndexTermDocs>)termDocs;

- (id<OrgApacheLuceneIndexTermDocs>)termDocsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (id<OrgApacheLuceneIndexTermPositions>)termPositions;

- (OrgApacheLuceneIndexTermEnum *)terms;

- (OrgApacheLuceneIndexTermEnum *)termsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

#pragma mark Protected

- (void)doClose;

- (void)doCommitWithJavaUtilMap:(id<JavaUtilMap>)commitUserData;

- (void)doDeleteWithInt:(jint)n;

- (OrgApacheLuceneIndexIndexReader *)doOpenIfChanged;

- (OrgApacheLuceneIndexIndexReader *)doOpenIfChangedWithBoolean:(jboolean)doClone;

- (void)doSetNormWithInt:(jint)n
            withNSString:(NSString *)field
                withByte:(jbyte)value;

- (void)doUndeleteAll;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiReader, subReaders_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiReader *new_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(IOSObjectArray *subReaders) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiReader *create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(IOSObjectArray *subReaders);

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders, jboolean closeSubReaders);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiReader *new_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(IOSObjectArray *subReaders, jboolean closeSubReaders) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiReader *create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(IOSObjectArray *subReaders, jboolean closeSubReaders);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMultiReader")
