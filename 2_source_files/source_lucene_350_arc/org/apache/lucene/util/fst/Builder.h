//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/Builder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder")
#ifdef RESTRICT_OrgApacheLuceneUtilFstBuilder
#define INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstBuilder
#ifdef INCLUDE_OrgApacheLuceneUtilFstBuilder_UnCompiledNode
#define INCLUDE_OrgApacheLuceneUtilFstBuilder_Node 1
#endif
#ifdef INCLUDE_OrgApacheLuceneUtilFstBuilder_CompiledNode
#define INCLUDE_OrgApacheLuceneUtilFstBuilder_Node 1
#endif

#if !defined (OrgApacheLuceneUtilFstBuilder_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder || defined(INCLUDE_OrgApacheLuceneUtilFstBuilder))
#define OrgApacheLuceneUtilFstBuilder_

@class IOSCharArray;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstFST_INPUT_TYPE;
@class OrgApacheLuceneUtilFstOutputs;
@class OrgApacheLuceneUtilIntsRef;
@protocol JavaLangCharSequence;

@interface OrgApacheLuceneUtilFstBuilder : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE:(OrgApacheLuceneUtilFstFST_INPUT_TYPE *)inputType
                                                     withInt:(jint)minSuffixCount1
                                                     withInt:(jint)minSuffixCount2
                                                 withBoolean:(jboolean)doShareSuffix
                                                 withBoolean:(jboolean)doShareNonSingletonNodes
                                                     withInt:(jint)shareMaxTailLength
                           withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs;

- (instancetype)initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE:(OrgApacheLuceneUtilFstFST_INPUT_TYPE *)inputType
                           withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs;

- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)input
                                    withId:(id)output;

- (void)addWithCharArray:(IOSCharArray *)s
                 withInt:(jint)offset
                 withInt:(jint)length
                  withId:(id)output;

- (void)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                             withId:(id)output;

- (void)addWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)input
                                   withId:(id)output;

- (OrgApacheLuceneUtilFstFST *)finish;

- (jint)getMappedStateCount;

- (jlong)getTermCount;

- (jint)getTotStateCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstBuilder *self, OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, OrgApacheLuceneUtilFstOutputs *outputs);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder *new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, OrgApacheLuceneUtilFstOutputs *outputs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder *create_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, OrgApacheLuceneUtilFstOutputs *outputs);

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstBuilder *self, OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, jint minSuffixCount1, jint minSuffixCount2, jboolean doShareSuffix, jboolean doShareNonSingletonNodes, jint shareMaxTailLength, OrgApacheLuceneUtilFstOutputs *outputs);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder *new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, jint minSuffixCount1, jint minSuffixCount2, jboolean doShareSuffix, jboolean doShareNonSingletonNodes, jint shareMaxTailLength, OrgApacheLuceneUtilFstOutputs *outputs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder *create_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstFST_INPUT_TYPE *inputType, jint minSuffixCount1, jint minSuffixCount2, jboolean doShareSuffix, jboolean doShareNonSingletonNodes, jint shareMaxTailLength, OrgApacheLuceneUtilFstOutputs *outputs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder)

#endif

#if !defined (OrgApacheLuceneUtilFstBuilder_Arc_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder || defined(INCLUDE_OrgApacheLuceneUtilFstBuilder_Arc))
#define OrgApacheLuceneUtilFstBuilder_Arc_

@protocol OrgApacheLuceneUtilFstBuilder_Node;

@interface OrgApacheLuceneUtilFstBuilder_Arc : NSObject {
 @public
  jint label_;
  id<OrgApacheLuceneUtilFstBuilder_Node> target_;
  jboolean isFinal_;
  id output_;
  id nextFinalOutput_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_Arc)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, target_, id<OrgApacheLuceneUtilFstBuilder_Node>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, output_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, nextFinalOutput_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_Arc_init(OrgApacheLuceneUtilFstBuilder_Arc *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_Arc *new_OrgApacheLuceneUtilFstBuilder_Arc_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_Arc *create_OrgApacheLuceneUtilFstBuilder_Arc_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_Arc)

#endif

#if !defined (OrgApacheLuceneUtilFstBuilder_Node_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder || defined(INCLUDE_OrgApacheLuceneUtilFstBuilder_Node))
#define OrgApacheLuceneUtilFstBuilder_Node_

@protocol OrgApacheLuceneUtilFstBuilder_Node < JavaObject >

- (jboolean)isCompiled;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_Node)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_Node)

#endif

#if !defined (OrgApacheLuceneUtilFstBuilder_CompiledNode_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder || defined(INCLUDE_OrgApacheLuceneUtilFstBuilder_CompiledNode))
#define OrgApacheLuceneUtilFstBuilder_CompiledNode_

@interface OrgApacheLuceneUtilFstBuilder_CompiledNode : NSObject < OrgApacheLuceneUtilFstBuilder_Node > {
 @public
  jint address_;
}

#pragma mark Public

- (jboolean)isCompiled;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_CompiledNode)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_CompiledNode_init(OrgApacheLuceneUtilFstBuilder_CompiledNode *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_CompiledNode *new_OrgApacheLuceneUtilFstBuilder_CompiledNode_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_CompiledNode *create_OrgApacheLuceneUtilFstBuilder_CompiledNode_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_CompiledNode)

#endif

#if !defined (OrgApacheLuceneUtilFstBuilder_UnCompiledNode_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder || defined(INCLUDE_OrgApacheLuceneUtilFstBuilder_UnCompiledNode))
#define OrgApacheLuceneUtilFstBuilder_UnCompiledNode_

@class IOSObjectArray;
@class OrgApacheLuceneUtilFstBuilder;
@protocol OrgApacheLuceneUtilFstBuilder_Node;

@interface OrgApacheLuceneUtilFstBuilder_UnCompiledNode : NSObject < OrgApacheLuceneUtilFstBuilder_Node > {
 @public
  OrgApacheLuceneUtilFstBuilder *owner_;
  jint numArcs_;
  IOSObjectArray *arcs_;
  id output_;
  jboolean isFinal_;
  jlong inputCount_;
  jint depth_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstBuilder:(OrgApacheLuceneUtilFstBuilder *)owner
                                              withInt:(jint)depth;

- (void)addArcWithInt:(jint)label
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target;

- (void)clear;

- (void)deleteLastWithInt:(jint)label
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target;

- (id)getLastOutputWithInt:(jint)labelToMatch;

- (jboolean)isCompiled;

- (void)prependOutputWithId:(id)outputPrefix;

- (void)replaceLastWithInt:(jint)labelToMatch
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target
                    withId:(id)nextFinalOutput
               withBoolean:(jboolean)isFinal;

- (void)setLastOutputWithInt:(jint)labelToMatch
                      withId:(id)newOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_UnCompiledNode)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, owner_, OrgApacheLuceneUtilFstBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, arcs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, output_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *self, OrgApacheLuceneUtilFstBuilder *owner, jint depth);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_UnCompiledNode *new_OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(OrgApacheLuceneUtilFstBuilder *owner, jint depth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_UnCompiledNode *create_OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(OrgApacheLuceneUtilFstBuilder *owner, jint depth);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstBuilder")
