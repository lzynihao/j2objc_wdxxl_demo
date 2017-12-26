//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/nodes/DataNode.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/jsoup/nodes/Attributes.h"
#include "org/jsoup/nodes/DataNode.h"
#include "org/jsoup/nodes/Document.h"
#include "org/jsoup/nodes/Entities.h"
#include "org/jsoup/nodes/Node.h"

inline NSString *OrgJsoupNodesDataNode_get_DATA_KEY();
static NSString *OrgJsoupNodesDataNode_DATA_KEY = @"data";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupNodesDataNode, DATA_KEY, NSString *)

@implementation OrgJsoupNodesDataNode

- (instancetype)initWithNSString:(NSString *)data
                    withNSString:(NSString *)baseUri {
  OrgJsoupNodesDataNode_initWithNSString_withNSString_(self, data, baseUri);
  return self;
}

- (NSString *)nodeName {
  return @"#data";
}

- (NSString *)getWholeData {
  return [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) getWithNSString:OrgJsoupNodesDataNode_DATA_KEY];
}

- (OrgJsoupNodesDataNode *)setWholeDataWithNSString:(NSString *)data {
  [((OrgJsoupNodesAttributes *) nil_chk(attributes_)) putWithNSString:OrgJsoupNodesDataNode_DATA_KEY withNSString:data];
  return self;
}

- (void)outerHtmlHeadWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  (void) [((JavaLangStringBuilder *) nil_chk(accum)) appendWithNSString:[self getWholeData]];
}

- (void)outerHtmlTailWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
}

- (NSString *)description {
  return [self outerHtml];
}

+ (OrgJsoupNodesDataNode *)createFromEncodedWithNSString:(NSString *)encodedData
                                            withNSString:(NSString *)baseUri {
  return OrgJsoupNodesDataNode_createFromEncodedWithNSString_withNSString_(encodedData, baseUri);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDataNode;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDataNode;", 0x9, 7, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(nodeName);
  methods[2].selector = @selector(getWholeData);
  methods[3].selector = @selector(setWholeDataWithNSString:);
  methods[4].selector = @selector(outerHtmlHeadWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[5].selector = @selector(outerHtmlTailWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(createFromEncodedWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DATA_KEY", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "setWholeData", "LNSString;", "outerHtmlHead", "LJavaLangStringBuilder;ILOrgJsoupNodesDocument_OutputSettings;", "outerHtmlTail", "toString", "createFromEncoded", &OrgJsoupNodesDataNode_DATA_KEY };
  static const J2ObjcClassInfo _OrgJsoupNodesDataNode = { "DataNode", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgJsoupNodesDataNode;
}

@end

void OrgJsoupNodesDataNode_initWithNSString_withNSString_(OrgJsoupNodesDataNode *self, NSString *data, NSString *baseUri) {
  OrgJsoupNodesNode_initWithNSString_(self, baseUri);
  [((OrgJsoupNodesAttributes *) nil_chk(self->attributes_)) putWithNSString:OrgJsoupNodesDataNode_DATA_KEY withNSString:data];
}

OrgJsoupNodesDataNode *new_OrgJsoupNodesDataNode_initWithNSString_withNSString_(NSString *data, NSString *baseUri) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesDataNode, initWithNSString_withNSString_, data, baseUri)
}

OrgJsoupNodesDataNode *create_OrgJsoupNodesDataNode_initWithNSString_withNSString_(NSString *data, NSString *baseUri) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesDataNode, initWithNSString_withNSString_, data, baseUri)
}

OrgJsoupNodesDataNode *OrgJsoupNodesDataNode_createFromEncodedWithNSString_withNSString_(NSString *encodedData, NSString *baseUri) {
  OrgJsoupNodesDataNode_initialize();
  NSString *data = OrgJsoupNodesEntities_unescapeWithNSString_(encodedData);
  return new_OrgJsoupNodesDataNode_initWithNSString_withNSString_(data, baseUri);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesDataNode)
