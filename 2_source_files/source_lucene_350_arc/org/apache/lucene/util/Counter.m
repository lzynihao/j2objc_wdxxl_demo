//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/Counter.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/util/Counter.h"

@interface OrgApacheLuceneUtilCounter_SerialCounter : OrgApacheLuceneUtilCounter {
 @public
  jlong count_;
}

- (instancetype)init;

- (jlong)addAndGetWithLong:(jlong)delta;

- (jlong)get;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCounter_SerialCounter)

__attribute__((unused)) static void OrgApacheLuceneUtilCounter_SerialCounter_init(OrgApacheLuceneUtilCounter_SerialCounter *self);

__attribute__((unused)) static OrgApacheLuceneUtilCounter_SerialCounter *new_OrgApacheLuceneUtilCounter_SerialCounter_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilCounter_SerialCounter *create_OrgApacheLuceneUtilCounter_SerialCounter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCounter_SerialCounter)

@interface OrgApacheLuceneUtilCounter_AtomicCounter : OrgApacheLuceneUtilCounter {
 @public
  JavaUtilConcurrentAtomicAtomicLong *count_;
}

- (instancetype)init;

- (jlong)addAndGetWithLong:(jlong)delta;

- (jlong)get;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCounter_AtomicCounter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCounter_AtomicCounter, count_, JavaUtilConcurrentAtomicAtomicLong *)

__attribute__((unused)) static void OrgApacheLuceneUtilCounter_AtomicCounter_init(OrgApacheLuceneUtilCounter_AtomicCounter *self);

__attribute__((unused)) static OrgApacheLuceneUtilCounter_AtomicCounter *new_OrgApacheLuceneUtilCounter_AtomicCounter_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilCounter_AtomicCounter *create_OrgApacheLuceneUtilCounter_AtomicCounter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCounter_AtomicCounter)

@implementation OrgApacheLuceneUtilCounter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCounter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)addAndGetWithLong:(jlong)delta {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneUtilCounter *)newCounter {
  return OrgApacheLuceneUtilCounter_newCounter();
}

+ (OrgApacheLuceneUtilCounter *)newCounterWithBoolean:(jboolean)threadSafe {
  return OrgApacheLuceneUtilCounter_newCounterWithBoolean_(threadSafe);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCounter;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCounter;", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addAndGetWithLong:);
  methods[2].selector = @selector(get);
  methods[3].selector = @selector(newCounter);
  methods[4].selector = @selector(newCounterWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addAndGet", "J", "newCounter", "Z", "LOrgApacheLuceneUtilCounter_SerialCounter;LOrgApacheLuceneUtilCounter_AtomicCounter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter = { "Counter", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x401, 5, 0, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCounter;
}

@end

void OrgApacheLuceneUtilCounter_init(OrgApacheLuceneUtilCounter *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounter() {
  OrgApacheLuceneUtilCounter_initialize();
  return OrgApacheLuceneUtilCounter_newCounterWithBoolean_(false);
}

OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounterWithBoolean_(jboolean threadSafe) {
  OrgApacheLuceneUtilCounter_initialize();
  return threadSafe ? new_OrgApacheLuceneUtilCounter_AtomicCounter_init() : (id) new_OrgApacheLuceneUtilCounter_SerialCounter_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter)

@implementation OrgApacheLuceneUtilCounter_SerialCounter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCounter_SerialCounter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)addAndGetWithLong:(jlong)delta {
  return count_ += delta;
}

- (jlong)get {
  return count_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addAndGetWithLong:);
  methods[2].selector = @selector(get);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "count_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addAndGet", "J", "LOrgApacheLuceneUtilCounter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter_SerialCounter = { "SerialCounter", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1a, 3, 1, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCounter_SerialCounter;
}

@end

void OrgApacheLuceneUtilCounter_SerialCounter_init(OrgApacheLuceneUtilCounter_SerialCounter *self) {
  OrgApacheLuceneUtilCounter_init(self);
  self->count_ = 0;
}

OrgApacheLuceneUtilCounter_SerialCounter *new_OrgApacheLuceneUtilCounter_SerialCounter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCounter_SerialCounter, init)
}

OrgApacheLuceneUtilCounter_SerialCounter *create_OrgApacheLuceneUtilCounter_SerialCounter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCounter_SerialCounter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter_SerialCounter)

@implementation OrgApacheLuceneUtilCounter_AtomicCounter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCounter_AtomicCounter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)addAndGetWithLong:(jlong)delta {
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(count_)) addAndGetWithLong:delta];
}

- (jlong)get {
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(count_)) get];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addAndGetWithLong:);
  methods[2].selector = @selector(get);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "count_", "LJavaUtilConcurrentAtomicAtomicLong;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addAndGet", "J", "LOrgApacheLuceneUtilCounter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCounter_AtomicCounter = { "AtomicCounter", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1a, 3, 1, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCounter_AtomicCounter;
}

@end

void OrgApacheLuceneUtilCounter_AtomicCounter_init(OrgApacheLuceneUtilCounter_AtomicCounter *self) {
  OrgApacheLuceneUtilCounter_init(self);
  self->count_ = new_JavaUtilConcurrentAtomicAtomicLong_init();
}

OrgApacheLuceneUtilCounter_AtomicCounter *new_OrgApacheLuceneUtilCounter_AtomicCounter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCounter_AtomicCounter, init)
}

OrgApacheLuceneUtilCounter_AtomicCounter *create_OrgApacheLuceneUtilCounter_AtomicCounter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCounter_AtomicCounter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCounter_AtomicCounter)
