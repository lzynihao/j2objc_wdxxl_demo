//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/WildcardQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/PrefixTermEnum.h"
#include "org/apache/lucene/search/SingleTermEnum.h"
#include "org/apache/lucene/search/WildcardQuery.h"
#include "org/apache/lucene/search/WildcardTermEnum.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchWildcardQuery () {
 @public
  jboolean termContainsWildcard_;
  jboolean termIsPrefix_;
}

@end

@implementation OrgApacheLuceneSearchWildcardQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if (termIsPrefix_) {
    return new_OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(reader, [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) createTermWithNSString:[((NSString *) nil_chk([term_ text])) java_substring:0 endIndex:[((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) text])) java_indexOf:'*']]]);
  }
  else if (termContainsWildcard_) {
    return new_OrgApacheLuceneSearchWildcardTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(reader, [self getTerm]);
  }
  else {
    return new_OrgApacheLuceneSearchSingleTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(reader, [self getTerm]);
  }
}

- (OrgApacheLuceneIndexTerm *)getTerm {
  return term_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_init();
  if (![((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) field])) isEqual:field]) {
    (void) [buffer appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term_)) field]];
    (void) [buffer appendWithNSString:@":"];
  }
  (void) [buffer appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term_)) text]];
  (void) [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self java_getClass] != [nil_chk(obj) java_getClass]) return false;
  OrgApacheLuceneSearchWildcardQuery *other = (OrgApacheLuceneSearchWildcardQuery *) cast_chk(obj, [OrgApacheLuceneSearchWildcardQuery class]);
  if (term_ == nil) {
    if (other->term_ != nil) return false;
  }
  else if (![term_ isEqual:other->term_]) return false;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFilteredTermEnum;", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(getEnumWithOrgApacheLuceneIndexIndexReader:);
  methods[2].selector = @selector(getTerm);
  methods[3].selector = @selector(toStringWithNSString:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termContainsWildcard_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termIsPrefix_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "term_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTerm;", "getEnum", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "toString", "LNSString;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchWildcardQuery = { "WildcardQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchWildcardQuery;
}

@end

void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchMultiTermQuery_init(self);
  self->term_ = term;
  NSString *text = [((OrgApacheLuceneIndexTerm *) nil_chk(term)) text];
  self->termContainsWildcard_ = (([((NSString *) nil_chk(text)) java_indexOf:'*'] != -1) || ([text java_indexOf:'?'] != -1));
  self->termIsPrefix_ = (self->termContainsWildcard_ && ([text java_indexOf:'?'] == -1) && ([text java_indexOf:'*'] == [text java_length] - 1));
}

OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

OrgApacheLuceneSearchWildcardQuery *create_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchWildcardQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchWildcardQuery)
