//
//  MockUserService.m
//  MockHostApp
//
//  Created by Karem Gohar on 19.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import "MockUserService.h"

typedef enum NSError {
    NetworkError
} ErrorType;

@implementation MockUserService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isResponseEmpty = false;
        self.shouldGenerateError = false;
    }
    return self;
}

- (void)getUsersList:(nonnull NSString *)searchString withCompletionHandler:(nonnull CompletionBlock)completionBlock { 
    if (_shouldGenerateError) {
        completionBlock(nil, NetworkError);
    } else {
        if (_isResponseEmpty) {
            NSArray<Repository *> *array = [[NSArray alloc] init];
            completionBlock(array, nil);
        } else {
            NSArray<Repository *> *array = [self buildMockResponse];
            completionBlock(array, nil);
        }
    }
}

- (NSArray<Repository *> *) buildMockResponse {
    NSMutableArray<Repository *> *array = [[NSMutableArray alloc] init];
    
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"UserServiceMock" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary* dictionaries = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    for (NSDictionary* dictionary in dictionaries) {
        Repository* repository = [[Repository alloc] initWithJSONDictionary:dictionary];
        [array addObject:repository];
    }
    
    return array;
}

@end
