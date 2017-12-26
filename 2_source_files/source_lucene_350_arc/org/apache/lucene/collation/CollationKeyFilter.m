//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/collation/CollationKeyFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/text/CollationKey.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/collation/CollationKeyFilter.h"
#include "org/apache/lucene/util/IndexableBinaryStringTools.h"

@interface OrgApacheLuceneCollationCollationKeyFilter () {
 @public
  JavaTextCollator *collator_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationKeyFilter, collator_, JavaTextCollator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationKeyFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

@implementation OrgApacheLuceneCollationCollationKeyFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                      withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneCollationCollationKeyFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_(self, input, collator);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSByteArray *collationKey = [((JavaTextCollationKey *) nil_chk([((JavaTextCollator *) nil_chk(collator_)) getCollationKeyWithNSString:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) description]])) toByteArray];
    jint encodedLength = OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_(collationKey, 0, ((IOSByteArray *) nil_chk(collationKey))->size_);
    (void) [termAtt_ resizeBufferWithInt:encodedLength];
    (void) [termAtt_ setLengthWithInt:encodedLength];
    OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithByteArray_withInt_withInt_withCharArray_withInt_withInt_(collationKey, 0, collationKey->size_, [termAtt_ buffer], 0, encodedLength);
    return true;
  }
  else {
    return false;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withJavaTextCollator:);
  methods[1].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "collator_", "LJavaTextCollator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LJavaTextCollator;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCollationCollationKeyFilter = { "CollationKeyFilter", "org.apache.lucene.collation", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCollationCollationKeyFilter;
}

@end

void OrgApacheLuceneCollationCollationKeyFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_(OrgApacheLuceneCollationCollationKeyFilter *self, OrgApacheLuceneAnalysisTokenStream *input, JavaTextCollator *collator) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->collator_ = (JavaTextCollator *) cast_chk([((JavaTextCollator *) nil_chk(collator)) java_clone], [JavaTextCollator class]);
}

OrgApacheLuceneCollationCollationKeyFilter *new_OrgApacheLuceneCollationCollationKeyFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_(OrgApacheLuceneAnalysisTokenStream *input, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCollationCollationKeyFilter, initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_, input, collator)
}

OrgApacheLuceneCollationCollationKeyFilter *create_OrgApacheLuceneCollationCollationKeyFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_(OrgApacheLuceneAnalysisTokenStream *input, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCollationCollationKeyFilter, initWithOrgApacheLuceneAnalysisTokenStream_withJavaTextCollator_, input, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCollationCollationKeyFilter)
