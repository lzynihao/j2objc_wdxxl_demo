//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/Searchable.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/search/Searchable.h"

@interface OrgApacheLuceneSearchSearchable : NSObject

@end

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSearchable__Annotations$0();

@implementation OrgApacheLuceneSearchSearchable

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "I", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "[I", 0x401, 5, 6, 2, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x401, 0, 7, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentDocument;", 0x401, 8, 9, 10, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentDocument;", 0x401, 8, 11, 10, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x401, 12, 13, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x401, 14, 15, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopFieldDocs;", 0x401, 0, 16, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(searchWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchCollector:);
  methods[1].selector = @selector(close);
  methods[2].selector = @selector(docFreqWithOrgApacheLuceneIndexTerm:);
  methods[3].selector = @selector(docFreqsWithOrgApacheLuceneIndexTermArray:);
  methods[4].selector = @selector(maxDoc);
  methods[5].selector = @selector(searchWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchFilter:withInt:);
  methods[6].selector = @selector(docWithInt:);
  methods[7].selector = @selector(docWithInt:withOrgApacheLuceneDocumentFieldSelector:);
  methods[8].selector = @selector(rewriteWithOrgApacheLuceneSearchQuery:);
  methods[9].selector = @selector(explainWithOrgApacheLuceneSearchWeight:withInt:);
  methods[10].selector = @selector(searchWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchFilter:withInt:withOrgApacheLuceneSearchSort:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "search", "LOrgApacheLuceneSearchWeight;LOrgApacheLuceneSearchFilter;LOrgApacheLuceneSearchCollector;", "LJavaIoIOException;", "docFreq", "LOrgApacheLuceneIndexTerm;", "docFreqs", "[LOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneSearchWeight;LOrgApacheLuceneSearchFilter;I", "doc", "I", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "ILOrgApacheLuceneDocumentFieldSelector;", "rewrite", "LOrgApacheLuceneSearchQuery;", "explain", "LOrgApacheLuceneSearchWeight;I", "LOrgApacheLuceneSearchWeight;LOrgApacheLuceneSearchFilter;ILOrgApacheLuceneSearchSort;", (void *)&OrgApacheLuceneSearchSearchable__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearchable = { "Searchable", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, 17 };
  return &_OrgApacheLuceneSearchSearchable;
}

@end

IOSObjectArray *OrgApacheLuceneSearchSearchable__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearchable)
