//
//  Player.h
//  Adventure Game 2
//
//  Created by Jacob Cho on 2014-10-10.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Room;
@interface Player : NSObject

@property (nonatomic, assign) int health;
@property (nonatomic, strong) Room *currentRoom;
@property (nonatomic, assign) BOOL hasGem;

-(void)playerInfo:(Player *)player;
-(void)moveRoom:(Player *)player moveToRoom:(Room *)room;
-(void)moveDirection:(Player *)player;

@end
