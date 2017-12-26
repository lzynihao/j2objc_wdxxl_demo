//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/Tag.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/parser/Tag.h"

@interface OrgJsoupParserTag () {
 @public
  NSString *tagName_;
  jboolean isBlock_;
  jboolean formatAsBlock_;
  jboolean canContainBlock_;
  jboolean canContainInline_;
  jboolean empty_;
  jboolean selfClosing_;
  jboolean preserveWhitespace_;
  jboolean formList_;
  jboolean formSubmit_;
}

- (instancetype)initWithNSString:(NSString *)tagName;

+ (void)register__WithOrgJsoupParserTag:(OrgJsoupParserTag *)tag;

@end

J2OBJC_FIELD_SETTER(OrgJsoupParserTag, tagName_, NSString *)

inline id<JavaUtilMap> OrgJsoupParserTag_get_tags(void);
static id<JavaUtilMap> OrgJsoupParserTag_tags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, tags, id<JavaUtilMap>)

inline IOSObjectArray *OrgJsoupParserTag_get_blockTags(void);
static IOSObjectArray *OrgJsoupParserTag_blockTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, blockTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_inlineTags(void);
static IOSObjectArray *OrgJsoupParserTag_inlineTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, inlineTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_emptyTags(void);
static IOSObjectArray *OrgJsoupParserTag_emptyTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, emptyTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_formatAsInlineTags(void);
static IOSObjectArray *OrgJsoupParserTag_formatAsInlineTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, formatAsInlineTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_preserveWhitespaceTags(void);
static IOSObjectArray *OrgJsoupParserTag_preserveWhitespaceTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, preserveWhitespaceTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_formListedTags(void);
static IOSObjectArray *OrgJsoupParserTag_formListedTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, formListedTags, IOSObjectArray *)

inline IOSObjectArray *OrgJsoupParserTag_get_formSubmitTags(void);
static IOSObjectArray *OrgJsoupParserTag_formSubmitTags;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupParserTag, formSubmitTags, IOSObjectArray *)

__attribute__((unused)) static void OrgJsoupParserTag_initWithNSString_(OrgJsoupParserTag *self, NSString *tagName);

__attribute__((unused)) static OrgJsoupParserTag *new_OrgJsoupParserTag_initWithNSString_(NSString *tagName) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupParserTag *create_OrgJsoupParserTag_initWithNSString_(NSString *tagName);

__attribute__((unused)) static void OrgJsoupParserTag_register__WithOrgJsoupParserTag_(OrgJsoupParserTag *tag);

J2OBJC_INITIALIZED_DEFN(OrgJsoupParserTag)

@implementation OrgJsoupParserTag

- (instancetype)initWithNSString:(NSString *)tagName {
  OrgJsoupParserTag_initWithNSString_(self, tagName);
  return self;
}

- (NSString *)getName {
  return tagName_;
}

+ (OrgJsoupParserTag *)valueOfWithNSString:(NSString *)tagName {
  return OrgJsoupParserTag_valueOfWithNSString_(tagName);
}

- (jboolean)isBlock {
  return isBlock_;
}

- (jboolean)formatAsBlock {
  return formatAsBlock_;
}

- (jboolean)canContainBlock {
  return canContainBlock_;
}

- (jboolean)isInline {
  return !isBlock_;
}

- (jboolean)isData {
  return !canContainInline_ && ![self isEmpty];
}

- (jboolean)isEmpty {
  return empty_;
}

- (jboolean)isSelfClosing {
  return empty_ || selfClosing_;
}

- (jboolean)isKnownTag {
  return [((id<JavaUtilMap>) nil_chk(OrgJsoupParserTag_tags)) containsKeyWithId:tagName_];
}

+ (jboolean)isKnownTagWithNSString:(NSString *)tagName {
  return OrgJsoupParserTag_isKnownTagWithNSString_(tagName);
}

- (jboolean)preserveWhitespace {
  return preserveWhitespace_;
}

- (jboolean)isFormListed {
  return formList_;
}

- (jboolean)isFormSubmittable {
  return formSubmit_;
}

- (OrgJsoupParserTag *)setSelfClosing {
  selfClosing_ = true;
  return self;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgJsoupParserTag class]])) return false;
  OrgJsoupParserTag *tag = (OrgJsoupParserTag *) cast_chk(o, [OrgJsoupParserTag class]);
  if (![((NSString *) nil_chk(tagName_)) isEqual:((OrgJsoupParserTag *) nil_chk(tag))->tagName_]) return false;
  if (canContainBlock_ != tag->canContainBlock_) return false;
  if (canContainInline_ != tag->canContainInline_) return false;
  if (empty_ != tag->empty_) return false;
  if (formatAsBlock_ != tag->formatAsBlock_) return false;
  if (isBlock_ != tag->isBlock_) return false;
  if (preserveWhitespace_ != tag->preserveWhitespace_) return false;
  if (selfClosing_ != tag->selfClosing_) return false;
  if (formList_ != tag->formList_) return false;
  return formSubmit_ == tag->formSubmit_;
}

- (NSUInteger)hash {
  jint result = ((jint) [((NSString *) nil_chk(tagName_)) hash]);
  result = 31 * result + (isBlock_ ? 1 : 0);
  result = 31 * result + (formatAsBlock_ ? 1 : 0);
  result = 31 * result + (canContainBlock_ ? 1 : 0);
  result = 31 * result + (canContainInline_ ? 1 : 0);
  result = 31 * result + (empty_ ? 1 : 0);
  result = 31 * result + (selfClosing_ ? 1 : 0);
  result = 31 * result + (preserveWhitespace_ ? 1 : 0);
  result = 31 * result + (formList_ ? 1 : 0);
  result = 31 * result + (formSubmit_ ? 1 : 0);
  return result;
}

- (NSString *)description {
  return tagName_;
}

+ (void)register__WithOrgJsoupParserTag:(OrgJsoupParserTag *)tag {
  OrgJsoupParserTag_register__WithOrgJsoupParserTag_(tag);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupParserTag;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 2, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupParserTag;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(valueOfWithNSString:);
  methods[3].selector = @selector(isBlock);
  methods[4].selector = @selector(formatAsBlock);
  methods[5].selector = @selector(canContainBlock);
  methods[6].selector = @selector(isInline);
  methods[7].selector = @selector(isData);
  methods[8].selector = @selector(isEmpty);
  methods[9].selector = @selector(isSelfClosing);
  methods[10].selector = @selector(isKnownTag);
  methods[11].selector = @selector(isKnownTagWithNSString:);
  methods[12].selector = @selector(preserveWhitespace);
  methods[13].selector = @selector(isFormListed);
  methods[14].selector = @selector(isFormSubmittable);
  methods[15].selector = @selector(setSelfClosing);
  methods[16].selector = @selector(isEqual:);
  methods[17].selector = @selector(hash);
  methods[18].selector = @selector(description);
  methods[19].selector = @selector(register__WithOrgJsoupParserTag:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tags", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 9, 10, -1 },
    { "tagName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "isBlock_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "formatAsBlock_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "canContainBlock_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "canContainInline_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "empty_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "selfClosing_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "preserveWhitespace_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "formList_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "formSubmit_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "blockTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "inlineTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "emptyTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "formatAsInlineTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "preserveWhitespaceTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "formListedTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "formSubmitTags", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "valueOf", "isKnownTag", "equals", "LNSObject;", "hashCode", "toString", "register", "LOrgJsoupParserTag;", &OrgJsoupParserTag_tags, "Ljava/util/Map<Ljava/lang/String;Lorg/jsoup/parser/Tag;>;", &OrgJsoupParserTag_blockTags, &OrgJsoupParserTag_inlineTags, &OrgJsoupParserTag_emptyTags, &OrgJsoupParserTag_formatAsInlineTags, &OrgJsoupParserTag_preserveWhitespaceTags, &OrgJsoupParserTag_formListedTags, &OrgJsoupParserTag_formSubmitTags };
  static const J2ObjcClassInfo _OrgJsoupParserTag = { "Tag", "org.jsoup.parser", ptrTable, methods, fields, 7, 0x1, 20, 18, -1, -1, -1, -1, -1 };
  return &_OrgJsoupParserTag;
}

+ (void)initialize {
  if (self == [OrgJsoupParserTag class]) {
    OrgJsoupParserTag_tags = new_JavaUtilHashMap_init();
    OrgJsoupParserTag_blockTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"html", @"head", @"body", @"frameset", @"script", @"noscript", @"style", @"meta", @"link", @"title", @"frame", @"noframes", @"section", @"nav", @"aside", @"hgroup", @"header", @"footer", @"p", @"h1", @"h2", @"h3", @"h4", @"h5", @"h6", @"ul", @"ol", @"pre", @"div", @"blockquote", @"hr", @"address", @"figure", @"figcaption", @"form", @"fieldset", @"ins", @"del", @"s", @"dl", @"dt", @"dd", @"li", @"table", @"caption", @"thead", @"tfoot", @"tbody", @"colgroup", @"col", @"tr", @"th", @"td", @"video", @"audio", @"canvas", @"details", @"menu", @"plaintext", @"template", @"article", @"main", @"svg", @"math" } count:64 type:NSString_class_()];
    OrgJsoupParserTag_inlineTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"object", @"base", @"font", @"tt", @"i", @"b", @"u", @"big", @"small", @"em", @"strong", @"dfn", @"code", @"samp", @"kbd", @"var", @"cite", @"abbr", @"time", @"acronym", @"mark", @"ruby", @"rt", @"rp", @"a", @"img", @"br", @"wbr", @"map", @"q", @"sub", @"sup", @"bdo", @"iframe", @"embed", @"span", @"input", @"select", @"textarea", @"label", @"button", @"optgroup", @"option", @"legend", @"datalist", @"keygen", @"output", @"progress", @"meter", @"area", @"param", @"source", @"track", @"summary", @"command", @"device", @"area", @"basefont", @"bgsound", @"menuitem", @"param", @"source", @"track", @"data", @"bdi" } count:65 type:NSString_class_()];
    OrgJsoupParserTag_emptyTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"meta", @"link", @"base", @"frame", @"img", @"br", @"wbr", @"embed", @"hr", @"input", @"keygen", @"col", @"command", @"device", @"area", @"basefont", @"bgsound", @"menuitem", @"param", @"source", @"track" } count:21 type:NSString_class_()];
    OrgJsoupParserTag_formatAsInlineTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"title", @"a", @"p", @"h1", @"h2", @"h3", @"h4", @"h5", @"h6", @"pre", @"address", @"li", @"th", @"td", @"script", @"style", @"ins", @"del", @"s" } count:19 type:NSString_class_()];
    OrgJsoupParserTag_preserveWhitespaceTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"pre", @"plaintext", @"title", @"textarea" } count:4 type:NSString_class_()];
    OrgJsoupParserTag_formListedTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"button", @"fieldset", @"input", @"keygen", @"object", @"output", @"select", @"textarea" } count:8 type:NSString_class_()];
    OrgJsoupParserTag_formSubmitTags = [IOSObjectArray newArrayWithObjects:(id[]){ @"input", @"keygen", @"object", @"select", @"textarea" } count:5 type:NSString_class_()];
    {
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_blockTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = new_OrgJsoupParserTag_initWithNSString_(tagName);
          OrgJsoupParserTag_register__WithOrgJsoupParserTag_(tag);
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_inlineTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = new_OrgJsoupParserTag_initWithNSString_(tagName);
          tag->isBlock_ = false;
          tag->canContainBlock_ = false;
          tag->formatAsBlock_ = false;
          OrgJsoupParserTag_register__WithOrgJsoupParserTag_(tag);
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_emptyTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = [OrgJsoupParserTag_tags getWithId:tagName];
          OrgJsoupHelperValidate_notNullWithId_(tag);
          ((OrgJsoupParserTag *) nil_chk(tag))->canContainBlock_ = false;
          tag->canContainInline_ = false;
          tag->empty_ = true;
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_formatAsInlineTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = [OrgJsoupParserTag_tags getWithId:tagName];
          OrgJsoupHelperValidate_notNullWithId_(tag);
          ((OrgJsoupParserTag *) nil_chk(tag))->formatAsBlock_ = false;
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_preserveWhitespaceTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = [OrgJsoupParserTag_tags getWithId:tagName];
          OrgJsoupHelperValidate_notNullWithId_(tag);
          ((OrgJsoupParserTag *) nil_chk(tag))->preserveWhitespace_ = true;
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_formListedTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = [OrgJsoupParserTag_tags getWithId:tagName];
          OrgJsoupHelperValidate_notNullWithId_(tag);
          ((OrgJsoupParserTag *) nil_chk(tag))->formList_ = true;
        }
      }
      {
        IOSObjectArray *a__ = OrgJsoupParserTag_formSubmitTags;
        NSString * const *b__ = a__->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *tagName = *b__++;
          OrgJsoupParserTag *tag = [OrgJsoupParserTag_tags getWithId:tagName];
          OrgJsoupHelperValidate_notNullWithId_(tag);
          ((OrgJsoupParserTag *) nil_chk(tag))->formSubmit_ = true;
        }
      }
    }
    J2OBJC_SET_INITIALIZED(OrgJsoupParserTag)
  }
}

@end

void OrgJsoupParserTag_initWithNSString_(OrgJsoupParserTag *self, NSString *tagName) {
  NSObject_init(self);
  self->isBlock_ = true;
  self->formatAsBlock_ = true;
  self->canContainBlock_ = true;
  self->canContainInline_ = true;
  self->empty_ = false;
  self->selfClosing_ = false;
  self->preserveWhitespace_ = false;
  self->formList_ = false;
  self->formSubmit_ = false;
  self->tagName_ = [((NSString *) nil_chk(tagName)) lowercaseString];
}

OrgJsoupParserTag *new_OrgJsoupParserTag_initWithNSString_(NSString *tagName) {
  J2OBJC_NEW_IMPL(OrgJsoupParserTag, initWithNSString_, tagName)
}

OrgJsoupParserTag *create_OrgJsoupParserTag_initWithNSString_(NSString *tagName) {
  J2OBJC_CREATE_IMPL(OrgJsoupParserTag, initWithNSString_, tagName)
}

OrgJsoupParserTag *OrgJsoupParserTag_valueOfWithNSString_(NSString *tagName) {
  OrgJsoupParserTag_initialize();
  OrgJsoupHelperValidate_notNullWithId_(tagName);
  OrgJsoupParserTag *tag = [((id<JavaUtilMap>) nil_chk(OrgJsoupParserTag_tags)) getWithId:tagName];
  if (tag == nil) {
    tagName = [((NSString *) nil_chk([((NSString *) nil_chk(tagName)) java_trim])) lowercaseString];
    OrgJsoupHelperValidate_notEmptyWithNSString_(tagName);
    tag = [OrgJsoupParserTag_tags getWithId:tagName];
    if (tag == nil) {
      tag = new_OrgJsoupParserTag_initWithNSString_(tagName);
      tag->isBlock_ = false;
      tag->canContainBlock_ = true;
    }
  }
  return tag;
}

jboolean OrgJsoupParserTag_isKnownTagWithNSString_(NSString *tagName) {
  OrgJsoupParserTag_initialize();
  return [((id<JavaUtilMap>) nil_chk(OrgJsoupParserTag_tags)) containsKeyWithId:tagName];
}

void OrgJsoupParserTag_register__WithOrgJsoupParserTag_(OrgJsoupParserTag *tag) {
  OrgJsoupParserTag_initialize();
  (void) [((id<JavaUtilMap>) nil_chk(OrgJsoupParserTag_tags)) putWithId:((OrgJsoupParserTag *) nil_chk(tag))->tagName_ withId:tag];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupParserTag)