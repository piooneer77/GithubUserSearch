//
//  MockUserService.h
//  MockHostApp
//
//  Created by Karem Gohar on 19.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MockUserService : NSObject<UserServiceProtocol>

@property (nonatomic) BOOL shouldGenerateError;
@property (nonatomic) BOOL isResponseEmpty;

@end

NS_ASSUME_NONNULL_END
