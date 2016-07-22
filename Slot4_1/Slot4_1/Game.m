//
//  Game.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Game.h"
#import "King.h"
#import "Queen.h"
#import "Bishop.h"
#import "Rook.h"
#import "Pawn.h"
#import "Knight.h"

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // minhth
        self.whitePlayer = [[Player alloc] init];
        self.blackPlayer = [[Player alloc] init];
        
        self.arrWhiteChess = [NSMutableArray array];
        self.arrBlackChess = [NSMutableArray array];
        
        
        //// WHITE
        [self initChess:CHESS_COLOR_WHITE yPawn:6 yOther:7 array:self.arrWhiteChess];
        
        
        /// BLACK...
        [self initChess:CHESS_COLOR_BLACK yPawn:1 yOther:0 array:self.arrBlackChess];
        
    }
    return self;
}

- (void) initChess:(CHESS_COLOR) color yPawn:(int)yPawn yOther:(int)yOther array:(NSMutableArray *)arrChess
{
    for (int i =0; i < 8; i++) {
        Pawn *pawn = [[Pawn alloc] init];
        pawn.color = color;
        pawn.y = yPawn;
        pawn.x = i;
        [arrChess addObject:pawn];
    }
    
    for (int i = 0; i < 2; i++) {
        Rook *rook = [[Rook alloc] init];
        rook.color = color;
        rook.y = yOther;
        if (i == 0) {
            rook.x = 0;
        } else {
            rook.x = 7;
        }
        [arrChess addObject:rook];
    }
    
    for (int i = 0; i < 2; i++) {
        Knight *knight = [[Knight alloc] init];
        knight.color = color;
        knight.y = yOther;
        if (i == 0) {
            knight.x = 1;
        } else {
            knight.x = 6;
        }
        [arrChess addObject:knight];
    }
    
    for (int i = 0; i < 2; i++) {
        Bishop *bishop = [[Bishop alloc] init];
        bishop.color = color;
        bishop.y = yOther;
        if (i == 0) {
            bishop.x = 2;
        } else {
            bishop.x = 5;
        }
        [arrChess addObject:bishop];
    }
    
    Queen *queen = [[Queen alloc] init];
    queen.color = color;
    queen.y = yOther;
    queen.x = 3;
    
    [arrChess addObject:queen];
    
    King *king = [[King alloc] init];
    king.color = color;
    king.y = yOther;
    king.x = 4;
    [arrChess addObject:king];
}

- (BOOL) checkKill;
{
    NSLog(@"Game - Check Kill");
    return YES;
}
- (BOOL) isGameOver;
{
    NSLog(@"Game - IS Game Over");
    return YES;
}

@end
