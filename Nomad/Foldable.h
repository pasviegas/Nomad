//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Monoid.h"

typedef id<Monoid> (^FoldMapArrow)(id);
typedef id (^FoldArrow)(id, id);

@protocol Foldable <Monoid>

    //foldMap :: (Foldable t, Data.Monoid.Monoid m) => (a -> m) -> t a -> m
    - (id<Monoid>)foldMap:(FoldMapArrow)f;

    //foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
    - (id)foldr:(FoldArrow)f onto:(id)initial;

@end