//
//  Animal.m
//  GeneratedInterface
//
//  Created by Swiftify on 14/04/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//


#import "Animal.h"

@implementation Animal

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    _name = name;
    _age = age;
    return self;
}

- (instancetype)initName:(NSString *)name
{
    _name = name;
    return self;
}

- (instancetype)initFor:(NSInteger)years
{
    _age = years;
    return self;
}

- (NSInteger)sleepFor:(NSInteger)minutes
{
    _happiness += (minutes * HAPPINESS_PER_MINUTE);
    return _happiness;
}

- (NSInteger)playAt:(Location)location for:(NSInteger)minutes
{
    int happinessFactor = 0;
    
    switch (location) {
        case LocationPark:
            happinessFactor = 20;
            break;
        case LocationHome:
            happinessFactor = 15;
            break;
        case LocationLake:
            happinessFactor = 9000;
            break;
        default:
            break;
    }
    
    _happiness += (minutes * happinessFactor);
    return _happiness;
}

- (NSInteger)playWith:(Toy)toy
{
    _happiness += 9000;
    return _happiness;
}

@end
