//
//  APICallMock.h
//  MockHostApp
//
//  Created by Karem Gohar on 19.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Repository.h"
#import "UserServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface APICallMock : NSObject

@property (nonatomic, strong) Repository *repo;
@property (nonatomic, nonnull) id<UserServiceProtocol> service;

- (instancetype) initWithUserService: (id<UserServiceProtocol>)service;





@end

NS_ASSUME_NONNULL_END
