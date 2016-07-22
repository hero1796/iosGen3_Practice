//
//  Post.h
//  LAB6
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject
@property NSNumber *userId;
@property NSNumber *_id;
@property NSString *title;
@property NSString *body;
- (instancetype)initWithJson:(NSDictionary*) dict;
@end
