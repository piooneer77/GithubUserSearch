//
//  UserNetworkService.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 17.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^UserCompletionBlock)(NSArray<Repository *> *repositories, NSError * error);

@interface UserNetworkService : NSObject<UserServiceProtocol>

@property (copy, nonatomic) UserCompletionBlock userCompletionBlock;

@end

NS_ASSUME_NONNULL_END
