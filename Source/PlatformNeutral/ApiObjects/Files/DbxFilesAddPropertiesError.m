///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesAddPropertiesError.h"
#import "DbxFilesInvalidPropertyGroupError.h"
#import "DbxFilesLookupError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesAddPropertiesError 

- (instancetype)initWithTemplateNotFound:(NSString *)templateNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound;
        _templateNotFound = templateNotFound;
    }
    return self;
}

- (instancetype)initWithRestrictedContent {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorRestrictedContent;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorOther;
    }
    return self;
}

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithPropertyFieldTooLarge {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyFieldTooLarge;
    }
    return self;
}

- (instancetype)initWithDoesNotFitTemplate {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorDoesNotFitTemplate;
    }
    return self;
}

- (instancetype)initWithPropertyGroupAlreadyExists {
    self = [super init];
    if (self != nil) {
        _tag = (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyGroupAlreadyExists;
    }
    return self;
}

- (BOOL)isTemplateNotFound {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound;
}

- (BOOL)isRestrictedContent {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorRestrictedContent;
}

- (BOOL)isOther {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorOther;
}

- (BOOL)isPath {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath;
}

- (BOOL)isPropertyFieldTooLarge {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyFieldTooLarge;
}

- (BOOL)isDoesNotFitTemplate {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorDoesNotFitTemplate;
}

- (BOOL)isPropertyGroupAlreadyExists {
    return _tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyGroupAlreadyExists;
}

- (NSString *)getTagName {
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorRestrictedContent) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorRestrictedContent";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorOther) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorOther";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyFieldTooLarge) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyFieldTooLarge";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorDoesNotFitTemplate) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorDoesNotFitTemplate";
    }
    if (_tag == (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyGroupAlreadyExists) {
        return @"(FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPropertyGroupAlreadyExists";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)templateNotFound {
    if (_tag != (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorTemplateNotFound, but was %@.", [self getTagName]];
    }
    return _templateNotFound;
}

- (DbxFilesLookupError *)path {
    if (_tag != (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesAddPropertiesErrorTag)FilesAddPropertiesErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesAddPropertiesErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesAddPropertiesErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesAddPropertiesErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesAddPropertiesErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesAddPropertiesError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isTemplateNotFound]) {
        jsonDict[@"template_not_found"] = [DbxStringSerializer serialize:valueObj.templateNotFound];
        jsonDict[@".tag"] = @"template_not_found";
    }
    else if ([valueObj isRestrictedContent]) {
        jsonDict[@".tag"] = @"restricted_content";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isPath]) {
        jsonDict[@"path"] = [DbxFilesLookupErrorSerializer serialize:valueObj.path];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isPropertyFieldTooLarge]) {
        jsonDict[@".tag"] = @"property_field_too_large";
    }
    else if ([valueObj isDoesNotFitTemplate]) {
        jsonDict[@".tag"] = @"does_not_fit_template";
    }
    else if ([valueObj isPropertyGroupAlreadyExists]) {
        jsonDict[@".tag"] = @"property_group_already_exists";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesAddPropertiesError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"template_not_found"]) {
        NSString *templateNotFound = [DbxStringSerializer deserialize:valueDict[@"template_not_found"]];
        return [[DbxFilesAddPropertiesError alloc] initWithTemplateNotFound:templateNotFound];
    }
    if ([tag isEqualToString:@"restricted_content"]) {
        return [[DbxFilesAddPropertiesError alloc] initWithRestrictedContent];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesAddPropertiesError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesAddPropertiesError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"property_field_too_large"]) {
        return [[DbxFilesAddPropertiesError alloc] initWithPropertyFieldTooLarge];
    }
    if ([tag isEqualToString:@"does_not_fit_template"]) {
        return [[DbxFilesAddPropertiesError alloc] initWithDoesNotFitTemplate];
    }
    if ([tag isEqualToString:@"property_group_already_exists"]) {
        return [[DbxFilesAddPropertiesError alloc] initWithPropertyGroupAlreadyExists];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end