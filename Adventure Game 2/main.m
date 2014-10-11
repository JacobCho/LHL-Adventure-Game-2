//
//  main.m
//  Adventure Game 2
//
//  Created by Jacob Cho on 2014-10-10.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Row 1
        Room *room1 = [[Room alloc] init];
        Room *room2 = [[Room alloc] init];
        Room *room3 = [[Room alloc] init];
        Room *room4 = [[Room alloc] init];
        
        // Row 2
        Room *room5 = [[Room alloc] init];
        Room *room6 = [[Room alloc] init];
        Room *room7 = [[Room alloc] init];
        Room *room8 = [[Room alloc] init];
        
        // Row 3
        Room *room9 = [[Room alloc] init];
        Room *room10 = [[Room alloc] init];
        Room *room11 = [[Room alloc] init];
        Room *room12 = [[Room alloc] init];
        
        // Row 4
        Room *room13 = [[Room alloc] init];
        Room *room14 = [[Room alloc] init];
        Room *room15 = [[Room alloc] init];
        Room *room16 = [[Room alloc] init];
        

        NSArray *maze = @[
                          @[room1, room2, room3, room4],
                          @[room5, room6, room7, room8],
                          @[room9, room10, room11, room12],
                          @[room13, room14, room15, room16]
                          ];
        
        // Row 1
        room1.north = nil;
        room1.south = room5;
        room1.east = room2;
        room1.west = nil;
        room1.roomName = @"Room 1";
        
        room2.north = nil;
        room2.south = room6;
        room2.east = room3;
        room2.west = room1;
        room2.roomName = @"Room 2";
        
        room3.north = nil;
        room3.south = room7;
        room3.east = room4;
        room3.west = room2;
        room3.roomName = @"Room 3";
        
        room4.north = nil;
        room4.south = room8;
        room4.east = nil;
        room4.west = room3;
        room4.roomName = @"Room 4";
        
        // Row 2
        room5.north = room1;
        room5.south = room9;
        room5.east = room6;
        room5.west = nil;
        room5.roomName = @"Room 5";
        
        room6.north = room2;
        room6.south = room10;
        room6.east = room7;
        room6.west = room5;
        room6.roomName = @"Room 6";
        
        room7.north = room3;
        room7.south = room11;
        room7.east = room8;
        room7.west = room6;
        room7.roomName = @"Room 7";
        
        room8.north = room4;
        room8.south = room12;
        room8.east = nil;
        room8.west = room7;
        room8.roomName = @"Room 8";
        
        // Row 3
        room9.north = room5;
        room9.south = room13;
        room9.east = room10;
        room9.west = nil;
        room9.roomName = @"Room 9";
        
        room10.north = room6;
        room10.south = room14;
        room10.east = room11;
        room10.west = room9;
        room10.roomName = @"Room 10";
        
        room11.north = room7;
        room11.south = room15;
        room11.east = room12;
        room11.west = room11;
        room11.roomName = @"Room 11";
        
        room12.north = room8;
        room12.south = room16;
        room12.east = nil;
        room12.west = room11;
        room12.roomName = @"Room 12";
        
        
        // Row 4
        room13.north = room9;
        room13.south = nil;
        room13.east = room14;
        room13.west = nil;
        room13.roomName = @"Room 13";
        
        room14.north = room10;
        room14.south = nil;
        room14.east = room15;
        room14.west = room13;
        room14.roomName = @"Room 14";
        
        room15.north = room11;
        room15.south = nil;
        room15.east = room16;
        room15.west = room14;
        room15.roomName = @"Room 15";
        
        room16.north = room12;
        room16.south = nil;
        room16.east = nil;
        room16.west = room15;
        room16.roomName = @"Room 16";
        
        Player *player = [[Player alloc] init];
        player.currentRoom = room1;
        player.health = 10;
        
        room13.hasTreasure = YES;
        room11.hasCube = YES;
        
        [player playerInfo:player];
        
        [player moveDirection:player];
    
    }
    return 0;
}
