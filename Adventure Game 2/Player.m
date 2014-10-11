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
    

    player.currentRoom = room;
    
    if (player.currentRoom.hasTreasure) {
        
        NSLog(@"You found treasure! Health increased by 10");
        player.health += 10;
    }
    
    if (player.currentRoom.hasCube) {
        
        NSLog(@"This room contains the gelatinous cube! It attacks you for 5 HP");
        player.health -= 5;
    }

        [player playerInfo:player];

}

-(void)moveDirection:(Player *)player {
    
    char str [100];
    NSString *direction = nil;
    
    
    while (YES) {
        NSLog(@"Choose the direction you want to move to:");
        scanf("%100s", str);
        direction = [[NSString alloc] initWithUTF8String: str];


        if ([direction isEqualToString:@"north"]) {
            [player moveRoom:player moveToRoom:player.currentRoom.north];

        }

        if ([direction isEqualToString:@"south"]) {
            [player moveRoom:player moveToRoom:player.currentRoom.south];
            
        }

        if ([direction isEqualToString:@"east"]) {
            
            [player moveRoom:player moveToRoom:player.currentRoom.east];
        }

        if ([direction isEqualToString:@"west"]) {
            [player moveRoom:player moveToRoom:player.currentRoom.west];
        }
    }
}




@end
