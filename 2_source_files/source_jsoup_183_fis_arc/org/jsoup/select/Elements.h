//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/select/Elements.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupSelectElements")
#ifdef RESTRICT_OrgJsoupSelectElements
#define INCLUDE_ALL_OrgJsoupSelectElements 0
#else
#define INCLUDE_ALL_OrgJsoupSelectElements 1
#endif
#undef RESTRICT_OrgJsoupSelectElements

#if !defined (OrgJsoupSelectElements_) && (INCLUDE_ALL_OrgJsoupSelectElements || defined(INCLUDE_OrgJsoupSelectElements))
#define OrgJsoupSelectElements_

#define RESTRICT_JavaUtilArrayList 1
#define INCLUDE_JavaUtilArrayList 1
#include "java/util/ArrayList.h"

@class IOSObjectArray;
@class OrgJsoupNodesElement;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol OrgJsoupSelectNodeVisitor;

@interface OrgJsoupSelectElements : JavaUtilArrayList

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)elements;

- (instancetype)initWithOrgJsoupNodesElementArray:(IOSObjectArray *)elements;

- (instancetype)initWithInt:(jint)initialCapacity;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)elements;

- (OrgJsoupSelectElements *)addClassWithNSString:(NSString *)className_;

- (OrgJsoupSelectElements *)afterWithNSString:(NSString *)html;

- (OrgJsoupSelectElements *)appendWithNSString:(NSString *)html;

- (NSString *)attrWithNSString:(NSString *)attributeKey;

- (OrgJsoupSelectElements *)attrWithNSString:(NSString *)attributeKey
                                withNSString:(NSString *)attributeValue;

- (OrgJsoupSelectElements *)beforeWithNSString:(NSString *)html;

- (OrgJsoupSelectElements *)java_clone;

- (OrgJsoupSelectElements *)empty;

- (OrgJsoupSelectElements *)eqWithInt:(jint)index;

- (OrgJsoupNodesElement *)first;

- (id<JavaUtilList>)forms;

- (OrgJsoupNodesElement *)getWithInt:(jint)arg0;

- (jboolean)hasAttrWithNSString:(NSString *)attributeKey;

- (jboolean)hasClassWithNSString:(NSString *)className_;

- (jboolean)hasText;

- (NSString *)html;

- (OrgJsoupSelectElements *)htmlWithNSString:(NSString *)html;

- (jboolean)isWithNSString:(NSString *)query;

- (OrgJsoupNodesElement *)last;

- (OrgJsoupSelectElements *)not__WithNSString:(NSString *)query;

- (NSString *)outerHtml;

- (OrgJsoupSelectElements *)parents;

- (OrgJsoupSelectElements *)prependWithNSString:(NSString *)html;

- (OrgJsoupSelectElements *)remove;

- (OrgJsoupSelectElements *)removeAttrWithNSString:(NSString *)attributeKey;

- (OrgJsoupSelectElements *)removeClassWithNSString:(NSString *)className_;

- (OrgJsoupNodesElement *)removeWithInt:(jint)arg0;

- (OrgJsoupSelectElements *)selectWithNSString:(NSString *)query;

- (OrgJsoupNodesElement *)setWithInt:(jint)arg0
                              withId:(OrgJsoupNodesElement *)arg1;

- (OrgJsoupSelectElements *)tagNameWithNSString:(NSString *)tagName;

- (NSString *)text;

- (OrgJsoupSelectElements *)toggleClassWithNSString:(NSString *)className_;

- (NSString *)description;

- (OrgJsoupSelectElements *)traverseWithOrgJsoupSelectNodeVisitor:(id<OrgJsoupSelectNodeVisitor>)nodeVisitor;

- (OrgJsoupSelectElements *)unwrap;

- (NSString *)val;

- (OrgJsoupSelectElements *)valWithNSString:(NSString *)value;

- (OrgJsoupSelectElements *)wrapWithNSString:(NSString *)html;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSelectElements)

FOUNDATION_EXPORT void OrgJsoupSelectElements_init(OrgJsoupSelectElements *self);

FOUNDATION_EXPORT OrgJsoupSelectElements *new_OrgJsoupSelectElements_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectElements *create_OrgJsoupSelectElements_init();

FOUNDATION_EXPORT void OrgJsoupSelectElements_initWithInt_(OrgJsoupSelectElements *self, jint initialCapacity);

FOUNDATION_EXPORT OrgJsoupSelectElements *new_OrgJsoupSelectElements_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectElements *create_OrgJsoupSelectElements_initWithInt_(jint initialCapacity);

FOUNDATION_EXPORT void OrgJsoupSelectElements_initWithJavaUtilCollection_(OrgJsoupSelectElements *self, id<JavaUtilCollection> elements);

FOUNDATION_EXPORT OrgJsoupSelectElements *new_OrgJsoupSelectElements_initWithJavaUtilCollection_(id<JavaUtilCollection> elements) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectElements *create_OrgJsoupSelectElements_initWithJavaUtilCollection_(id<JavaUtilCollection> elements);

FOUNDATION_EXPORT void OrgJsoupSelectElements_initWithJavaUtilList_(OrgJsoupSelectElements *self, id<JavaUtilList> elements);

FOUNDATION_EXPORT OrgJsoupSelectElements *new_OrgJsoupSelectElements_initWithJavaUtilList_(id<JavaUtilList> elements) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectElements *create_OrgJsoupSelectElements_initWithJavaUtilList_(id<JavaUtilList> elements);

FOUNDATION_EXPORT void OrgJsoupSelectElements_initWithOrgJsoupNodesElementArray_(OrgJsoupSelectElements *self, IOSObjectArray *elements);

FOUNDATION_EXPORT OrgJsoupSelectElements *new_OrgJsoupSelectElements_initWithOrgJsoupNodesElementArray_(IOSObjectArray *elements) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectElements *create_OrgJsoupSelectElements_initWithOrgJsoupNodesElementArray_(IOSObjectArray *elements);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSelectElements)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupSelectElements")