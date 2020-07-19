//
//  UserNetworkService.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 17.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserServiceProtocol.h"
#import "GenericService.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^UserCompletionBlock)(NSArray<Repository *> *repositories, NSError * error);

@interface UserNetworkService : GenericService<UserServiceProtocol>

@property (copy, nonatomic) UserCompletionBlock userCompletionBlock;

@end

NS_ASSUME_NONNULL_END
