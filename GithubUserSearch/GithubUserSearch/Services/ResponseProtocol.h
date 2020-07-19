//
//  ResponseProtocol.h
//  GithubUserSearch
//
//  Created by Karem Gohar on 18.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResponseProtocol : NSObject
- (_Nullable instancetype)initWithJSONDictionary:(NSDictionary *_Nonnull)dict;
@end

NS_ASSUME_NONNULL_END
