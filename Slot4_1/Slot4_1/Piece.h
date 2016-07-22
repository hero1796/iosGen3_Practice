//
//  Piece.h
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CHESS_TYPE_King = 1,
    CHESS_TYPE_Queen = 2,
    CHESS_TYPE_Knight = 3,
    CHESS_TYPE_Bishop = 4,
    CHESS_TYPE_Rook = 5,
    CHESS_TYPE_Pawn = 6
} CHESS_TYPE;

typedef enum
{
    CHESS_COLOR_WHITE = 0,
    CHESS_COLOR_BLACK = 1
} CHESS_COLOR;

@interface Piece : NSObject

@property CHESS_TYPE type;
@property CHESS_COLOR color;
@property int x;
@property int y;

- (BOOL) isMoveValid:(NSMutableArray *)arrChess;

@end
