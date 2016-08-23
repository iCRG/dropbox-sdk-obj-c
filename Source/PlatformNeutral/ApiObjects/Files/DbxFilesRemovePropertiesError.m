///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesLookUpPropertiesError.h"
#import "DbxFilesLookupError.h"
#import "DbxFilesPropertiesError.h"
#import "DbxFilesRemovePropertiesError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesRemovePropertiesError 

- (instancetype)initWithTemplateNotFound:(NSString *)templateNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound;
        _templateNotFound = templateNotFound;
    }
    return self;
}

- (instancetype)initWithRestrictedContent {
    self = [super init];
    if (self != nil) {
        _tag = (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorRestrictedContent;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorOther;
    }
    return self;
}

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithPropertyGroupLookup:(DbxFilesLookUpPropertiesError *)propertyGroupLookup {
    self = [super init];
    if (self != nil) {
        _tag = (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup;
        _propertyGroupLookup = propertyGroupLookup;
    }
    return self;
}

- (BOOL)isTemplateNotFound {
    return _tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound;
}

- (BOOL)isRestrictedContent {
    return _tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorRestrictedContent;
}

- (BOOL)isOther {
    return _tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorOther;
}

- (BOOL)isPath {
    return _tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath;
}

- (BOOL)isPropertyGroupLookup {
    return _tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup;
}

- (NSString *)getTagName {
    if (_tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound) {
        return @"(FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound";
    }
    if (_tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorRestrictedContent) {
        return @"(FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorRestrictedContent";
    }
    if (_tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorOther) {
        return @"(FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorOther";
    }
    if (_tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath) {
        return @"(FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath";
    }
    if (_tag == (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup) {
        return @"(FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)templateNotFound {
    if (_tag != (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorTemplateNotFound, but was %@.", [self getTagName]];
    }
    return _templateNotFound;
}

- (DbxFilesLookupError *)path {
    if (_tag != (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

- (DbxFilesLookUpPropertiesError *)propertyGroupLookup {
    if (_tag != (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesRemovePropertiesErrorTag)FilesRemovePropertiesErrorPropertyGroupLookup, but was %@.", [self getTagName]];
    }
    return _propertyGroupLookup;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesRemovePropertiesErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesRemovePropertiesErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesRemovePropertiesErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesRemovePropertiesErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesRemovePropertiesError *)valueObj {
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
    else if ([valueObj isPropertyGroupLookup]) {
        jsonDict[@"property_group_lookup"] = [DbxFilesLookUpPropertiesErrorSerializer serialize:valueObj.propertyGroupLookup];
        jsonDict[@".tag"] = @"property_group_lookup";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesRemovePropertiesError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"template_not_found"]) {
        NSString *templateNotFound = [DbxStringSerializer deserialize:valueDict[@"template_not_found"]];
        return [[DbxFilesRemovePropertiesError alloc] initWithTemplateNotFound:templateNotFound];
    }
    if ([tag isEqualToString:@"restricted_content"]) {
        return [[DbxFilesRemovePropertiesError alloc] initWithRestrictedContent];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesRemovePropertiesError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesRemovePropertiesError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"property_group_lookup"]) {
        DbxFilesLookUpPropertiesError *propertyGroupLookup = [DbxFilesLookUpPropertiesErrorSerializer deserialize:valueDict[@"property_group_lookup"]];
        return [[DbxFilesRemovePropertiesError alloc] initWithPropertyGroupLookup:propertyGroupLookup];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end