//
//  GenericService.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 18.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResponseProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface GenericService : NSObject 

- (void)fireListRequest:(NSURL *)url withCompletionHandler:(void (^)(NSArray<ResponseProtocol *> * _Nullable, NSError * _Nullable))completionBlock;

@end

NS_ASSUME_NONNULL_END
