//
//  NSObject_MaybeSpec.m
//  Nomad
//
//  Created by Pedro Viegas on 18/01/14.
//  Copyright 2014 Lighthouse. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "Nomad.h"
#import "Nothing.h"
#import "NSObject+Maybe.h"


SPEC_BEGIN(ObjectMaybeSpec)

describe(@"NSObject+Maybe", ^{
    it(@"should execute the function when value is not nil", ^{
        NSNumber * result = [@1 fmap:^id (NSNumber * o) {
            return [NSNumber numberWithInt:[o intValue] + 2];
        }];
        [[result should] equal:@3];
    });
    
    it(@"should return Nothing the function when value is nil", ^{
        NSNumber * result = [[@1 fmap:^id (NSNumber * o) {
            return nil;
        }] fmap:^id (NSNumber * o) {
            return [NSNumber numberWithInt:[o intValue] + 2];
        }];
        [[[result class] should] equal:[Nothing class]];
    });
});

SPEC_END
