//
//  UserServiceProtocol.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 17.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Repository.h"

#ifndef UserServiceProtocol_h
#define UserServiceProtocol_h

@protocol UserServiceProtocol

typedef void (^CompletionBlock)(NSArray<Repository *> *repositories, NSError * error);

- (void)getUsersList: (NSString *)searchString withCompletionHandler:(CompletionBlock)completionBlock;

@end

#endif /* UserServiceProtocol_h */
