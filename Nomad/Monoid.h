//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Monoid
- (id<Monoid>)mappend:(id<Monoid>)val;
+ (id<Monoid>)mempty;
@end