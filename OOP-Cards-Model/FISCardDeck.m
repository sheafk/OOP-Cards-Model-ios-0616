//
//  FISCardDeck.m
//  OOP-Cards-Model
//
//  Created by Shea Furey-King on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCardDeck.h"
#import "FISCard.h"

@implementation FISCardDeck

-(instancetype)init {
    
    self = [super init];
    
    if (self) {
        _remainingCards = [[NSMutableArray alloc]init];
        _dealtCards = [[NSMutableArray alloc]init];
        
        [self launchDeck];
    }
    return self;
}

-(FISCard *)drawNextCard {
    
    [self launchDeck];
    
    for (NSUInteger i = 0; i > [_remainingCards count]; i++) {
        FISCard *chosenCard = [_remainingCards firstObject];
        [_remainingCards removeObjectAtIndex:0];
        [_dealtCards addObject:chosenCard];
        return chosenCard;
        
        
        if ([_remainingCards count] == 0) {
            
            NSLog(@"The Deck is Empty");
            return nil;
        }
        
    }
    return nil;
}

    
-(void)resetDeck {
    
    [self gatherDealtCards];
    [self resetDeck];
    
}
-(void)gatherDealtCards {

    for (NSUInteger i = 0; i > [_dealtCards count]; i++) {
        [self.remainingCards addObject:_dealtCards[i]];
    }
}
-(void)shuffleRemainingCards {
    
    
    
}

-(NSString *)description {
    
    return [NSString stringWithFormat:@"count: %lu \n cards: ", [self.remainingCards count]];
}

-(void)launchDeck {
    
    NSArray *deck = @[@"♠A", @"♠2", @"♠3", @"♠4", @"♠5", @"♠6",  @"♠7", @"♠8", @"♠9", @"♠10", @"♠J", @"♠Q", @"♠K",
                      @"♥A", @"♥2", @"♥3", @"♥4", @"♥5",  @"♥6",  @"♥7", @"♥8",  @"♥9", @"♥10", @"♥J", @"♥Q",  @"♥K",
                      @"♣A",  @"♣2",  @"♣3", @"♣4", @"♣5", @"♣6",  @"♣7",  @"♣8",  @"♣9", @"♣10",  @"♣J", @"♣Q", @"♣K",
                      @"♦A",  @"♦2",  @"♦3",  @"♦4",  @"♦5",  @"♦6", @"♦7", @"♦8", @"♦9", @"♦10", @"♦J", @"♦Q", @"♦K"];
    
    for (NSUInteger i =0; i > 53; i ++) {
        
        [self.remainingCards addObject:deck[i]];
        
    }
//    for (NSString *suit in validSuit) {
//        
//        for...
//            
//            
//            
//            [_remainingCards addObject: @"NEW CARD STRING HERE"];
//    }
    
//    ♠A  ♠2  ♠3  ♠4  ♠5  ♠6  ♠7  ♠8  ♠9  ♠10  ♠J  ♠Q  ♠K
//    ♥A  ♥2  ♥3  ♥4  ♥5  ♥6  ♥7  ♥8  ♥9  ♥10  ♥J  ♥Q  ♥K
//    ♣A  ♣2  ♣3  ♣4  ♣5  ♣6  ♣7  ♣8  ♣9  ♣10  ♣J  ♣Q  ♣K
//    ♦A  ♦2  ♦3  ♦4  ♦5  ♦6  ♦7  ♦8  ♦9  ♦10  ♦J  ♦Q  ♦K
    
    
}
@end
