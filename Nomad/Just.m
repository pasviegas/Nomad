//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Just.h"


@implementation Just {
    id _val;
}

- (id)fmap:(FunctorArrow)f {
    return [Maybe maybe:f(_val)];
}

- (id)unwrap{
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