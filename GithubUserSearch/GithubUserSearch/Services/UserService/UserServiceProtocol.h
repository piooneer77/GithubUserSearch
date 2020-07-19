//
//  UserServiceProtocol.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 19.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Repository.h"

NS_ASSUME_NONNULL_BEGIN

@protocol UserServiceProtocol

typedef void (^CompletionBlock)(NSArray<Repository *>  * _Nullable repositories, NSError * _Nullable error);

- (void)getUsersList: (NSString *)searchString withCompletionHandler:(CompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
