//
//  MaybeSpec.m
//  Nomad
//
//  Created by Pedro Viegas on 18/01/14.
//  Copyright 2014 Lighthouse. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "Nomad.h"

SPEC_BEGIN(MaybeSpec)

describe(@"Maybe", ^{
    it(@"should execute the function when value is not nil", ^{
        Maybe * result = [[Maybe maybe:@1] fmap:^id(NSNumber *o) {
            return [NSNumber numberWithInt:[o intValue] + 2];
        }];
        [[[result unwrap] should] equal:@3];
    });

    it(@"should return Nothing the function when value is nil", ^{
        Maybe * result = [[maybe(@1) fmap:^id(NSNumber *o) {
            return nil;
        }] fmap:^id (NSNumber * o) {
            return [NSNumber numberWithInt:[o intValue] + 2];
        }];
        [[[result unwrap] should] beNil];
    });
});


SPEC_END
