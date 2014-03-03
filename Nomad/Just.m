//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Just.h"
#import "Nothing.h"


@implementation Just {
    id _val;
}

- (id)fmap:(FunctorArrow)f {
    return [Maybe maybe:f(_val)];
}

- (id <Monoid>)mappend:(id <Monoid>)val {
    if ([val class] == [Nothing class]) {
        return self;
    }
    return [Maybe maybe:[_val mappend:val]];
}

- (id)foldr:(FoldArrow)f onto:(id)initial {
    return [super foldr:f onto:initial];
}

- (id)unwrap {
    return _val;
};

- (instancetype)initWith:(id)val {
    self = [super init];
    if (self) {
        _val = val;
    }
    return self;
}

@end