//
//  Room.h
//  Adventure Game 2
//
//  Created by Jacob Cho on 2014-10-10.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property(nonatomic) Room *north;
@property(nonatomic) Room *south;
@property(nonatomic) Room *east;
@property(nonatomic) Room *west;
@property(nonatomic, strong) NSString *roomName;
@property(nonatomic, assign) BOOL hasTreasure;
@property(nonatomic, assign) BOOL hasCube;
@property(nonatomic, assign) BOOL hasGem;


@end
