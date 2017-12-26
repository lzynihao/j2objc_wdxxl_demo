//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/nodes/Attributes.java
//

#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Iterable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/AbstractMap.h"
#include "java/util/AbstractSet.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/nodes/Attribute.h"
#include "org/jsoup/nodes/Attributes.h"
#include "org/jsoup/nodes/BooleanAttribute.h"
#include "org/jsoup/nodes/Document.h"

@protocol JavaUtilFunctionBiFunction;
@protocol JavaUtilFunctionFunction;

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgJsoupNodesAttributes () {
 @public
  JavaUtilLinkedHashMap *attributes_;
}

+ (NSString *)dataKeyWithNSString:(NSString *)key;

@end

J2OBJC_FIELD_SETTER(OrgJsoupNodesAttributes, attributes_, JavaUtilLinkedHashMap *)

__attribute__((unused)) static NSString *OrgJsoupNodesAttributes_dataKeyWithNSString_(NSString *key);

@interface OrgJsoupNodesAttributes_Dataset : JavaUtilAbstractMap {
 @public
  OrgJsoupNodesAttributes *this$0_;
}

- (instancetype)initWithOrgJsoupNodesAttributes:(OrgJsoupNodesAttributes *)outer$;

- (id<JavaUtilSet>)entrySet;

- (NSString *)putWithId:(NSString *)key
                 withId:(NSString *)value;

- (NSString *)computeIfAbsentWithId:(NSString *)arg0
       withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg1;

- (NSString *)getWithId:(id)arg0;

- (NSString *)removeWithId:(id)arg0;

- (NSString *)putIfAbsentWithId:(NSString *)arg0
                         withId:(NSString *)arg1;

- (NSString *)computeIfPresentWithId:(NSString *)arg0
      withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)replaceWithId:(NSString *)arg0
                     withId:(NSString *)arg1;

- (NSString *)computeWithId:(NSString *)arg0
withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)mergeWithId:(NSString *)arg0
                   withId:(NSString *)arg1
withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg2;

- (NSString *)getOrDefaultWithId:(id)arg0
                          withId:(NSString *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupNodesAttributes_Dataset)

__attribute__((unused)) static void OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes_Dataset *self, OrgJsoupNodesAttributes *outer$);

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset *new_OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset *create_OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupNodesAttributes_Dataset)

@interface OrgJsoupNodesAttributes_Dataset_EntrySet : JavaUtilAbstractSet {
 @public
  OrgJsoupNodesAttributes_Dataset *this$0_;
}

- (instancetype)initWithOrgJsoupNodesAttributes_Dataset:(OrgJsoupNodesAttributes_Dataset *)outer$;

- (id<JavaUtilIterator>)iterator;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupNodesAttributes_Dataset_EntrySet)

__attribute__((unused)) static void OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset_EntrySet *self, OrgJsoupNodesAttributes_Dataset *outer$);

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset_EntrySet *new_OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset_EntrySet *create_OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupNodesAttributes_Dataset_EntrySet)

@interface OrgJsoupNodesAttributes_Dataset_DatasetIterator : NSObject < JavaUtilIterator > {
 @public
  OrgJsoupNodesAttributes_Dataset *this$0_;
  id<JavaUtilIterator> attrIter_;
  OrgJsoupNodesAttribute *attr_;
}

- (instancetype)initWithOrgJsoupNodesAttributes_Dataset:(OrgJsoupNodesAttributes_Dataset *)outer$;

- (jboolean)hasNext;

- (id<JavaUtilMap_Entry>)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupNodesAttributes_Dataset_DatasetIterator)

J2OBJC_FIELD_SETTER(OrgJsoupNodesAttributes_Dataset_DatasetIterator, attrIter_, id<JavaUtilIterator>)
J2OBJC_FIELD_SETTER(OrgJsoupNodesAttributes_Dataset_DatasetIterator, attr_, OrgJsoupNodesAttribute *)

__attribute__((unused)) static void OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset_DatasetIterator *self, OrgJsoupNodesAttributes_Dataset *outer$);

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset_DatasetIterator *new_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupNodesAttributes_Dataset_DatasetIterator *create_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupNodesAttributes_Dataset_DatasetIterator)

NSString *OrgJsoupNodesAttributes_dataPrefix = @"data-";

@implementation OrgJsoupNodesAttributes

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJsoupNodesAttributes_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getWithNSString:(NSString *)key {
  OrgJsoupHelperValidate_notEmptyWithNSString_(key);
  if (attributes_ == nil) return @"";
  OrgJsoupNodesAttribute *attr = [attributes_ getWithId:[((NSString *) nil_chk(key)) lowercaseString]];
  return attr != nil ? [attr getValue] : @"";
}

- (void)putWithNSString:(NSString *)key
           withNSString:(NSString *)value {
  OrgJsoupNodesAttribute *attr = new_OrgJsoupNodesAttribute_initWithNSString_withNSString_(key, value);
  [self putWithOrgJsoupNodesAttribute:attr];
}

- (void)putWithNSString:(NSString *)key
            withBoolean:(jboolean)value {
  if (value) [self putWithOrgJsoupNodesAttribute:new_OrgJsoupNodesBooleanAttribute_initWithNSString_(key)];
  else [self removeWithNSString:key];
}

- (void)putWithOrgJsoupNodesAttribute:(OrgJsoupNodesAttribute *)attribute {
  OrgJsoupHelperValidate_notNullWithId_(attribute);
  if (attributes_ == nil) attributes_ = new_JavaUtilLinkedHashMap_initWithInt_(2);
  (void) [attributes_ putWithId:[((OrgJsoupNodesAttribute *) nil_chk(attribute)) getKey] withId:attribute];
}

- (void)removeWithNSString:(NSString *)key {
  OrgJsoupHelperValidate_notEmptyWithNSString_(key);
  if (attributes_ == nil) return;
  (void) [attributes_ removeWithId:[((NSString *) nil_chk(key)) lowercaseString]];
}

- (jboolean)hasKeyWithNSString:(NSString *)key {
  return attributes_ != nil && [attributes_ containsKeyWithId:[((NSString *) nil_chk(key)) lowercaseString]];
}

- (jint)size {
  if (attributes_ == nil) return 0;
  return [attributes_ size];
}

- (void)addAllWithOrgJsoupNodesAttributes:(OrgJsoupNodesAttributes *)incoming {
  if ([((OrgJsoupNodesAttributes *) nil_chk(incoming)) size] == 0) return;
  if (attributes_ == nil) attributes_ = new_JavaUtilLinkedHashMap_initWithInt_([incoming size]);
  [attributes_ putAllWithJavaUtilMap:incoming->attributes_];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk([self asList])) iterator];
}

- (id<JavaUtilList>)asList {
  if (attributes_ == nil) return JavaUtilCollections_emptyList();
  id<JavaUtilList> list = new_JavaUtilArrayList_initWithInt_([attributes_ size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilLinkedHashMap *) nil_chk(attributes_)) entrySet])) {
    [list addWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]];
  }
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(list);
}

- (id<JavaUtilMap>)dataset {
  return new_OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(self);
}

- (NSString *)html {
  JavaLangStringBuilder *accum = new_JavaLangStringBuilder_init();
  [self htmlWithJavaLangStringBuilder:accum withOrgJsoupNodesDocument_OutputSettings:[(new_OrgJsoupNodesDocument_initWithNSString_(@"")) outputSettings]];
  return [accum description];
}

- (void)htmlWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  if (attributes_ == nil) return;
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([attributes_ entrySet])) {
    OrgJsoupNodesAttribute *attribute = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue];
    (void) [((JavaLangStringBuilder *) nil_chk(accum)) appendWithNSString:@" "];
    [((OrgJsoupNodesAttribute *) nil_chk(attribute)) htmlWithJavaLangStringBuilder:accum withOrgJsoupNodesDocument_OutputSettings:outArg];
  }
}

- (NSString *)description {
  return [self html];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgJsoupNodesAttributes class]])) return false;
  OrgJsoupNodesAttributes *that = (OrgJsoupNodesAttributes *) cast_chk(o, [OrgJsoupNodesAttributes class]);
  return !(attributes_ != nil ? ![attributes_ isEqual:((OrgJsoupNodesAttributes *) nil_chk(that))->attributes_] : ((OrgJsoupNodesAttributes *) nil_chk(that))->attributes_ != nil);
}

- (NSUInteger)hash {
  return attributes_ != nil ? ((jint) [attributes_ hash]) : 0;
}

- (OrgJsoupNodesAttributes *)java_clone {
  if (attributes_ == nil) return new_OrgJsoupNodesAttributes_init();
  OrgJsoupNodesAttributes *clone;
  @try {
    clone = (OrgJsoupNodesAttributes *) cast_chk([super java_clone], [OrgJsoupNodesAttributes class]);
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw new_JavaLangRuntimeException_initWithNSException_(e);
  }
  ((OrgJsoupNodesAttributes *) nil_chk(clone))->attributes_ = new_JavaUtilLinkedHashMap_initWithInt_([((JavaUtilLinkedHashMap *) nil_chk(attributes_)) size]);
  for (OrgJsoupNodesAttribute * __strong attribute in self) (void) [((JavaUtilLinkedHashMap *) nil_chk(clone->attributes_)) putWithId:[((OrgJsoupNodesAttribute *) nil_chk(attribute)) getKey] withId:[attribute java_clone]];
  return clone;
}

+ (NSString *)dataKeyWithNSString:(NSString *)key {
  return OrgJsoupNodesAttributes_dataKeyWithNSString_(key);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesAttributes;", 0x1, 19, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 20, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getWithNSString:);
  methods[2].selector = @selector(putWithNSString:withNSString:);
  methods[3].selector = @selector(putWithNSString:withBoolean:);
  methods[4].selector = @selector(putWithOrgJsoupNodesAttribute:);
  methods[5].selector = @selector(removeWithNSString:);
  methods[6].selector = @selector(hasKeyWithNSString:);
  methods[7].selector = @selector(size);
  methods[8].selector = @selector(addAllWithOrgJsoupNodesAttributes:);
  methods[9].selector = @selector(iterator);
  methods[10].selector = @selector(asList);
  methods[11].selector = @selector(dataset);
  methods[12].selector = @selector(html);
  methods[13].selector = @selector(htmlWithJavaLangStringBuilder:withOrgJsoupNodesDocument_OutputSettings:);
  methods[14].selector = @selector(description);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(hash);
  methods[17].selector = @selector(java_clone);
  methods[18].selector = @selector(dataKeyWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dataPrefix", "LNSString;", .constantValue.asLong = 0, 0x1c, -1, 21, -1, -1 },
    { "attributes_", "LJavaUtilLinkedHashMap;", .constantValue.asLong = 0, 0x2, -1, -1, 22, -1 },
  };
  static const void *ptrTable[] = { "get", "LNSString;", "put", "LNSString;LNSString;", "LNSString;Z", "LOrgJsoupNodesAttribute;", "remove", "hasKey", "addAll", "LOrgJsoupNodesAttributes;", "()Ljava/util/Iterator<Lorg/jsoup/nodes/Attribute;>;", "()Ljava/util/List<Lorg/jsoup/nodes/Attribute;>;", "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", "html", "LJavaLangStringBuilder;LOrgJsoupNodesDocument_OutputSettings;", "toString", "equals", "LNSObject;", "hashCode", "clone", "dataKey", &OrgJsoupNodesAttributes_dataPrefix, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/jsoup/nodes/Attribute;>;", "LOrgJsoupNodesAttributes_Dataset;", "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/jsoup/nodes/Attribute;>;Ljava/lang/Cloneable;" };
  static const J2ObjcClassInfo _OrgJsoupNodesAttributes = { "Attributes", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x1, 19, 2, -1, 23, -1, 24, -1 };
  return &_OrgJsoupNodesAttributes;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

@end

void OrgJsoupNodesAttributes_init(OrgJsoupNodesAttributes *self) {
  NSObject_init(self);
  self->attributes_ = nil;
}

OrgJsoupNodesAttributes *new_OrgJsoupNodesAttributes_init() {
  J2OBJC_NEW_IMPL(OrgJsoupNodesAttributes, init)
}

OrgJsoupNodesAttributes *create_OrgJsoupNodesAttributes_init() {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesAttributes, init)
}

NSString *OrgJsoupNodesAttributes_dataKeyWithNSString_(NSString *key) {
  OrgJsoupNodesAttributes_initialize();
  return JreStrcat("$$", OrgJsoupNodesAttributes_dataPrefix, key);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesAttributes)

@implementation OrgJsoupNodesAttributes_Dataset

- (instancetype)initWithOrgJsoupNodesAttributes:(OrgJsoupNodesAttributes *)outer$ {
  OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(self, outer$);
  return self;
}

- (id<JavaUtilSet>)entrySet {
  return new_OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(self);
}

- (NSString *)putWithId:(NSString *)key
                 withId:(NSString *)value {
  NSString *dataKey = OrgJsoupNodesAttributes_dataKeyWithNSString_(key);
  NSString *oldValue = [this$0_ hasKeyWithNSString:dataKey] ? [((OrgJsoupNodesAttribute *) nil_chk([((JavaUtilLinkedHashMap *) nil_chk(this$0_->attributes_)) getWithId:dataKey])) getValue] : nil;
  OrgJsoupNodesAttribute *attr = new_OrgJsoupNodesAttribute_initWithNSString_withNSString_(dataKey, value);
  (void) [((JavaUtilLinkedHashMap *) nil_chk(this$0_->attributes_)) putWithId:dataKey withId:attr];
  return oldValue;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupNodesAttributes:);
  methods[1].selector = @selector(entrySet);
  methods[2].selector = @selector(putWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgJsoupNodesAttributes;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;", "put", "LNSString;LNSString;", "LOrgJsoupNodesAttributes;", "LOrgJsoupNodesAttributes_Dataset_EntrySet;LOrgJsoupNodesAttributes_Dataset_DatasetIterator;", "Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgJsoupNodesAttributes_Dataset = { "Dataset", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x2, 3, 1, 3, 4, -1, 5, -1 };
  return &_OrgJsoupNodesAttributes_Dataset;
}

@end

void OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes_Dataset *self, OrgJsoupNodesAttributes *outer$) {
  self->this$0_ = outer$;
  JavaUtilAbstractMap_init(self);
  if (outer$->attributes_ == nil) outer$->attributes_ = new_JavaUtilLinkedHashMap_initWithInt_(2);
}

OrgJsoupNodesAttributes_Dataset *new_OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes *outer$) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesAttributes_Dataset, initWithOrgJsoupNodesAttributes_, outer$)
}

OrgJsoupNodesAttributes_Dataset *create_OrgJsoupNodesAttributes_Dataset_initWithOrgJsoupNodesAttributes_(OrgJsoupNodesAttributes *outer$) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesAttributes_Dataset, initWithOrgJsoupNodesAttributes_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesAttributes_Dataset)

@implementation OrgJsoupNodesAttributes_Dataset_EntrySet

- (instancetype)initWithOrgJsoupNodesAttributes_Dataset:(OrgJsoupNodesAttributes_Dataset *)outer$ {
  OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(self, outer$);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return new_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(this$0_);
}

- (jint)size {
  jint count = 0;
  id<JavaUtilIterator> iter = new_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(this$0_);
  while ([iter hasNext]) count++;
  return count;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupNodesAttributes_Dataset:);
  methods[1].selector = @selector(iterator);
  methods[2].selector = @selector(size);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgJsoupNodesAttributes_Dataset;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;", "LOrgJsoupNodesAttributes_Dataset;", "Ljava/util/AbstractSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;" };
  static const J2ObjcClassInfo _OrgJsoupNodesAttributes_Dataset_EntrySet = { "EntrySet", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x2, 3, 1, 1, -1, -1, 2, -1 };
  return &_OrgJsoupNodesAttributes_Dataset_EntrySet;
}

@end

void OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset_EntrySet *self, OrgJsoupNodesAttributes_Dataset *outer$) {
  self->this$0_ = outer$;
  JavaUtilAbstractSet_init(self);
}

OrgJsoupNodesAttributes_Dataset_EntrySet *new_OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesAttributes_Dataset_EntrySet, initWithOrgJsoupNodesAttributes_Dataset_, outer$)
}

OrgJsoupNodesAttributes_Dataset_EntrySet *create_OrgJsoupNodesAttributes_Dataset_EntrySet_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesAttributes_Dataset_EntrySet, initWithOrgJsoupNodesAttributes_Dataset_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesAttributes_Dataset_EntrySet)

@implementation OrgJsoupNodesAttributes_Dataset_DatasetIterator

- (instancetype)initWithOrgJsoupNodesAttributes_Dataset:(OrgJsoupNodesAttributes_Dataset *)outer$ {
  OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(self, outer$);
  return self;
}

- (jboolean)hasNext {
  while ([((id<JavaUtilIterator>) nil_chk(attrIter_)) hasNext]) {
    attr_ = [((id<JavaUtilIterator>) nil_chk(attrIter_)) next];
    if ([((OrgJsoupNodesAttribute *) nil_chk(attr_)) isDataAttribute]) return true;
  }
  return false;
}

- (id<JavaUtilMap_Entry>)next {
  return new_OrgJsoupNodesAttribute_initWithNSString_withNSString_([((NSString *) nil_chk([((OrgJsoupNodesAttribute *) nil_chk(attr_)) getKey])) java_substring:[((NSString *) nil_chk(OrgJsoupNodesAttributes_dataPrefix)) java_length]], [((OrgJsoupNodesAttribute *) nil_chk(attr_)) getValue]);
}

- (void)remove {
  (void) [((JavaUtilLinkedHashMap *) nil_chk(this$0_->this$0_->attributes_)) removeWithId:[((OrgJsoupNodesAttribute *) nil_chk(attr_)) getKey]];
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap_Entry;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupNodesAttributes_Dataset:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgJsoupNodesAttributes_Dataset;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "attrIter_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x2, -1, -1, 1, -1 },
    { "attr_", "LOrgJsoupNodesAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;", "Ljava/util/Iterator<Lorg/jsoup/nodes/Attribute;>;", "LOrgJsoupNodesAttributes_Dataset;", "Ljava/lang/Object;Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;" };
  static const J2ObjcClassInfo _OrgJsoupNodesAttributes_Dataset_DatasetIterator = { "DatasetIterator", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x2, 4, 3, 2, -1, -1, 3, -1 };
  return &_OrgJsoupNodesAttributes_Dataset_DatasetIterator;
}

@end

void OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset_DatasetIterator *self, OrgJsoupNodesAttributes_Dataset *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
  self->attrIter_ = [((id<JavaUtilCollection>) nil_chk([((JavaUtilLinkedHashMap *) nil_chk(outer$->this$0_->attributes_)) values])) iterator];
}

OrgJsoupNodesAttributes_Dataset_DatasetIterator *new_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesAttributes_Dataset_DatasetIterator, initWithOrgJsoupNodesAttributes_Dataset_, outer$)
}

OrgJsoupNodesAttributes_Dataset_DatasetIterator *create_OrgJsoupNodesAttributes_Dataset_DatasetIterator_initWithOrgJsoupNodesAttributes_Dataset_(OrgJsoupNodesAttributes_Dataset *outer$) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesAttributes_Dataset_DatasetIterator, initWithOrgJsoupNodesAttributes_Dataset_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesAttributes_Dataset_DatasetIterator)