//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/LockReleaseFailedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException")
#ifdef RESTRICT_OrgApacheLuceneStoreLockReleaseFailedException
#define INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLockReleaseFailedException

#if !defined (OrgApacheLuceneStoreLockReleaseFailedException_) && (INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException || defined(INCLUDE_OrgApacheLuceneStoreLockReleaseFailedException))
#define OrgApacheLuceneStoreLockReleaseFailedException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@interface OrgApacheLuceneStoreLockReleaseFailedException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockReleaseFailedException)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(OrgApacheLuceneStoreLockReleaseFailedException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *create_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockReleaseFailedException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException")
