//
//  Animal.h
//  GeneratedInterface
//
//  Created by Swiftify on 14/04/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define HAPPINESS_PER_MINUTE    10

typedef NS_ENUM(NSInteger, Location) {
    LocationPark,
    LocationHome,
    LocationLake
};

typedef NS_OPTIONS(NSUInteger, Toy) {
    ToyBall       = 0,
    ToyBoomerang  = 1 << 0,
    ToyStick      = 1 << 1,
};

@interface Animal : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSInteger happiness;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

- (instancetype)initName:(NSString *)name;

- (instancetype)initFor:(NSInteger)years;

- (NSInteger)sleepFor:(NSInteger)minutes;

- (NSInteger)playAt:(Location)location for:(NSInteger)minutes;

- (NSInteger)playWith:(Toy)toy;

@end

NS_ASSUME_NONNULL_END
