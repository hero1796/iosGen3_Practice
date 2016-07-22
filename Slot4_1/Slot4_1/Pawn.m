//
//  Pawn.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Pawn.h"

@implementation Pawn


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_TYPE_Pawn;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Pawn Move valid");
    return YES;
}

@end
