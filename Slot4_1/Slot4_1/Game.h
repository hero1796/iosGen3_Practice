//
//  Game.h
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface Game : NSObject

@property Player *whitePlayer;
@property Player *blackPlayer;

@property NSMutableArray *arrWhiteChess;
@property NSMutableArray *arrBlackChess;

- (BOOL) checkKill;
- (BOOL) isGameOver;

@end
