//
//  Rook.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Rook.h"

@implementation Rook

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_TYPE_Rook;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Rook Move valid");
    return YES;
}

@end
