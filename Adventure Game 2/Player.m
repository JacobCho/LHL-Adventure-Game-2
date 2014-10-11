//
//  Player.m
//  Adventure Game 2
//
//  Created by Jacob Cho on 2014-10-10.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "Player.h"
#import "Room.h"

@implementation Player


-(void)playerInfo:(Player *)player {
    
    NSLog(@"You are in %@", player.currentRoom.roomName);
    
    if (player.currentRoom.north != nil) {
        NSLog(@"You may exit to the north, %@", player.currentRoom.north.roomName);
    }
    if (player.currentRoom.south != nil) {
        NSLog(@"You may exit to the south, %@", player.currentRoom.south.roomName);
    }
    if (player.currentRoom.east != nil) {
        NSLog(@"You may exit to the east, %@", player.currentRoom.east.roomName);
    }
    if (player.currentRoom.west != nil) {
        NSLog(@"You may exit to the west, %@", player.currentRoom.west.roomName);
    }
    
    NSLog(@"Your current health is %i", player.health);
    
}

-(void)moveRoom:(Player *)player moveToRoom:(Room *)room {
    
    
//    if (room != player.currentRoom.north || player.currentRoom.south || player.currentRoom.east || player.currentRoom.west) {
//        
//        NSLog(@"You can not move to that room");
//    }
//    else {
        player.currentRoom = room;

        [player playerInfo:player];
//    }
}

-(void)moveDirection:(Player *)player {
    
    char str [100];
    NSString *direction = nil;
    
    
    while (YES) {
        NSLog(@"Choose the direction you want to move to:");
        scanf("%100s", str);
        direction = [[NSString alloc] initWithUTF8String: str];


        if ([direction isEqualToString:@"north"]) {
            player.currentRoom = player.currentRoom.north;
            [player playerInfo:player];
            
        }

        if ([direction isEqualToString:@"south"]) {
            player.currentRoom = player.currentRoom.south;
            [player playerInfo:player];
            
        }

        if ([direction isEqualToString:@"east"]) {
            
            player.currentRoom = player.currentRoom.east;
            [player playerInfo:player];
        }

        if ([direction isEqualToString:@"west"]) {
            player.currentRoom = player.currentRoom.west;
            [player playerInfo:player];
        }
    }
}




@end
