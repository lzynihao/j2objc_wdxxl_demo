//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/select/NodeVisitor.java
//

#include "J2ObjC_source.h"
#include "org/jsoup/select/NodeVisitor.h"

@interface OrgJsoupSelectNodeVisitor : NSObject

@end

@implementation OrgJsoupSelectNodeVisitor

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(headWithOrgJsoupNodesNode:withInt:);
  methods[1].selector = @selector(tailWithOrgJsoupNodesNode:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "head", "LOrgJsoupNodesNode;I", "tail" };
  static const J2ObjcClassInfo _OrgJsoupSelectNodeVisitor = { "NodeVisitor", "org.jsoup.select", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgJsoupSelectNodeVisitor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJsoupSelectNodeVisitor)