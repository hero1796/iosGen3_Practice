//
//  Queen.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Queen.h"

@implementation Queen

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_TYPE_Queen;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Queen Move valid");
    return YES;
}

@end
