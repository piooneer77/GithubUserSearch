//
//  UserNetworkService.m
//  GithubUserSearch
//
//  Created by Karem Gohar on 17.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import "UserNetworkService.h"
#import "AFNetworking.h"


@implementation UserNetworkService 

- (void)getUsersList:(NSString *)searchString withCompletionHandler:(void (^)(NSArray<Repository *> * _Nullable, NSError * _Nullable))completionBlock {
    
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/users/%@/repos", searchString];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLSession *session = [NSURLSession sharedSession];

    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        if (error != nil) {
            completionBlock(nil, error);
        } else {
            if (response != nil) {
                NSArray<Repository *> *array = [self buildResponseFrom: data];
                completionBlock(array, nil);
            }
        }
    }];
    [dataTask resume];
    
//     This is usually how I would approach this request however an error of mismatching between swift and objective-c types throw exception and it took little bit longer so I decided to fire the request directly here
    
//    [super fireListRequest:url withCompletionHandler:^(NSArray<id> * _Nullable list, NSError * _Nullable error) {
//
//        NSArray<Repository *> *array = [[NSArray alloc] init];
//        if (list != nil) {
//            array = (NSArray<Repository *> *)[[NSArray alloc] initWithArray:list];
//        }
//        completionBlock(array, error);
//    }];
    
}

- (NSArray<Repository *> *)buildResponseFrom: (NSData *)data {
    NSMutableArray<Repository *> *array = [[NSMutableArray alloc] init];
    NSDictionary* dictionaries = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    for (NSDictionary* dictionary in dictionaries) {
        Repository* repository = [[Repository alloc] initWithJSONDictionary:dictionary];
        [array addObject:repository];
    }
    return array;
}
@end

