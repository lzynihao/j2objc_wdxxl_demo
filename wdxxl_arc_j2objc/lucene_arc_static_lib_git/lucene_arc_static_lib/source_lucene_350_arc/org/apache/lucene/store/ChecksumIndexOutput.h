//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/ChecksumIndexOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreChecksumIndexOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreChecksumIndexOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreChecksumIndexOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreChecksumIndexOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreChecksumIndexOutput

#if !defined (OrgApacheLuceneStoreChecksumIndexOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreChecksumIndexOutput || defined(INCLUDE_OrgApacheLuceneStoreChecksumIndexOutput))
#define OrgApacheLuceneStoreChecksumIndexOutput_

#define RESTRICT_OrgApacheLuceneStoreIndexOutput 1
#define INCLUDE_OrgApacheLuceneStoreIndexOutput 1
#include "org/apache/lucene/store/IndexOutput.h"

@class IOSByteArray;
@protocol JavaUtilZipChecksum;

@interface OrgApacheLuceneStoreChecksumIndexOutput : OrgApacheLuceneStoreIndexOutput {
 @public
  OrgApacheLuceneStoreIndexOutput *main_;
  id<JavaUtilZipChecksum> digest_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)main;

- (void)close;

- (void)finishCommit;

- (void)flush;

- (jlong)getChecksum;

- (jlong)getFilePointer;

- (jlong)length;

- (void)prepareCommit;

- (void)seekWithLong:(jlong)pos;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreChecksumIndexOutput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreChecksumIndexOutput, main_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreChecksumIndexOutput, digest_, id<JavaUtilZipChecksum>)

FOUNDATION_EXPORT void OrgApacheLuceneStoreChecksumIndexOutput_initWithOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreChecksumIndexOutput *self, OrgApacheLuceneStoreIndexOutput *main);

FOUNDATION_EXPORT OrgApacheLuceneStoreChecksumIndexOutput *new_OrgApacheLuceneStoreChecksumIndexOutput_initWithOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreIndexOutput *main) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreChecksumIndexOutput *create_OrgApacheLuceneStoreChecksumIndexOutput_initWithOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreIndexOutput *main);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreChecksumIndexOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreChecksumIndexOutput")
