//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/SegmentNorms.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentNorms.h"
#include "org/apache/lucene/index/SegmentReader.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneIndexSegmentNorms () {
 @public
  OrgApacheLuceneIndexSegmentNorms *origNorm_;
  OrgApacheLuceneStoreIndexInput *in_;
  jlong normSeek_;
  JavaUtilConcurrentAtomicAtomicInteger *bytesRef_;
  IOSByteArray *bytes_;
  jint number_;
  OrgApacheLuceneIndexSegmentReader *owner_;
}

- (void)closeInput;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentNorms, origNorm_, OrgApacheLuceneIndexSegmentNorms *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentNorms, in_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentNorms, bytesRef_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentNorms, bytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentNorms, owner_, OrgApacheLuceneIndexSegmentReader *)

__attribute__((unused)) static void OrgApacheLuceneIndexSegmentNorms_closeInput(OrgApacheLuceneIndexSegmentNorms *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexSegmentNorms)

IOSByteArray *OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER;

@implementation OrgApacheLuceneIndexSegmentNorms

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)number
                                              withLong:(jlong)normSeek
                 withOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)owner {
  OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(self, inArg, number, normSeek, owner);
  return self;
}

- (void)incRef {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:67 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    refCount_++;
  }
}

- (void)closeInput {
  OrgApacheLuceneIndexSegmentNorms_closeInput(self);
}

- (void)decRef {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:90 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    if (--refCount_ == 0) {
      if (origNorm_ != nil) {
        [origNorm_ decRef];
        origNorm_ = nil;
      }
      else {
        OrgApacheLuceneIndexSegmentNorms_closeInput(self);
      }
      if (bytes_ != nil) {
        JreAssert((bytesRef_ != nil), (@"org/apache/lucene/index/SegmentNorms.java:101 condition failed: assert bytesRef != null;"));
        [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(bytesRef_)) decrementAndGet];
        bytes_ = nil;
        bytesRef_ = nil;
      }
      else {
        JreAssert((bytesRef_ == nil), (@"org/apache/lucene/index/SegmentNorms.java:106 condition failed: assert bytesRef == null;"));
      }
    }
  }
}

- (void)bytesWithByteArray:(IOSByteArray *)bytesOut
                   withInt:(jint)offset
                   withInt:(jint)len {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:114 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    if (bytes_ != nil) {
      JreAssert((len <= [((OrgApacheLuceneIndexSegmentReader *) nil_chk(owner_)) maxDoc]), (@"org/apache/lucene/index/SegmentNorms.java:117 condition failed: assert len <= owner.maxDoc();"));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes_, 0, bytesOut, offset, len);
    }
    else {
      if (origNorm_ != nil) {
        [origNorm_ bytesWithByteArray:bytesOut withInt:offset withInt:len];
      }
      else {
        @synchronized(in_) {
          [((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) seekWithLong:normSeek_];
          [((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) readBytesWithByteArray:bytesOut withInt:offset withInt:len withBoolean:false];
        }
      }
    }
  }
}

- (IOSByteArray *)bytes {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:136 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    if (bytes_ == nil) {
      JreAssert((bytesRef_ == nil), (@"org/apache/lucene/index/SegmentNorms.java:138 condition failed: assert bytesRef == null;"));
      if (origNorm_ != nil) {
        bytes_ = [origNorm_ bytes];
        bytesRef_ = ((OrgApacheLuceneIndexSegmentNorms *) nil_chk(origNorm_))->bytesRef_;
        [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(bytesRef_)) incrementAndGet];
        [((OrgApacheLuceneIndexSegmentNorms *) nil_chk(origNorm_)) decRef];
        origNorm_ = nil;
      }
      else {
        jint count = [((OrgApacheLuceneIndexSegmentReader *) nil_chk(owner_)) maxDoc];
        bytes_ = [IOSByteArray newArrayWithLength:count];
        JreAssert((in_ != nil), (@"org/apache/lucene/index/SegmentNorms.java:159 condition failed: assert in != null;"));
        @synchronized(in_) {
          [((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) seekWithLong:normSeek_];
          [((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) readBytesWithByteArray:bytes_ withInt:0 withInt:count withBoolean:false];
        }
        bytesRef_ = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1);
        OrgApacheLuceneIndexSegmentNorms_closeInput(self);
      }
    }
    return bytes_;
  }
}

- (JavaUtilConcurrentAtomicAtomicInteger *)bytesRef {
  return bytesRef_;
}

- (IOSByteArray *)copyOnWrite {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:183 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    (void) [self bytes];
    JreAssert((bytes_ != nil), (@"org/apache/lucene/index/SegmentNorms.java:185 condition failed: assert bytes != null;"));
    JreAssert((bytesRef_ != nil), (@"org/apache/lucene/index/SegmentNorms.java:186 condition failed: assert bytesRef != null;"));
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(bytesRef_)) get] > 1) {
      JreAssert((refCount_ == 1), (@"org/apache/lucene/index/SegmentNorms.java:191 condition failed: assert refCount == 1;"));
      JavaUtilConcurrentAtomicAtomicInteger *oldRef = bytesRef_;
      bytes_ = [((OrgApacheLuceneIndexSegmentReader *) nil_chk(owner_)) cloneNormBytesWithByteArray:bytes_];
      bytesRef_ = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1);
      [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(oldRef)) decrementAndGet];
    }
    dirty_ = true;
    return bytes_;
  }
}

- (id)java_clone {
  @synchronized(self) {
    JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (@"org/apache/lucene/index/SegmentNorms.java:205 condition failed: assert refCount > 0 && (origNorm == null || origNorm.refCount > 0);"));
    OrgApacheLuceneIndexSegmentNorms *clone;
    @try {
      clone = (OrgApacheLuceneIndexSegmentNorms *) cast_chk([super java_clone], [OrgApacheLuceneIndexSegmentNorms class]);
    }
    @catch (JavaLangCloneNotSupportedException *cnse) {
      @throw new_JavaLangRuntimeException_initWithNSString_withNSException_(@"unexpected CloneNotSupportedException", cnse);
    }
    ((OrgApacheLuceneIndexSegmentNorms *) nil_chk(clone))->refCount_ = 1;
    if (bytes_ != nil) {
      JreAssert((bytesRef_ != nil), (@"org/apache/lucene/index/SegmentNorms.java:217 condition failed: assert bytesRef != null;"));
      JreAssert((origNorm_ == nil), (@"org/apache/lucene/index/SegmentNorms.java:218 condition failed: assert origNorm == null;"));
      [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(clone->bytesRef_)) incrementAndGet];
    }
    else {
      JreAssert((bytesRef_ == nil), (@"org/apache/lucene/index/SegmentNorms.java:223 condition failed: assert bytesRef == null;"));
      if (origNorm_ == nil) {
        clone->origNorm_ = self;
      }
      [clone->origNorm_ incRef];
    }
    clone->in_ = nil;
    return clone;
  }
}

- (void)reWriteWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si {
  JreAssert((refCount_ > 0 && (origNorm_ == nil || origNorm_->refCount_ > 0)), (JreStrcat("$I$@", @"refCount=", refCount_, @" origNorm=", origNorm_)));
  [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si)) advanceNormGenWithInt:self->number_];
  NSString *normFileName = [si getNormFileNameWithInt:self->number_];
  OrgApacheLuceneStoreIndexOutput *out = [((OrgApacheLuceneStoreDirectory *) nil_chk([((OrgApacheLuceneIndexSegmentReader *) nil_chk(owner_)) directory])) createOutputWithNSString:normFileName];
  jboolean success = false;
  @try {
    @try {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(out)) writeBytesWithByteArray:OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER withInt:0 withInt:((IOSByteArray *) nil_chk(OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER))->size_];
      [out writeBytesWithByteArray:bytes_ withInt:[owner_ maxDoc]];
    }
    @finally {
      [out close];
    }
    success = true;
  }
  @finally {
    if (!success) {
      @try {
        [((OrgApacheLuceneStoreDirectory *) nil_chk([owner_ directory])) deleteFileWithNSString:normFileName];
      }
      @catch (NSException *t) {
      }
    }
  }
  self->dirty_ = false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x21, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentAtomicAtomicInteger;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x21, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withInt:withLong:withOrgApacheLuceneIndexSegmentReader:);
  methods[1].selector = @selector(incRef);
  methods[2].selector = @selector(closeInput);
  methods[3].selector = @selector(decRef);
  methods[4].selector = @selector(bytesWithByteArray:withInt:withInt:);
  methods[5].selector = @selector(bytes);
  methods[6].selector = @selector(bytesRef);
  methods[7].selector = @selector(copyOnWrite);
  methods[8].selector = @selector(java_clone);
  methods[9].selector = @selector(reWriteWithOrgApacheLuceneIndexSegmentInfo:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NORMS_HEADER", "[B", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
    { "refCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "origNorm_", "LOrgApacheLuceneIndexSegmentNorms;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "in_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "normSeek_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bytesRef_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bytes_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "number_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dirty_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "rollbackDirty_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "owner_", "LOrgApacheLuceneIndexSegmentReader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexInput;IJLOrgApacheLuceneIndexSegmentReader;", "LJavaIoIOException;", "bytes", "[BII", "clone", "reWrite", "LOrgApacheLuceneIndexSegmentInfo;", &OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentNorms = { "SegmentNorms", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 10, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSegmentNorms;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexSegmentNorms class]) {
    OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER = [IOSByteArray newArrayWithBytes:(jbyte[]){ 'N', 'R', 'M', -1 } count:4];
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexSegmentNorms)
  }
}

@end

void OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentNorms *self, OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner) {
  NSObject_init(self);
  self->refCount_ = 1;
  self->in_ = inArg;
  self->number_ = number;
  self->normSeek_ = normSeek;
  self->owner_ = owner;
}

OrgApacheLuceneIndexSegmentNorms *new_OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentNorms, initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_, inArg, number, normSeek, owner)
}

OrgApacheLuceneIndexSegmentNorms *create_OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentNorms, initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_, inArg, number, normSeek, owner)
}

void OrgApacheLuceneIndexSegmentNorms_closeInput(OrgApacheLuceneIndexSegmentNorms *self) {
  if (self->in_ != nil) {
    if (self->in_ != ((OrgApacheLuceneIndexSegmentReader *) nil_chk(self->owner_))->singleNormStream_) {
      [self->in_ close];
    }
    else {
      if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->owner_->singleNormRef_)) decrementAndGet] == 0) {
        [((OrgApacheLuceneStoreIndexInput *) nil_chk(self->owner_->singleNormStream_)) close];
        self->owner_->singleNormStream_ = nil;
      }
    }
    self->in_ = nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentNorms)
