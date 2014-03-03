//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "NSObject+Maybe.h"
#import "Maybe.h"

@implementation NSObject (Maybe)

- (id)fmap:(FunctorArrow)f {
    id cont = f(self);
    if (cont) {
        return cont;
    }
    return [Maybe mempty];
}

@end