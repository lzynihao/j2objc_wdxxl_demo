//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/PositiveIntOutputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstPositiveIntOutputs")
#ifdef RESTRICT_OrgApacheLuceneUtilFstPositiveIntOutputs
#define INCLUDE_ALL_OrgApacheLuceneUtilFstPositiveIntOutputs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstPositiveIntOutputs 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstPositiveIntOutputs

#if !defined (OrgApacheLuceneUtilFstPositiveIntOutputs_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstPositiveIntOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstPositiveIntOutputs))
#define OrgApacheLuceneUtilFstPositiveIntOutputs_

#define RESTRICT_OrgApacheLuceneUtilFstOutputs 1
#define INCLUDE_OrgApacheLuceneUtilFstOutputs 1
#include "org/apache/lucene/util/fst/Outputs.h"

@class JavaLangLong;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilFstPositiveIntOutputs : OrgApacheLuceneUtilFstOutputs

#pragma mark Public

- (JavaLangLong *)addWithId:(JavaLangLong *)prefix
                     withId:(JavaLangLong *)output;

- (JavaLangLong *)commonWithId:(JavaLangLong *)output1
                        withId:(JavaLangLong *)output2;

- (JavaLangLong *)getWithLong:(jlong)v;

- (JavaLangLong *)getNoOutput;

+ (OrgApacheLuceneUtilFstPositiveIntOutputs *)getSingletonWithBoolean:(jboolean)doShare;

- (JavaLangLong *)mergeWithId:(JavaLangLong *)arg0
                       withId:(JavaLangLong *)arg1;

- (NSString *)outputToStringWithId:(JavaLangLong *)output;

- (JavaLangLong *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (JavaLangLong *)subtractWithId:(JavaLangLong *)output
                          withId:(JavaLangLong *)inc;

- (void)writeWithId:(JavaLangLong *)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilFstPositiveIntOutputs)

FOUNDATION_EXPORT OrgApacheLuceneUtilFstPositiveIntOutputs *OrgApacheLuceneUtilFstPositiveIntOutputs_getSingletonWithBoolean_(jboolean doShare);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstPositiveIntOutputs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstPositiveIntOutputs")
