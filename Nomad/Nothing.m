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

- (id)unwrap{
    return nil;
};

@end