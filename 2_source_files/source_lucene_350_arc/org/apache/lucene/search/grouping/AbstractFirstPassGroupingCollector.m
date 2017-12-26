//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/TreeSet.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/SearchGroup.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector () {
 @public
  OrgApacheLuceneSearchSort *groupSort_;
  IOSObjectArray *comparators_;
  IOSIntArray *reversed_;
  jint topNGroups_;
  JavaUtilHashMap *groupMap_;
  jint compIDXEnd_;
  JavaUtilTreeSet *orderedGroups_;
  jint docBase_;
  jint spareSlot_;
}

- (void)buildSortedSet;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector, groupSort_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector, reversed_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector, groupMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector, orderedGroups_, JavaUtilTreeSet *)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_buildSortedSet(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *self);

@interface OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 : NSObject < JavaUtilComparator > {
 @public
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector:(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *)outer$;

- (jint)compareWithId:(OrgApacheLuceneSearchGroupingCollectedSearchGroup *)o1
               withId:(OrgApacheLuceneSearchGroupingCollectedSearchGroup *)o2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *self, OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *new_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *create_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$);

@implementation OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                                          withInt:(jint)topNGroups {
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_(self, groupSort, topNGroups);
  return self;
}

- (id<JavaUtilCollection>)getTopGroupsWithInt:(jint)groupOffset
                                  withBoolean:(jboolean)fillFields {
  if (groupOffset < 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"groupOffset must be >= 0 (got ", groupOffset, ')'));
  }
  if ([((JavaUtilHashMap *) nil_chk(groupMap_)) size] <= groupOffset) {
    return nil;
  }
  if (orderedGroups_ == nil) {
    OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_buildSortedSet(self);
  }
  id<JavaUtilCollection> result = new_JavaUtilArrayList_init();
  jint upto = 0;
  jint sortFieldCount = ((IOSObjectArray *) nil_chk([((OrgApacheLuceneSearchSort *) nil_chk(groupSort_)) getSort]))->size_;
  for (OrgApacheLuceneSearchGroupingCollectedSearchGroup * __strong group in nil_chk(orderedGroups_)) {
    if (upto++ < groupOffset) {
      continue;
    }
    OrgApacheLuceneSearchGroupingSearchGroup *searchGroup = new_OrgApacheLuceneSearchGroupingSearchGroup_init();
    searchGroup->groupValue_ = ((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk(group))->groupValue_;
    if (fillFields) {
      searchGroup->sortValues_ = [IOSObjectArray newArrayWithLength:sortFieldCount type:NSObject_class_()];
      for (jint sortFieldIDX = 0; sortFieldIDX < sortFieldCount; sortFieldIDX++) {
        (void) IOSObjectArray_Set(nil_chk(searchGroup->sortValues_), sortFieldIDX, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(nil_chk(comparators_), sortFieldIDX))) valueWithInt:group->comparatorSlot_]);
      }
    }
    [result addWithId:searchGroup];
  }
  return result;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  {
    IOSObjectArray *a__ = comparators_;
    OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchFieldComparator *comparator = *b__++;
      [((OrgApacheLuceneSearchFieldComparator *) nil_chk(comparator)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
    }
  }
}

- (void)collectWithInt:(jint)doc {
  if (orderedGroups_ != nil) {
    for (jint compIDX = 0; ; compIDX++) {
      jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(nil_chk(comparators_), compIDX))) compareBottomWithInt:doc];
      if (c < 0) {
        return;
      }
      else if (c > 0) {
        break;
      }
      else if (compIDX == compIDXEnd_) {
        return;
      }
    }
  }
  id groupValue = [self getDocGroupValueWithInt:doc];
  OrgApacheLuceneSearchGroupingCollectedSearchGroup *group = [((JavaUtilHashMap *) nil_chk(groupMap_)) getWithId:groupValue];
  if (group == nil) {
    if ([groupMap_ size] < topNGroups_) {
      OrgApacheLuceneSearchGroupingCollectedSearchGroup *sg = new_OrgApacheLuceneSearchGroupingCollectedSearchGroup_init();
      sg->groupValue_ = [self copyDocGroupValueWithId:groupValue withId:nil];
      sg->comparatorSlot_ = [groupMap_ size];
      sg->topDoc_ = docBase_ + doc;
      {
        IOSObjectArray *a__ = comparators_;
        OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          OrgApacheLuceneSearchFieldComparator *fc = *b__++;
          [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:sg->comparatorSlot_ withInt:doc];
        }
      }
      (void) [groupMap_ putWithId:sg->groupValue_ withId:sg];
      if ([groupMap_ size] == topNGroups_) {
        OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_buildSortedSet(self);
      }
      return;
    }
    OrgApacheLuceneSearchGroupingCollectedSearchGroup *bottomGroup = [((JavaUtilTreeSet *) nil_chk(orderedGroups_)) last];
    [((JavaUtilTreeSet *) nil_chk(orderedGroups_)) removeWithId:bottomGroup];
    JreAssert(([((JavaUtilTreeSet *) nil_chk(orderedGroups_)) size] == topNGroups_ - 1), (@"org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java:219 condition failed: assert orderedGroups.size() == topNGroups -1;"));
    (void) [groupMap_ removeWithId:((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk(bottomGroup))->groupValue_];
    bottomGroup->groupValue_ = [self copyDocGroupValueWithId:groupValue withId:bottomGroup->groupValue_];
    bottomGroup->topDoc_ = docBase_ + doc;
    {
      IOSObjectArray *a__ = comparators_;
      OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchFieldComparator *fc = *b__++;
        [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:bottomGroup->comparatorSlot_ withInt:doc];
      }
    }
    (void) [groupMap_ putWithId:bottomGroup->groupValue_ withId:bottomGroup];
    [((JavaUtilTreeSet *) nil_chk(orderedGroups_)) addWithId:bottomGroup];
    JreAssert(([((JavaUtilTreeSet *) nil_chk(orderedGroups_)) size] == topNGroups_), (@"org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java:233 condition failed: assert orderedGroups.size() == topNGroups;"));
    jint lastComparatorSlot = ((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk([((JavaUtilTreeSet *) nil_chk(orderedGroups_)) last]))->comparatorSlot_;
    {
      IOSObjectArray *a__ = comparators_;
      OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchFieldComparator *fc = *b__++;
        [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) setBottomWithInt:lastComparatorSlot];
      }
    }
    return;
  }
  for (jint compIDX = 0; ; compIDX++) {
    OrgApacheLuceneSearchFieldComparator *fc = IOSObjectArray_Get(nil_chk(comparators_), compIDX);
    [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:spareSlot_ withInt:doc];
    jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [fc compareWithInt:group->comparatorSlot_ withInt:spareSlot_];
    if (c < 0) {
      return;
    }
    else if (c > 0) {
      for (jint compIDX2 = compIDX + 1; compIDX2 < comparators_->size_; compIDX2++) {
        [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, compIDX2))) copy__WithInt:spareSlot_ withInt:doc];
      }
      break;
    }
    else if (compIDX == compIDXEnd_) {
      return;
    }
  }
  OrgApacheLuceneSearchGroupingCollectedSearchGroup *prevLast;
  if (orderedGroups_ != nil) {
    prevLast = [orderedGroups_ last];
    [((JavaUtilTreeSet *) nil_chk(orderedGroups_)) removeWithId:group];
    JreAssert(([((JavaUtilTreeSet *) nil_chk(orderedGroups_)) size] == topNGroups_ - 1), (@"org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java:273 condition failed: assert orderedGroups.size() == topNGroups-1;"));
  }
  else {
    prevLast = nil;
  }
  group->topDoc_ = docBase_ + doc;
  jint tmp = spareSlot_;
  spareSlot_ = group->comparatorSlot_;
  group->comparatorSlot_ = tmp;
  if (orderedGroups_ != nil) {
    [orderedGroups_ addWithId:group];
    JreAssert(([((JavaUtilTreeSet *) nil_chk(orderedGroups_)) size] == topNGroups_), (@"org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java:288 condition failed: assert orderedGroups.size() == topNGroups;"));
    OrgApacheLuceneSearchGroupingCollectedSearchGroup *newLast = [((JavaUtilTreeSet *) nil_chk(orderedGroups_)) last];
    if (group == newLast || prevLast != newLast) {
      {
        IOSObjectArray *a__ = comparators_;
        OrgApacheLuceneSearchFieldComparator * const *b__ = a__->buffer_;
        OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          OrgApacheLuceneSearchFieldComparator *fc = *b__++;
          [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) setBottomWithInt:((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk(newLast))->comparatorSlot_];
        }
      }
    }
  }
}

- (void)buildSortedSet {
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_buildSortedSet(self);
}

- (jboolean)acceptsDocsOutOfOrder {
  return false;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
  self->docBase_ = docBase;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(comparators_))->size_; i++) {
    [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, i))) setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:docBase];
  }
}

- (id)getDocGroupValueWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)copyDocGroupValueWithId:(id)groupValue
                       withId:(id)reuse {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x404, 11, 8, -1, 12, -1, -1 },
    { NULL, "LNSObject;", 0x404, 13, 14, -1, 15, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSort:withInt:);
  methods[1].selector = @selector(getTopGroupsWithInt:withBoolean:);
  methods[2].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[3].selector = @selector(collectWithInt:);
  methods[4].selector = @selector(buildSortedSet);
  methods[5].selector = @selector(acceptsDocsOutOfOrder);
  methods[6].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[7].selector = @selector(getDocGroupValueWithInt:);
  methods[8].selector = @selector(copyDocGroupValueWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupSort_", "LOrgApacheLuceneSearchSort;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "comparators_", "[LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "reversed_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "topNGroups_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "groupMap_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "compIDXEnd_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "orderedGroups_", "LJavaUtilTreeSet;", .constantValue.asLong = 0, 0x2, -1, -1, 17, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "spareSlot_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSort;I", "LJavaIoIOException;", "getTopGroups", "IZ", "(IZ)Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TGROUP_VALUE_TYPE;>;>;", "setScorer", "LOrgApacheLuceneSearchScorer;", "collect", "I", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "getDocGroupValue", "(I)TGROUP_VALUE_TYPE;", "copyDocGroupValue", "LNSObject;LNSObject;", "(TGROUP_VALUE_TYPE;TGROUP_VALUE_TYPE;)TGROUP_VALUE_TYPE;", "Ljava/util/HashMap<TGROUP_VALUE_TYPE;Lorg/apache/lucene/search/grouping/CollectedSearchGroup<TGROUP_VALUE_TYPE;>;>;", "Ljava/util/TreeSet<Lorg/apache/lucene/search/grouping/CollectedSearchGroup<TGROUP_VALUE_TYPE;>;>;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Lorg/apache/lucene/search/Collector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector = { "AbstractFirstPassGroupingCollector", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x401, 9, 9, -1, -1, -1, 18, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector;
}

@end

void OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *self, OrgApacheLuceneSearchSort *groupSort, jint topNGroups) {
  OrgApacheLuceneSearchCollector_init(self);
  if (topNGroups < 1) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"topNGroups must be >= 1 (got ", topNGroups, ')'));
  }
  self->groupSort_ = groupSort;
  self->topNGroups_ = topNGroups;
  IOSObjectArray *sortFields = [((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort];
  self->comparators_ = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(sortFields))->size_ type:OrgApacheLuceneSearchFieldComparator_class_()];
  self->compIDXEnd_ = self->comparators_->size_ - 1;
  self->reversed_ = [IOSIntArray newArrayWithLength:sortFields->size_];
  for (jint i = 0; i < sortFields->size_; i++) {
    OrgApacheLuceneSearchSortField *sortField = IOSObjectArray_Get(sortFields, i);
    (void) IOSObjectArray_Set(self->comparators_, i, [((OrgApacheLuceneSearchSortField *) nil_chk(sortField)) getComparatorWithInt:topNGroups + 1 withInt:i]);
    *IOSIntArray_GetRef(self->reversed_, i) = [sortField getReverse] ? -1 : 1;
  }
  self->spareSlot_ = topNGroups;
  self->groupMap_ = new_JavaUtilHashMap_initWithInt_(topNGroups);
}

void OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_buildSortedSet(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *self) {
  id<JavaUtilComparator> comparator = new_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(self);
  self->orderedGroups_ = new_JavaUtilTreeSet_initWithJavaUtilComparator_(comparator);
  [self->orderedGroups_ addAllWithJavaUtilCollection:[((JavaUtilHashMap *) nil_chk(self->groupMap_)) values]];
  JreAssert(([((JavaUtilTreeSet *) nil_chk(self->orderedGroups_)) size] > 0), (@"org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.java:316 condition failed: assert orderedGroups.size() > 0;"));
  {
    IOSObjectArray *a__ = self->comparators_;
    OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchFieldComparator *fc = *b__++;
      [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) setBottomWithInt:((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk([((JavaUtilTreeSet *) nil_chk(self->orderedGroups_)) last]))->comparatorSlot_];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector)

@implementation OrgApacheLuceneSearchGroupingCollectedSearchGroup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchGroupingCollectedSearchGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "topDoc_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "comparatorSlot_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "<T:Ljava/lang/Object;>Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingCollectedSearchGroup = { "CollectedSearchGroup", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x0, 1, 2, -1, -1, -1, 0, -1 };
  return &_OrgApacheLuceneSearchGroupingCollectedSearchGroup;
}

@end

void OrgApacheLuceneSearchGroupingCollectedSearchGroup_init(OrgApacheLuceneSearchGroupingCollectedSearchGroup *self) {
  OrgApacheLuceneSearchGroupingSearchGroup_init(self);
}

OrgApacheLuceneSearchGroupingCollectedSearchGroup *new_OrgApacheLuceneSearchGroupingCollectedSearchGroup_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingCollectedSearchGroup, init)
}

OrgApacheLuceneSearchGroupingCollectedSearchGroup *create_OrgApacheLuceneSearchGroupingCollectedSearchGroup_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingCollectedSearchGroup, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingCollectedSearchGroup)

@implementation OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1

- (instancetype)initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector:(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *)outer$ {
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(self, outer$);
  return self;
}

- (jint)compareWithId:(OrgApacheLuceneSearchGroupingCollectedSearchGroup *)o1
               withId:(OrgApacheLuceneSearchGroupingCollectedSearchGroup *)o2 {
  for (jint compIDX = 0; ; compIDX++) {
    OrgApacheLuceneSearchFieldComparator *fc = IOSObjectArray_Get(nil_chk(this$0_->comparators_), compIDX);
    jint c = IOSIntArray_Get(nil_chk(this$0_->reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) compareWithInt:((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk(o1))->comparatorSlot_ withInt:((OrgApacheLuceneSearchGroupingCollectedSearchGroup *) nil_chk(o2))->comparatorSlot_];
    if (c != 0) {
      return c;
    }
    else if (compIDX == this$0_->compIDXEnd_) {
      return o1->topDoc_ - o2->topDoc_;
    }
  }
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector:);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneSearchGroupingCollectedSearchGroup;LOrgApacheLuceneSearchGroupingCollectedSearchGroup;", "Lorg/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector<TGROUP_VALUE_TYPE;>;", "LOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector;", "buildSortedSet", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/search/grouping/CollectedSearchGroup;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 = { "", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x8018, 2, 1, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1;
}

@end

void OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *self, OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *new_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1, initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_, outer$)
}

OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1 *create_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1_initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_1, initWithOrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_, outer$)
}
