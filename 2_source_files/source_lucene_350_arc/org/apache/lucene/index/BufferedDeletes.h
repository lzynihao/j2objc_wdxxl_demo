//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/BufferedDeletes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexBufferedDeletes")
#ifdef RESTRICT_OrgApacheLuceneIndexBufferedDeletes
#define INCLUDE_ALL_OrgApacheLuceneIndexBufferedDeletes 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexBufferedDeletes 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexBufferedDeletes

#if !defined (OrgApacheLuceneIndexBufferedDeletes_) && (INCLUDE_ALL_OrgApacheLuceneIndexBufferedDeletes || defined(INCLUDE_OrgApacheLuceneIndexBufferedDeletes))
#define OrgApacheLuceneIndexBufferedDeletes_

@class JavaLangInteger;
@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicLong;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexBufferedDeletes : NSObject {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *numTermDeletes_;
  id<JavaUtilMap> terms_;
  id<JavaUtilMap> queries_;
  id<JavaUtilList> docIDs_;
  JavaUtilConcurrentAtomicAtomicLong *bytesUsed_;
  jlong gen_;
}

#pragma mark Public

- (void)addDocIDWithInt:(jint)docID;

- (void)addQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                       withInt:(jint)docIDUpto;

- (void)addTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                    withInt:(jint)docIDUpto;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (jboolean)any;

- (void)clear;

- (void)clearDocIDs;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexBufferedDeletes)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedDeletes, numTermDeletes_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedDeletes, terms_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedDeletes, queries_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedDeletes, docIDs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedDeletes, bytesUsed_, JavaUtilConcurrentAtomicAtomicLong *)

inline jint OrgApacheLuceneIndexBufferedDeletes_get_BYTES_PER_DEL_TERM();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_TERM;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexBufferedDeletes, BYTES_PER_DEL_TERM, jint)

inline jint OrgApacheLuceneIndexBufferedDeletes_get_BYTES_PER_DEL_DOCID();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexBufferedDeletes, BYTES_PER_DEL_DOCID, jint)

inline jint OrgApacheLuceneIndexBufferedDeletes_get_BYTES_PER_DEL_QUERY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_QUERY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexBufferedDeletes, BYTES_PER_DEL_QUERY, jint)

inline JavaLangInteger *OrgApacheLuceneIndexBufferedDeletes_get_MAX_INT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneIndexBufferedDeletes_MAX_INT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexBufferedDeletes, MAX_INT, JavaLangInteger *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedDeletes_init(OrgApacheLuceneIndexBufferedDeletes *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedDeletes *new_OrgApacheLuceneIndexBufferedDeletes_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedDeletes *create_OrgApacheLuceneIndexBufferedDeletes_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedDeletes)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexBufferedDeletes")
