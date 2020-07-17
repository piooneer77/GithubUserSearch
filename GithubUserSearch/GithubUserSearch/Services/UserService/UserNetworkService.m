//
//  UserNetworkService.m
//  GithubUserSearch
//
//  Created by Karem Gohar on 17.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import "UserNetworkService.h"

@implementation UserNetworkService

- (void)getUsersList:(NSString *)searchString withCompletionHandler:(void (^)(NSArray<Repository *> *, NSError *))completionBlock {
    NSLog(searchString);
}

@end
