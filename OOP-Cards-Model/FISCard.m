//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Shea Furey-King on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@interface FISCard ()
@property (readwrite) NSString *suit;
@property (readwrite) NSString *rank;
@property (readwrite) NSString *cardLabel;
@property (nonatomic, readwrite) NSUInteger cardValue;
@end

@implementation FISCard

//-(instancetype)init {
//    
//    self = [self initWithSuit:@"!" rank:@"N"];
//    return self;
//}
//
//-(instancetype)initWithSuit: (NSString *)suit
//                       rank: (NSString *)rank {
//    self = [super init];
//    if (self) {
//        _suit = suit;
//        _rank = rank;
//        _cardLabel = [NSString stringWithFormat:(@"%@%@"), suit, rank];
//        _cardValue = [self cardValueForRank];
//        
//    }
//    return self;
//    
//}
//Undo commment after


//Use for Volunteer Class

//Default
-(instancetype)init {
    
    self = [self initWithName:@"" Email:@"" IdNumber:@"unassigned"];
    return self;
}


//Designated
-(instancetype)initWithName: (NSString *)name
                      Email: (NSString *)email
                   IdNumber: (NSString *)idNumber

{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _idNumber = idNumber;
        
    }
    return self;
    
    [[NSMutableArray alloc]initWithObjects:@"", @"", @"", nil];
    
}

//Secondary
-(instancetype)initWithName: (NSString *)name
                       Email: (NSString *)email {
    
    self = [self initWithName:name Email:email IdNumber:@"unassigned"];
    return self;
}


- (NSUInteger)cardValueForRank {
    NSArray *validRanks = [FISCard validRanks];
    
    NSUInteger index = [validRanks indexOfObject:self.rank];
    NSUInteger cardValue = 0;
    
    if ([@"JKQ" containsString:self.rank]) {
        cardValue = 10;
    } else  {
        cardValue = index + 1;
    }
    
    return cardValue;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:(@"%@"), _cardLabel];
}

    

+ (NSArray *)validSuits {
    
    return @[@"♠", @"♥", @"♣", @"♦" ];
    
}
+ (NSArray *)validRanks {
    
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

@end
