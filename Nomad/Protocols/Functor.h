//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef id (^FunctorArrow)(id);

@protocol Functor <NSObject>

- (id)fmap:(FunctorArrow)f;
- (id)unwrap;

@end