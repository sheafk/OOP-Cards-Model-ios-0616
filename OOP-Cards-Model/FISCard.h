//
//  FISCard.h
//  OOP-Cards-Model
//
//  Created by Shea Furey-King on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCard : NSObject

@property (readonly) NSString *suit;
@property (readonly) NSString *rank;
@property (readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *idNumber;


-(instancetype)initWithSuit: (NSString *)suit
                       rank: (NSString *)rank;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;


-(instancetype)initWithName: (NSString *)name
                      Email: (NSString *)email
                   IdNumber: (NSString *)idNumber;

@end


