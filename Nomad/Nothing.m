//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Nothing.h"

@implementation Nothing {

}

- (id)fmap:(FunctorArrow)f {
    return self;
}

- (id <Monoid>)mappend:(id <Monoid>)val {
    return val;
}

- (id <Monoid>)foldMap:(FoldMapArrow)f {
    return self;
}

- (id)foldr:(FoldArrow)f onto:(id)initial {
    return [super foldr:f onto:initial];
}

- (id)unwrap{
    return nil;
};

@end