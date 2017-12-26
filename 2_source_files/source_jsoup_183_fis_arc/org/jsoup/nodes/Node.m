//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/nodes/Node.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "org/jsoup/helper/StringUtil.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/nodes/Attributes.h"
#include "org/jsoup/nodes/Document.h"
#include "org/jsoup/nodes/Element.h"
#include "org/jsoup/nodes/Node.h"
#include "org/jsoup/parser/Parser.h"
#include "org/jsoup/select/Elements.h"
#include "org/jsoup/select/NodeTraversor.h"
#include "org/jsoup/select/NodeVisitor.h"

@interface OrgJsoupNodesNode ()

- (void)addSiblingHtmlWithInt:(jint)index
                 withNSString:(NSString *)html;

- (OrgJsoupNodesElement *)getDeepChildWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)el;

- (void)reindexChildrenWithInt:(jint)start;

@end

inline id<JavaUtilList> OrgJsoupNodesNode_get_EMPTY_NODES();
static id<JavaUtilList> OrgJsoupNodesNode_EMPTY_NODES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupNodesNode, EMPTY_NODES, id<JavaUtilList>)

__attribute__((unused)) static jint OrgJsoupNodesNode_childNodeSize(OrgJsoupNodesNode *self);

__attribute__((unused)) static void OrgJsoupNodesNode_addSiblingHtmlWithInt_withNSString_(OrgJsoupNodesNode *self, jint index, NSString *html);

__attribute__((unused)) static OrgJsoupNodesElement *OrgJsoupNodesNode_getDeepChildWithOrgJsoupNodesElement_(OrgJsoupNodesNode *self, OrgJsoupNodesElement *el);

__attribute__((unused)) static void OrgJsoupNodesNode_reindexChildrenWithInt_(OrgJsoupNodesNode *self, jint start);

@interface OrgJsoupNodesNode_1 : NSObject < OrgJsoupSelectNodeVisitor > {
 @public
  NSString *val$baseUri_;
}

- (instancetype)initWithNSString:(NSString *)capture$0;

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth;

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupNodesNode_1)

__attribute__((unused)) static void OrgJsoupNodesNode_1_initWithNSString_(OrgJsoupNodesNode_1 *self, NSString *capture$0);

__attribute__((unused)) static OrgJsoupNodesNode_1 *new_OrgJsoupNodesNode_1_initWithNSString_(NSString *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupNodesNode_1 *create_OrgJsoupNodesNode_1_initWithNSString_(NSString *capture$0);

@interface OrgJsoupNodesNode_OuterHtmlVisitor : NSObject < OrgJsoupSelectNodeVisitor > {
 @public
  JavaLangStringBuilder *accum_;
  OrgJsoupNodesDocument_OutputSettings *out_;
}

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
     withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg;

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth;

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupNodesNode_OuterHtmlVisitor)

J2OBJC_FIELD_SETTER(OrgJsoupNodesNode_OuterHtmlVisitor, accum_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(OrgJsoupNodesNode_OuterHtmlVisitor, out_, OrgJsoupNodesDocument_OutputSettings *)

__attribute__((unused)) static void OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(OrgJsoupNodesNode_OuterHtmlVisitor *self, JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg);

__attribute__((unused)) static OrgJsoupNodesNode_OuterHtmlVisitor *new_OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupNodesNode_OuterHtmlVisitor *create_OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupNodesNode_OuterHtmlVisitor)

J2OBJC_INITIALIZED_DEFN(OrgJsoupNodesNode)

@implementation OrgJsoupNodesNode

- (instancetype)initWithNSString:(NSString *)baseUri
     withOrgJsoupNodesAttributes:(OrgJsoupNodesAttributes *)attributes {
  OrgJsoupNodesNode_initWithNSString_withOrgJsoupNodesAttributes_(self, baseUri, attributes);
  return self;
}

- (instancetype)initWithNSString:(NSString *)baseUri {
  OrgJsoupNodesNode_initWithNSString_(self, baseUri);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJsoupNodesNode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)nodeName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)attrWithNSString:(NSString *)attributeKey {
  OrgJsoupHelperValidate_notNullWithId_(attributeKey);
  if ([((OrgJsoupNodesAttributes *) nil_chk(attributes_)) hasKeyWithNSString:attributeKey]) return [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) getWithNSString:attributeKey];
  else if ([((NSString *) nil_chk([((NSString *) nil_chk(attributeKey)) lowercaseString])) java_hasPrefix:@"abs:"]) return [self absUrlWithNSString:[attributeKey java_substring:[@"abs:" java_length]]];
  else return @"";
}

- (OrgJsoupNodesAttributes *)attributes {
  return attributes_;
}

- (OrgJsoupNodesNode *)attrWithNSString:(NSString *)attributeKey
                           withNSString:(NSString *)attributeValue {
  [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) putWithNSString:attributeKey withNSString:attributeValue];
  return self;
}

- (jboolean)hasAttrWithNSString:(NSString *)attributeKey {
  OrgJsoupHelperValidate_notNullWithId_(attributeKey);
  if ([((NSString *) nil_chk(attributeKey)) java_hasPrefix:@"abs:"]) {
    NSString *key = [attributeKey java_substring:[@"abs:" java_length]];
    if ([((OrgJsoupNodesAttributes *) nil_chk(attributes_)) hasKeyWithNSString:key] && ![((NSString *) nil_chk([self absUrlWithNSString:key])) isEqual:@""]) return true;
  }
  return [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) hasKeyWithNSString:attributeKey];
}

- (OrgJsoupNodesNode *)removeAttrWithNSString:(NSString *)attributeKey {
  OrgJsoupHelperValidate_notNullWithId_(attributeKey);
  [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) removeWithNSString:attributeKey];
  return self;
}

- (NSString *)baseUri {
  return baseUri_;
}

- (void)setBaseUriWithNSString:(NSString *)baseUri {
  OrgJsoupHelperValidate_notNullWithId_(baseUri);
  (void) [self traverseWithOrgJsoupSelectNodeVisitor:new_OrgJsoupNodesNode_1_initWithNSString_(baseUri)];
}

- (NSString *)absUrlWithNSString:(NSString *)attributeKey {
  OrgJsoupHelperValidate_notEmptyWithNSString_(attributeKey);
  if (![self hasAttrWithNSString:attributeKey]) {
    return @"";
  }
  else {
    return OrgJsoupHelperStringUtil_resolveWithNSString_withNSString_(baseUri_, [self attrWithNSString:attributeKey]);
  }
}

- (OrgJsoupNodesNode *)childNodeWithInt:(jint)index {
  return [((id<JavaUtilList>) nil_chk(childNodes_)) getWithInt:index];
}

- (id<JavaUtilList>)childNodes {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(childNodes_);
}

- (id<JavaUtilList>)childNodesCopy {
  id<JavaUtilList> children = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(childNodes_)) size]);
  for (OrgJsoupNodesNode * __strong node in nil_chk(childNodes_)) {
    [children addWithId:[((OrgJsoupNodesNode *) nil_chk(node)) java_clone]];
  }
  return children;
}

- (jint)childNodeSize {
  return OrgJsoupNodesNode_childNodeSize(self);
}

- (IOSObjectArray *)childNodesAsArray {
  return [((id<JavaUtilList>) nil_chk(childNodes_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:OrgJsoupNodesNode_childNodeSize(self) type:OrgJsoupNodesNode_class_()]];
}

- (OrgJsoupNodesNode *)parent {
  return parentNode_;
}

- (OrgJsoupNodesNode *)parentNode {
  return parentNode_;
}

- (OrgJsoupNodesDocument *)ownerDocument {
  if ([self isKindOfClass:[OrgJsoupNodesDocument class]]) return (OrgJsoupNodesDocument *) cast_chk(self, [OrgJsoupNodesDocument class]);
  else if (parentNode_ == nil) return nil;
  else return [parentNode_ ownerDocument];
}

- (void)remove {
  OrgJsoupHelperValidate_notNullWithId_(parentNode_);
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) removeChildWithOrgJsoupNodesNode:self];
}

- (OrgJsoupNodesNode *)beforeWithNSString:(NSString *)html {
  OrgJsoupNodesNode_addSiblingHtmlWithInt_withNSString_(self, siblingIndex_, html);
  return self;
}

- (OrgJsoupNodesNode *)beforeWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node {
  OrgJsoupHelperValidate_notNullWithId_(node);
  OrgJsoupHelperValidate_notNullWithId_(parentNode_);
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) addChildrenWithInt:siblingIndex_ withOrgJsoupNodesNodeArray:[IOSObjectArray newArrayWithObjects:(id[]){ node } count:1 type:OrgJsoupNodesNode_class_()]];
  return self;
}

- (OrgJsoupNodesNode *)afterWithNSString:(NSString *)html {
  OrgJsoupNodesNode_addSiblingHtmlWithInt_withNSString_(self, siblingIndex_ + 1, html);
  return self;
}

- (OrgJsoupNodesNode *)afterWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node {
  OrgJsoupHelperValidate_notNullWithId_(node);
  OrgJsoupHelperValidate_notNullWithId_(parentNode_);
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) addChildrenWithInt:siblingIndex_ + 1 withOrgJsoupNodesNodeArray:[IOSObjectArray newArrayWithObjects:(id[]){ node } count:1 type:OrgJsoupNodesNode_class_()]];
  return self;
}

- (void)addSiblingHtmlWithInt:(jint)index
                 withNSString:(NSString *)html {
  OrgJsoupNodesNode_addSiblingHtmlWithInt_withNSString_(self, index, html);
}

- (OrgJsoupNodesNode *)wrapWithNSString:(NSString *)html {
  OrgJsoupHelperValidate_notEmptyWithNSString_(html);
  OrgJsoupNodesElement *context = [[self parent] isKindOfClass:[OrgJsoupNodesElement class]] ? (OrgJsoupNodesElement *) cast_chk([self parent], [OrgJsoupNodesElement class]) : nil;
  id<JavaUtilList> wrapChildren = OrgJsoupParserParser_parseFragmentWithNSString_withOrgJsoupNodesElement_withNSString_(html, context, [self baseUri]);
  OrgJsoupNodesNode *wrapNode = [((id<JavaUtilList>) nil_chk(wrapChildren)) getWithInt:0];
  if (wrapNode == nil || !([wrapNode isKindOfClass:[OrgJsoupNodesElement class]])) return nil;
  OrgJsoupNodesElement *wrap = (OrgJsoupNodesElement *) cast_chk(wrapNode, [OrgJsoupNodesElement class]);
  OrgJsoupNodesElement *deepest = OrgJsoupNodesNode_getDeepChildWithOrgJsoupNodesElement_(self, wrap);
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) replaceChildWithOrgJsoupNodesNode:self withOrgJsoupNodesNode:wrap];
  [((OrgJsoupNodesElement *) nil_chk(deepest)) addChildrenWithOrgJsoupNodesNodeArray:[IOSObjectArray newArrayWithObjects:(id[]){ self } count:1 type:OrgJsoupNodesNode_class_()]];
  if ([wrapChildren size] > 0) {
    for (jint i = 0; i < [wrapChildren size]; i++) {
      OrgJsoupNodesNode *remainder = [wrapChildren getWithInt:i];
      [((OrgJsoupNodesNode *) nil_chk(((OrgJsoupNodesNode *) nil_chk(remainder))->parentNode_)) removeChildWithOrgJsoupNodesNode:remainder];
      (void) [wrap appendChildWithOrgJsoupNodesNode:remainder];
    }
  }
  return self;
}

- (OrgJsoupNodesNode *)unwrap {
  OrgJsoupHelperValidate_notNullWithId_(parentNode_);
  OrgJsoupNodesNode *firstChild = [((id<JavaUtilList>) nil_chk(childNodes_)) size] > 0 ? [((id<JavaUtilList>) nil_chk(childNodes_)) getWithInt:0] : nil;
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) addChildrenWithInt:siblingIndex_ withOrgJsoupNodesNodeArray:[self childNodesAsArray]];
  [self remove];
  return firstChild;
}

- (OrgJsoupNodesElement *)getDeepChildWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)el {
  return OrgJsoupNodesNode_getDeepChildWithOrgJsoupNodesElement_(self, el);
}

- (void)replaceWithWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)inArg {
  OrgJsoupHelperValidate_notNullWithId_(inArg);
  OrgJsoupHelperValidate_notNullWithId_(parentNode_);
  [((OrgJsoupNodesNode *) nil_chk(parentNode_)) replaceChildWithOrgJsoupNodesNode:self withOrgJsoupNodesNode:inArg];
}

- (void)setParentNodeWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)parentNode {
  if (self->parentNode_ != nil) [self->parentNode_ removeChildWithOrgJsoupNodesNode:self];
  self->parentNode_ = parentNode;
}

- (void)replaceChildWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)outArg
                    withOrgJsoupNodesNode:(OrgJsoupNodesNode *)inArg {
  OrgJsoupHelperValidate_isTrueWithBoolean_(((OrgJsoupNodesNode *) nil_chk(outArg))->parentNode_ == self);
  OrgJsoupHelperValidate_notNullWithId_(inArg);
  if (((OrgJsoupNodesNode *) nil_chk(inArg))->parentNode_ != nil) [inArg->parentNode_ removeChildWithOrgJsoupNodesNode:inArg];
  jint index = outArg->siblingIndex_;
  (void) [((id<JavaUtilList>) nil_chk(childNodes_)) setWithInt:index withId:inArg];
  inArg->parentNode_ = self;
  [inArg setSiblingIndexWithInt:index];
  outArg->parentNode_ = nil;
}

- (void)removeChildWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)outArg {
  OrgJsoupHelperValidate_isTrueWithBoolean_(((OrgJsoupNodesNode *) nil_chk(outArg))->parentNode_ == self);
  jint index = outArg->siblingIndex_;
  (void) [((id<JavaUtilList>) nil_chk(childNodes_)) removeWithInt:index];
  OrgJsoupNodesNode_reindexChildrenWithInt_(self, index);
  outArg->parentNode_ = nil;
}

- (void)addChildrenWithOrgJsoupNodesNodeArray:(IOSObjectArray *)children {
  {
    IOSObjectArray *a__ = children;
    OrgJsoupNodesNode * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgJsoupNodesNode * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgJsoupNodesNode *child = *b__++;
      [self reparentChildWithOrgJsoupNodesNode:child];
      [self ensureChildNodes];
      [((id<JavaUtilList>) nil_chk(childNodes_)) addWithId:child];
      [((OrgJsoupNodesNode *) nil_chk(child)) setSiblingIndexWithInt:[((id<JavaUtilList>) nil_chk(childNodes_)) size] - 1];
    }
  }
}

- (void)addChildrenWithInt:(jint)index
withOrgJsoupNodesNodeArray:(IOSObjectArray *)children {
  OrgJsoupHelperValidate_noNullElementsWithNSObjectArray_(children);
  for (jint i = ((IOSObjectArray *) nil_chk(children))->size_ - 1; i >= 0; i--) {
    OrgJsoupNodesNode *in = IOSObjectArray_Get(children, i);
    [self reparentChildWithOrgJsoupNodesNode:in];
    [self ensureChildNodes];
    [((id<JavaUtilList>) nil_chk(childNodes_)) addWithInt:index withId:in];
  }
  OrgJsoupNodesNode_reindexChildrenWithInt_(self, index);
}

- (void)ensureChildNodes {
  if (childNodes_ == OrgJsoupNodesNode_EMPTY_NODES) {
    childNodes_ = new_JavaUtilArrayList_initWithInt_(4);
  }
}

- (void)reparentChildWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)child {
  if (((OrgJsoupNodesNode *) nil_chk(child))->parentNode_ != nil) [child->parentNode_ removeChildWithOrgJsoupNodesNode:child];
  [child setParentNodeWithOrgJsoupNodesNode:self];
}

- (void)reindexChildrenWithInt:(jint)start {
  OrgJsoupNodesNode_reindexChildrenWithInt_(self, start);
}

- (id<JavaUtilList>)siblingNodes {
  if (parentNode_ == nil) return JavaUtilCollections_emptyList();
  id<JavaUtilList> nodes = parentNode_->childNodes_;
  id<JavaUtilList> siblings = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(nodes)) size] - 1);
  for (OrgJsoupNodesNode * __strong node in nodes) if (node != self) [siblings addWithId:node];
  return siblings;
}

- (OrgJsoupNodesNode *)nextSibling {
  if (parentNode_ == nil) return nil;
  id<JavaUtilList> siblings = parentNode_->childNodes_;
  jint index = siblingIndex_ + 1;
  if ([((id<JavaUtilList>) nil_chk(siblings)) size] > index) return [siblings getWithInt:index];
  else return nil;
}

- (OrgJsoupNodesNode *)previousSibling {
  if (parentNode_ == nil) return nil;
  if (siblingIndex_ > 0) return [((id<JavaUtilList>) nil_chk(parentNode_->childNodes_)) getWithInt:siblingIndex_ - 1];
  else return nil;
}

- (jint)siblingIndex {
  return siblingIndex_;
}

- (void)setSiblingIndexWithInt:(jint)siblingIndex {
  self->siblingIndex_ = siblingIndex;
}

- (OrgJsoupNodesNode *)traverseWithOrgJsoupSelectNodeVisitor:(id<OrgJsoupSelectNodeVisitor>)nodeVisitor {
  OrgJsoupHelperValidate_notNullWithId_(nodeVisitor);
  OrgJsoupSelectNodeTraversor *traversor = new_OrgJsoupSelectNodeTraversor_initWithOrgJsoupSelectNodeVisitor_(nodeVisitor);
  [traversor traverseWithOrgJsoupNodesNode:self];
  return self;
}

- (NSString *)outerHtml {
  JavaLangStringBuilder *accum = new_JavaLangStringBuilder_initWithInt_(128);
  [self outerHtmlWithJavaLangStringBuilder:accum];
  return [accum description];
}

- (void)outerHtmlWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum {
  [new_OrgJsoupSelectNodeTraversor_initWithOrgJsoupSelectNodeVisitor_(new_OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(accum, [self getOutputSettings])) traverseWithOrgJsoupNodesNode:self];
}

- (OrgJsoupNodesDocument_OutputSettings *)getOutputSettings {
  return [self ownerDocument] != nil ? [((OrgJsoupNodesDocument *) nil_chk([self ownerDocument])) outputSettings] : [(new_OrgJsoupNodesDocument_initWithNSString_(@"")) outputSettings];
}

- (void)outerHtmlHeadWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)outerHtmlTailWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (NSString *)description {
  return [self outerHtml];
}

- (void)indentWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                withInt:(jint)depth
withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(accum)) appendWithNSString:@"\n"])) appendWithNSString:OrgJsoupHelperStringUtil_paddingWithInt_(depth * [((OrgJsoupNodesDocument_OutputSettings *) nil_chk(outArg)) indentAmount])];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self java_getClass] != [o java_getClass]) return false;
  OrgJsoupNodesNode *node = (OrgJsoupNodesNode *) cast_chk(o, [OrgJsoupNodesNode class]);
  if (childNodes_ != nil ? ![childNodes_ isEqual:node->childNodes_] : node->childNodes_ != nil) return false;
  return !(attributes_ != nil ? ![attributes_ isEqual:node->attributes_] : node->attributes_ != nil);
}

- (NSUInteger)hash {
  jint result = childNodes_ != nil ? ((jint) [childNodes_ hash]) : 0;
  result = 31 * result + (attributes_ != nil ? ((jint) [attributes_ hash]) : 0);
  return result;
}

- (OrgJsoupNodesNode *)java_clone {
  OrgJsoupNodesNode *thisClone = [self doCloneWithOrgJsoupNodesNode:nil];
  JavaUtilLinkedList *nodesToProcess = new_JavaUtilLinkedList_init();
  [nodesToProcess addWithId:thisClone];
  while (![nodesToProcess isEmpty]) {
    OrgJsoupNodesNode *currParent = [nodesToProcess remove];
    for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(((OrgJsoupNodesNode *) nil_chk(currParent))->childNodes_)) size]; i++) {
      OrgJsoupNodesNode *childClone = [((OrgJsoupNodesNode *) nil_chk([((id<JavaUtilList>) nil_chk(currParent->childNodes_)) getWithInt:i])) doCloneWithOrgJsoupNodesNode:currParent];
      (void) [((id<JavaUtilList>) nil_chk(currParent->childNodes_)) setWithInt:i withId:childClone];
      [nodesToProcess addWithId:childClone];
    }
  }
  return thisClone;
}

- (OrgJsoupNodesNode *)doCloneWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)parent {
  OrgJsoupNodesNode *clone;
  @try {
    clone = (OrgJsoupNodesNode *) cast_chk([super java_clone], [OrgJsoupNodesNode class]);
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw new_JavaLangRuntimeException_initWithNSException_(e);
  }
  ((OrgJsoupNodesNode *) nil_chk(clone))->parentNode_ = parent;
  clone->siblingIndex_ = parent == nil ? 0 : siblingIndex_;
  clone->attributes_ = attributes_ != nil ? [attributes_ java_clone] : nil;
  clone->baseUri_ = baseUri_;
  clone->childNodes_ = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(childNodes_)) size]);
  for (OrgJsoupNodesNode * __strong child in childNodes_) [((id<JavaUtilList>) nil_chk(clone->childNodes_)) addWithId:child];
  return clone;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesAttributes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgJsoupNodesNode;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 13, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 13, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 15, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesElement;", 0x2, 17, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 20, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 23, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x84, 24, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x84, 24, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 27, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 28, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 29, 9, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 30, 31, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 32, 33, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument_OutputSettings;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 36, 35, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 37, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 38, 35, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 39, 40, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 41, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 42, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x4, 43, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withOrgJsoupNodesAttributes:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(nodeName);
  methods[4].selector = @selector(attrWithNSString:);
  methods[5].selector = @selector(attributes);
  methods[6].selector = @selector(attrWithNSString:withNSString:);
  methods[7].selector = @selector(hasAttrWithNSString:);
  methods[8].selector = @selector(removeAttrWithNSString:);
  methods[9].selector = @selector(baseUri);
  methods[10].selector = @selector(setBaseUriWithNSString:);
  methods[11].selector = @selector(absUrlWithNSString:);
  methods[12].selector = @selector(childNodeWithInt:);
  methods[13].selector = @selector(childNodes);
  methods[14].selector = @selector(childNodesCopy);
  methods[15].selector = @selector(childNodeSize);
  methods[16].selector = @selector(childNodesAsArray);
  methods[17].selector = @selector(parent);
  methods[18].selector = @selector(parentNode);
  methods[19].selector = @selector(ownerDocument);
  methods[20].selector = @selector(remove);
  methods[21].selector = @selector(beforeWithNSString:);
  methods[22].selector = @selector(beforeWithOrgJsoupNodesNode:);
  methods[23].selector = @selector(afterWithNSString:);
  methods[24].selector = @selector(afterWithOrgJsoupNodesNode:);
  methods[25].selector = @selector(addSiblingHtmlWithInt:withNSString:);
  methods[26].selector = @selector(wrapWithNSString:);
  methods[27].selector = @selector(unwrap);
  methods[28].selector = @selector(getDeepChildWithOrgJsoupNodesElement:);
  methods[29].selector = @selector(replaceWithWithOrgJsoupNodesNode:);
  methods[30].selector = @selector(setParentNodeWithOrgJsoupNodesNode:);
  methods[31].selector = @selector(replaceChildWithOrgJsoupNodesNode:withOrgJsoupNodesNode:);
  methods[32].selector = @selector(removeChildWithOrgJsoupNodesNode:);
  methods[33].selector = @selector(addChildrenWithOrgJsoupNodesNodeArray:);
  methods[34].selector = @selector(addChildrenWithInt:withOrgJsoupNodesNodeArray:);
  methods[35].selector = @selector(ensureChildNodes);
  methods[36].selector = @selector(reparentChildWithOrgJsoupNodesNode:);
  methods[37].selector = @selector(reindexChildrenWithInt:);
  methods[38].selector = @selector(siblingNodes);
  methods[39].selector = @selector(nextSibling);
  methods[40].selector = @selector(previousSibling);
  methods[41].selector = @selector(siblingIndex);
  methods[42].selector = @selector(setSiblingIndexWithInt:);
  methods[43].selector = @selector(traverseWithOrgJsoupSelectNodeVisitor:);
  methods[44].selector = @selector(outerHtml);
  methods[45].selector = @selector(outerHtmlWithJavaLangStringBuilder:);
  methods[46].selector = @selector(getOutputSettings);
  methods[47].selector = @selector(outerHtmlHeadWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[48].selector = @selector(outerHtmlTailWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[49].selector = @selector(description);
  methods[50].selector = @selector(indentWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[51].selector = @selector(isEqual:);
  methods[52].selector = @selector(hash);
  methods[53].selector = @selector(java_clone);
  methods[54].selector = @selector(doCloneWithOrgJsoupNodesNode:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_NODES", "LJavaUtilList;", .constantValue.asLong = 0, 0x1a, -1, 44, 45, -1 },
    { "parentNode_", "LOrgJsoupNodesNode;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "childNodes_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 45, -1 },
    { "attributes_", "LOrgJsoupNodesAttributes;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "baseUri_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "siblingIndex_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgJsoupNodesAttributes;", "LNSString;", "attr", "LNSString;LNSString;", "hasAttr", "removeAttr", "setBaseUri", "absUrl", "childNode", "I", "()Ljava/util/List<Lorg/jsoup/nodes/Node;>;", "before", "LOrgJsoupNodesNode;", "after", "addSiblingHtml", "ILNSString;", "wrap", "getDeepChild", "LOrgJsoupNodesElement;", "replaceWith", "setParentNode", "replaceChild", "LOrgJsoupNodesNode;LOrgJsoupNodesNode;", "removeChild", "addChildren", "[LOrgJsoupNodesNode;", "I[LOrgJsoupNodesNode;", "reparentChild", "reindexChildren", "setSiblingIndex", "traverse", "LOrgJsoupSelectNodeVisitor;", "outerHtml", "LJavaLangStringBuilder;", "outerHtmlHead", "LJavaLangStringBuilder;ILOrgJsoupNodesDocument_OutputSettings;", "outerHtmlTail", "toString", "indent", "equals", "LNSObject;", "hashCode", "clone", "doClone", &OrgJsoupNodesNode_EMPTY_NODES, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;", "LOrgJsoupNodesNode_OuterHtmlVisitor;" };
  static const J2ObjcClassInfo _OrgJsoupNodesNode = { "Node", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x401, 55, 6, -1, 46, -1, -1, -1 };
  return &_OrgJsoupNodesNode;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

+ (void)initialize {
  if (self == [OrgJsoupNodesNode class]) {
    OrgJsoupNodesNode_EMPTY_NODES = JavaUtilCollections_emptyList();
    J2OBJC_SET_INITIALIZED(OrgJsoupNodesNode)
  }
}

@end

void OrgJsoupNodesNode_initWithNSString_withOrgJsoupNodesAttributes_(OrgJsoupNodesNode *self, NSString *baseUri, OrgJsoupNodesAttributes *attributes) {
  NSObject_init(self);
  OrgJsoupHelperValidate_notNullWithId_(baseUri);
  OrgJsoupHelperValidate_notNullWithId_(attributes);
  self->childNodes_ = OrgJsoupNodesNode_EMPTY_NODES;
  self->baseUri_ = [((NSString *) nil_chk(baseUri)) java_trim];
  self->attributes_ = attributes;
}

void OrgJsoupNodesNode_initWithNSString_(OrgJsoupNodesNode *self, NSString *baseUri) {
  OrgJsoupNodesNode_initWithNSString_withOrgJsoupNodesAttributes_(self, baseUri, new_OrgJsoupNodesAttributes_init());
}

void OrgJsoupNodesNode_init(OrgJsoupNodesNode *self) {
  NSObject_init(self);
  self->childNodes_ = OrgJsoupNodesNode_EMPTY_NODES;
  self->attributes_ = nil;
}

jint OrgJsoupNodesNode_childNodeSize(OrgJsoupNodesNode *self) {
  return [((id<JavaUtilList>) nil_chk(self->childNodes_)) size];
}

void OrgJsoupNodesNode_addSiblingHtmlWithInt_withNSString_(OrgJsoupNodesNode *self, jint index, NSString *html) {
  OrgJsoupHelperValidate_notNullWithId_(html);
  OrgJsoupHelperValidate_notNullWithId_(self->parentNode_);
  OrgJsoupNodesElement *context = [[self parent] isKindOfClass:[OrgJsoupNodesElement class]] ? (OrgJsoupNodesElement *) cast_chk([self parent], [OrgJsoupNodesElement class]) : nil;
  id<JavaUtilList> nodes = OrgJsoupParserParser_parseFragmentWithNSString_withOrgJsoupNodesElement_withNSString_(html, context, [self baseUri]);
  [((OrgJsoupNodesNode *) nil_chk(self->parentNode_)) addChildrenWithInt:index withOrgJsoupNodesNodeArray:[((id<JavaUtilList>) nil_chk(nodes)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[nodes size] type:OrgJsoupNodesNode_class_()]]];
}

OrgJsoupNodesElement *OrgJsoupNodesNode_getDeepChildWithOrgJsoupNodesElement_(OrgJsoupNodesNode *self, OrgJsoupNodesElement *el) {
  id<JavaUtilList> children = [((OrgJsoupNodesElement *) nil_chk(el)) children];
  if ([((id<JavaUtilList>) nil_chk(children)) size] > 0) return OrgJsoupNodesNode_getDeepChildWithOrgJsoupNodesElement_(self, [children getWithInt:0]);
  else return el;
}

void OrgJsoupNodesNode_reindexChildrenWithInt_(OrgJsoupNodesNode *self, jint start) {
  for (jint i = start; i < [((id<JavaUtilList>) nil_chk(self->childNodes_)) size]; i++) {
    [((OrgJsoupNodesNode *) nil_chk([((id<JavaUtilList>) nil_chk(self->childNodes_)) getWithInt:i])) setSiblingIndexWithInt:i];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesNode)

@implementation OrgJsoupNodesNode_1

- (instancetype)initWithNSString:(NSString *)capture$0 {
  OrgJsoupNodesNode_1_initWithNSString_(self, capture$0);
  return self;
}

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth {
  ((OrgJsoupNodesNode *) nil_chk(node))->baseUri_ = val$baseUri_;
}

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(headWithOrgJsoupNodesNode:withInt:);
  methods[2].selector = @selector(tailWithOrgJsoupNodesNode:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$baseUri_", "LNSString;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "head", "LOrgJsoupNodesNode;I", "tail", "LOrgJsoupNodesNode;", "setBaseUriWithNSString:" };
  static const J2ObjcClassInfo _OrgJsoupNodesNode_1 = { "", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x8018, 3, 1, 3, -1, 4, -1, -1 };
  return &_OrgJsoupNodesNode_1;
}

@end

void OrgJsoupNodesNode_1_initWithNSString_(OrgJsoupNodesNode_1 *self, NSString *capture$0) {
  self->val$baseUri_ = capture$0;
  NSObject_init(self);
}

OrgJsoupNodesNode_1 *new_OrgJsoupNodesNode_1_initWithNSString_(NSString *capture$0) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesNode_1, initWithNSString_, capture$0)
}

OrgJsoupNodesNode_1 *create_OrgJsoupNodesNode_1_initWithNSString_(NSString *capture$0) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesNode_1, initWithNSString_, capture$0)
}

@implementation OrgJsoupNodesNode_OuterHtmlVisitor

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
     withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(self, accum, outArg);
  return self;
}

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth {
  [((OrgJsoupNodesNode *) nil_chk(node)) outerHtmlHeadWithJavaLangStringBuilder:accum_ withInt:depth withOrgJsoupNodesDocument_OutputSettings:out_];
}

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)node
                          withInt:(jint)depth {
  if (![((NSString *) nil_chk([((OrgJsoupNodesNode *) nil_chk(node)) nodeName])) isEqual:@"#text"]) [node outerHtmlTailWithJavaLangStringBuilder:accum_ withInt:depth withOrgJsoupNodesDocument_OutputSettings:out_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangStringBuilder:withOrgJsoupNodesDocument_OutputSettings:);
  methods[1].selector = @selector(headWithOrgJsoupNodesNode:withInt:);
  methods[2].selector = @selector(tailWithOrgJsoupNodesNode:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "accum_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "out_", "LOrgJsoupNodesDocument_OutputSettings;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangStringBuilder;LOrgJsoupNodesDocument_OutputSettings;", "head", "LOrgJsoupNodesNode;I", "tail", "LOrgJsoupNodesNode;" };
  static const J2ObjcClassInfo _OrgJsoupNodesNode_OuterHtmlVisitor = { "OuterHtmlVisitor", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0xa, 3, 2, 4, -1, -1, -1, -1 };
  return &_OrgJsoupNodesNode_OuterHtmlVisitor;
}

@end

void OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(OrgJsoupNodesNode_OuterHtmlVisitor *self, JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg) {
  NSObject_init(self);
  self->accum_ = accum;
  self->out_ = outArg;
}

OrgJsoupNodesNode_OuterHtmlVisitor *new_OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesNode_OuterHtmlVisitor, initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_, accum, outArg)
}

OrgJsoupNodesNode_OuterHtmlVisitor *create_OrgJsoupNodesNode_OuterHtmlVisitor_initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_(JavaLangStringBuilder *accum, OrgJsoupNodesDocument_OutputSettings *outArg) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesNode_OuterHtmlVisitor, initWithJavaLangStringBuilder_withOrgJsoupNodesDocument_OutputSettings_, accum, outArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesNode_OuterHtmlVisitor)
