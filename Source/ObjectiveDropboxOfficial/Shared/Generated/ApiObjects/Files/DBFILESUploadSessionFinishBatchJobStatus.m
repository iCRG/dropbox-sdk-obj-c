///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCPollResultBase.h"
#import "DBFILESUploadSessionFinishBatchJobStatus.h"
#import "DBFILESUploadSessionFinishBatchResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESUploadSessionFinishBatchJobStatus

@synthesize complete = _complete;

#pragma mark - Constructors

- (instancetype)initWithInProgress {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadSessionFinishBatchJobStatusInProgress;
  }
  return self;
}

- (instancetype)initWithComplete:(DBFILESUploadSessionFinishBatchResult *)complete {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadSessionFinishBatchJobStatusComplete;
    _complete = complete;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESUploadSessionFinishBatchResult *)complete {
  if (![self isComplete]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBFILESUploadSessionFinishBatchJobStatusComplete, but was %@.", [self tagName]];
  }
  return _complete;
}

#pragma mark - Tag state methods

- (BOOL)isInProgress {
  return _tag == DBFILESUploadSessionFinishBatchJobStatusInProgress;
}

- (BOOL)isComplete {
  return _tag == DBFILESUploadSessionFinishBatchJobStatusComplete;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESUploadSessionFinishBatchJobStatusInProgress:
    return @"DBFILESUploadSessionFinishBatchJobStatusInProgress";
  case DBFILESUploadSessionFinishBatchJobStatusComplete:
    return @"DBFILESUploadSessionFinishBatchJobStatusComplete";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESUploadSessionFinishBatchJobStatusSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESUploadSessionFinishBatchJobStatusSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESUploadSessionFinishBatchJobStatusSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESUploadSessionFinishBatchJobStatusSerializer

+ (NSDictionary *)serialize:(DBFILESUploadSessionFinishBatchJobStatus *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInProgress]) {
    jsonDict[@".tag"] = @"in_progress";
  } else if ([valueObj isComplete]) {
    jsonDict[@"complete"] = [[DBFILESUploadSessionFinishBatchResultSerializer serialize:valueObj.complete] mutableCopy];
    jsonDict[@".tag"] = @"complete";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESUploadSessionFinishBatchJobStatus *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"in_progress"]) {
    return [[DBFILESUploadSessionFinishBatchJobStatus alloc] initWithInProgress];
  } else if ([tag isEqualToString:@"complete"]) {
    DBFILESUploadSessionFinishBatchResult *complete =
        [DBFILESUploadSessionFinishBatchResultSerializer deserialize:valueDict];
    return [[DBFILESUploadSessionFinishBatchJobStatus alloc] initWithComplete:complete];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
