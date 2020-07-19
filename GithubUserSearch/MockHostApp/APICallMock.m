//
//  APICallMock.m
//  MockHostApp
//
//  Created by Karem Gohar on 19.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import "APICallMock.h"

@implementation APICallMock

- (instancetype) initWithUserService: (id<UserServiceProtocol>)service {
    self = [self init];
    self.service = service;
    return self;
}



@end
