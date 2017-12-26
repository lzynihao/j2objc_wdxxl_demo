//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/UpgradeIndexMergePolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentInfos.h"
#include "org/apache/lucene/index/UpgradeIndexMergePolicy.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/SetOnce.h"

@interface OrgApacheLuceneIndexUpgradeIndexMergePolicy ()

- (jboolean)verbose;

- (void)messageWithNSString:(NSString *)message;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(OrgApacheLuceneIndexUpgradeIndexMergePolicy *self);

__attribute__((unused)) static void OrgApacheLuceneIndexUpgradeIndexMergePolicy_messageWithNSString_(OrgApacheLuceneIndexUpgradeIndexMergePolicy *self, NSString *message);

@implementation OrgApacheLuceneIndexUpgradeIndexMergePolicy

- (instancetype)initWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)base {
  OrgApacheLuceneIndexUpgradeIndexMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_(self, base);
  return self;
}

- (jboolean)shouldUpgradeSegmentWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si {
  return ![((NSString *) nil_chk(JreLoadStatic(OrgApacheLuceneUtilConstants, LUCENE_MAIN_VERSION))) isEqual:[((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si)) getVersion]];
}

- (void)setIndexWriterWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  [super setIndexWriterWithOrgApacheLuceneIndexIndexWriter:writer];
  [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) setIndexWriterWithOrgApacheLuceneIndexIndexWriter:writer];
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos {
  return [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) findMergesWithOrgApacheLuceneIndexSegmentInfos:segmentInfos];
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge {
  id<JavaUtilMap> oldSegments = new_JavaUtilHashMap_init();
  for (OrgApacheLuceneIndexSegmentInfo * __strong si in nil_chk(segmentInfos)) {
    JavaLangBoolean *v = [((id<JavaUtilMap>) nil_chk(segmentsToMerge)) getWithId:si];
    if (v != nil && [self shouldUpgradeSegmentWithOrgApacheLuceneIndexSegmentInfo:si]) {
      (void) [oldSegments putWithId:si withId:v];
    }
  }
  if (OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(self)) OrgApacheLuceneIndexUpgradeIndexMergePolicy_messageWithNSString_(self, JreStrcat("$@", @"findForcedMerges: segmentsToUpgrade=", oldSegments));
  if ([oldSegments isEmpty]) return nil;
  OrgApacheLuceneIndexMergePolicy_MergeSpecification *spec = [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:segmentInfos withInt:maxSegmentCount withJavaUtilMap:oldSegments];
  if (spec != nil) {
    for (OrgApacheLuceneIndexMergePolicy_OneMerge * __strong om in nil_chk(spec->merges_)) {
      [((id<JavaUtilSet>) nil_chk([oldSegments keySet])) removeAllWithJavaUtilCollection:((OrgApacheLuceneIndexMergePolicy_OneMerge *) nil_chk(om))->segments_];
    }
  }
  if (![oldSegments isEmpty]) {
    if (OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(self)) OrgApacheLuceneIndexUpgradeIndexMergePolicy_messageWithNSString_(self, JreStrcat("$$$@", @"findForcedMerges: ", [[base_ java_getClass] getSimpleName], @" does not want to merge all old segments, merge remaining ones into new segment: ", oldSegments));
    id<JavaUtilList> newInfos = new_JavaUtilArrayList_init();
    for (OrgApacheLuceneIndexSegmentInfo * __strong si in segmentInfos) {
      if ([oldSegments containsKeyWithId:si]) {
        [newInfos addWithId:si];
      }
    }
    if (spec == nil) {
      spec = new_OrgApacheLuceneIndexMergePolicy_MergeSpecification_init();
    }
    [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:new_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_(newInfos)];
  }
  return spec;
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos {
  return [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:segmentInfos];
}

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                            withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)newSegment {
  return [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:segments withOrgApacheLuceneIndexSegmentInfo:newSegment];
}

- (void)close {
  [((OrgApacheLuceneIndexMergePolicy *) nil_chk(base_)) close];
}

- (NSString *)description {
  return JreStrcat("C$$@C", '[', [[self java_getClass] getSimpleName], @"->", base_, ']');
}

- (jboolean)verbose {
  return OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(self);
}

- (void)messageWithNSString:(NSString *)message {
  OrgApacheLuceneIndexUpgradeIndexMergePolicy_messageWithNSString_(self, message);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 8, 9, 7, 10, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 11, 6, 7, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, 14, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexMergePolicy:);
  methods[1].selector = @selector(shouldUpgradeSegmentWithOrgApacheLuceneIndexSegmentInfo:);
  methods[2].selector = @selector(setIndexWriterWithOrgApacheLuceneIndexIndexWriter:);
  methods[3].selector = @selector(findMergesWithOrgApacheLuceneIndexSegmentInfos:);
  methods[4].selector = @selector(findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:withInt:withJavaUtilMap:);
  methods[5].selector = @selector(findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:);
  methods[6].selector = @selector(useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:withOrgApacheLuceneIndexSegmentInfo:);
  methods[7].selector = @selector(close);
  methods[8].selector = @selector(description);
  methods[9].selector = @selector(verbose);
  methods[10].selector = @selector(messageWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "base_", "LOrgApacheLuceneIndexMergePolicy;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexMergePolicy;", "shouldUpgradeSegment", "LOrgApacheLuceneIndexSegmentInfo;", "setIndexWriter", "LOrgApacheLuceneIndexIndexWriter;", "findMerges", "LOrgApacheLuceneIndexSegmentInfos;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "findForcedMerges", "LOrgApacheLuceneIndexSegmentInfos;ILJavaUtilMap;", "(Lorg/apache/lucene/index/SegmentInfos;ILjava/util/Map<Lorg/apache/lucene/index/SegmentInfo;Ljava/lang/Boolean;>;)Lorg/apache/lucene/index/MergePolicy$MergeSpecification;", "findForcedDeletesMerges", "useCompoundFile", "LOrgApacheLuceneIndexSegmentInfos;LOrgApacheLuceneIndexSegmentInfo;", "LJavaIoIOException;", "toString", "message", "LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexUpgradeIndexMergePolicy = { "UpgradeIndexMergePolicy", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 11, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexUpgradeIndexMergePolicy;
}

@end

void OrgApacheLuceneIndexUpgradeIndexMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_(OrgApacheLuceneIndexUpgradeIndexMergePolicy *self, OrgApacheLuceneIndexMergePolicy *base) {
  OrgApacheLuceneIndexMergePolicy_init(self);
  self->base_ = base;
}

OrgApacheLuceneIndexUpgradeIndexMergePolicy *new_OrgApacheLuceneIndexUpgradeIndexMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_(OrgApacheLuceneIndexMergePolicy *base) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexUpgradeIndexMergePolicy, initWithOrgApacheLuceneIndexMergePolicy_, base)
}

OrgApacheLuceneIndexUpgradeIndexMergePolicy *create_OrgApacheLuceneIndexUpgradeIndexMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_(OrgApacheLuceneIndexMergePolicy *base) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexUpgradeIndexMergePolicy, initWithOrgApacheLuceneIndexMergePolicy_, base)
}

jboolean OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(OrgApacheLuceneIndexUpgradeIndexMergePolicy *self) {
  OrgApacheLuceneIndexIndexWriter *w = [((OrgApacheLuceneUtilSetOnce *) nil_chk(self->writer_)) get];
  return w != nil && [w verbose];
}

void OrgApacheLuceneIndexUpgradeIndexMergePolicy_messageWithNSString_(OrgApacheLuceneIndexUpgradeIndexMergePolicy *self, NSString *message) {
  if (OrgApacheLuceneIndexUpgradeIndexMergePolicy_verbose(self)) [((OrgApacheLuceneIndexIndexWriter *) nil_chk([((OrgApacheLuceneUtilSetOnce *) nil_chk(self->writer_)) get])) messageWithNSString:JreStrcat("$$", @"UPGMP: ", message)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexUpgradeIndexMergePolicy)
