//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Functor.h"
#import "Monoid.h"
#import "Foldable.h"

@interface Maybe : NSObject <Functor, Foldable>

+ (Maybe *)maybe:(id)val;
- (id <Monoid>)foldMap:(FoldMapArrow)f;

@end