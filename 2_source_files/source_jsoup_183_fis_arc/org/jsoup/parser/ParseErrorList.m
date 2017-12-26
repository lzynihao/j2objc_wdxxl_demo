//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/ParseErrorList.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "org/jsoup/parser/ParseErrorList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgJsoupParserParseErrorList () {
 @public
  jint maxSize_;
}

@end

inline jint OrgJsoupParserParseErrorList_get_INITIAL_CAPACITY();
#define OrgJsoupParserParseErrorList_INITIAL_CAPACITY 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupParserParseErrorList, INITIAL_CAPACITY, jint)

@implementation OrgJsoupParserParseErrorList

- (instancetype)initWithInt:(jint)initialCapacity
                    withInt:(jint)maxSize {
  OrgJsoupParserParseErrorList_initWithInt_withInt_(self, initialCapacity, maxSize);
  return self;
}

- (jboolean)canAddError {
  return [self size] < maxSize_;
}

- (jint)getMaxSize {
  return maxSize_;
}

+ (OrgJsoupParserParseErrorList *)noTracking {
  return OrgJsoupParserParseErrorList_noTracking();
}

+ (OrgJsoupParserParseErrorList *)trackingWithInt:(jint)maxSize {
  return OrgJsoupParserParseErrorList_trackingWithInt_(maxSize);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupParserParseErrorList;", 0x8, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupParserParseErrorList;", 0x8, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(canAddError);
  methods[2].selector = @selector(getMaxSize);
  methods[3].selector = @selector(noTracking);
  methods[4].selector = @selector(trackingWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INITIAL_CAPACITY", "I", .constantValue.asInt = OrgJsoupParserParseErrorList_INITIAL_CAPACITY, 0x1a, -1, -1, -1, -1 },
    { "maxSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "tracking", "I", "Ljava/util/ArrayList<Lorg/jsoup/parser/ParseError;>;" };
  static const J2ObjcClassInfo _OrgJsoupParserParseErrorList = { "ParseErrorList", "org.jsoup.parser", ptrTable, methods, fields, 7, 0x0, 5, 2, -1, -1, -1, 3, -1 };
  return &_OrgJsoupParserParseErrorList;
}

@end

void OrgJsoupParserParseErrorList_initWithInt_withInt_(OrgJsoupParserParseErrorList *self, jint initialCapacity, jint maxSize) {
  JavaUtilArrayList_initWithInt_(self, initialCapacity);
  self->maxSize_ = maxSize;
}

OrgJsoupParserParseErrorList *new_OrgJsoupParserParseErrorList_initWithInt_withInt_(jint initialCapacity, jint maxSize) {
  J2OBJC_NEW_IMPL(OrgJsoupParserParseErrorList, initWithInt_withInt_, initialCapacity, maxSize)
}

OrgJsoupParserParseErrorList *create_OrgJsoupParserParseErrorList_initWithInt_withInt_(jint initialCapacity, jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgJsoupParserParseErrorList, initWithInt_withInt_, initialCapacity, maxSize)
}

OrgJsoupParserParseErrorList *OrgJsoupParserParseErrorList_noTracking() {
  OrgJsoupParserParseErrorList_initialize();
  return new_OrgJsoupParserParseErrorList_initWithInt_withInt_(0, 0);
}

OrgJsoupParserParseErrorList *OrgJsoupParserParseErrorList_trackingWithInt_(jint maxSize) {
  OrgJsoupParserParseErrorList_initialize();
  return new_OrgJsoupParserParseErrorList_initWithInt_withInt_(OrgJsoupParserParseErrorList_INITIAL_CAPACITY, maxSize);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupParserParseErrorList)