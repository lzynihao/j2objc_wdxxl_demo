//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/tuple/ImmutablePair.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/commons/lang3/tuple/ImmutablePair.h"
#include "org/apache/commons/lang3/tuple/Pair.h"

inline jlong OrgApacheCommonsLang3TupleImmutablePair_get_serialVersionUID();
#define OrgApacheCommonsLang3TupleImmutablePair_serialVersionUID 4954918890077093841LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TupleImmutablePair, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3TupleImmutablePair

+ (OrgApacheCommonsLang3TupleImmutablePair *)ofWithId:(id)left
                                               withId:(id)right {
  return OrgApacheCommonsLang3TupleImmutablePair_ofWithId_withId_(left, right);
}

- (instancetype)initWithId:(id)left
                    withId:(id)right {
  OrgApacheCommonsLang3TupleImmutablePair_initWithId_withId_(self, left, right);
  return self;
}

- (id)getLeft {
  return left_;
}

- (id)getRight {
  return right_;
}

- (id)setValueWithId:(id)value {
  @throw new_JavaLangUnsupportedOperationException_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheCommonsLang3TupleImmutablePair;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x1, 6, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(ofWithId:withId:);
  methods[1].selector = @selector(initWithId:withId:);
  methods[2].selector = @selector(getLeft);
  methods[3].selector = @selector(getRight);
  methods[4].selector = @selector(setValueWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3TupleImmutablePair_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "left_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 9, -1 },
    { "right_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "of", "LNSObject;LNSObject;", "<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;", "(TL;TR;)V", "()TL;", "()TR;", "setValue", "LNSObject;", "(TR;)TR;", "TL;", "TR;", "<L:Ljava/lang/Object;R:Ljava/lang/Object;>Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TupleImmutablePair = { "ImmutablePair", "org.apache.commons.lang3.tuple", ptrTable, methods, fields, 7, 0x11, 5, 3, -1, -1, -1, 11, -1 };
  return &_OrgApacheCommonsLang3TupleImmutablePair;
}

@end

OrgApacheCommonsLang3TupleImmutablePair *OrgApacheCommonsLang3TupleImmutablePair_ofWithId_withId_(id left, id right) {
  OrgApacheCommonsLang3TupleImmutablePair_initialize();
  return new_OrgApacheCommonsLang3TupleImmutablePair_initWithId_withId_(left, right);
}

void OrgApacheCommonsLang3TupleImmutablePair_initWithId_withId_(OrgApacheCommonsLang3TupleImmutablePair *self, id left, id right) {
  OrgApacheCommonsLang3TuplePair_init(self);
  self->left_ = left;
  self->right_ = right;
}

OrgApacheCommonsLang3TupleImmutablePair *new_OrgApacheCommonsLang3TupleImmutablePair_initWithId_withId_(id left, id right) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TupleImmutablePair, initWithId_withId_, left, right)
}

OrgApacheCommonsLang3TupleImmutablePair *create_OrgApacheCommonsLang3TupleImmutablePair_initWithId_withId_(id left, id right) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TupleImmutablePair, initWithId_withId_, left, right)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TupleImmutablePair)
