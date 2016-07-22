//
//  Post.m
//  LAB6
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "Post.h"

@implementation Post
- (instancetype)initWithJson:(NSDictionary*) dict
{
    self = [super init];
    if(self != nil) {
        self.userId = dict[@"userId"];
        self._id = dict[@"id"];
        self.title = dict[@"title"];
        self.body = dict[@"body"];
        
    }
    return self;
}
@end
