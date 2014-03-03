//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Maybe.h"
#import "Just.h"
#import "Nothing.h"

@implementation Maybe {

}

+ (Maybe *)maybe:(id)val {
    if(val){
        return [[Just alloc] initWith:val];
    }
    return [[Nothing alloc] init];
}

+ (id <Monoid>)mempty {
    return [[Nothing alloc] init];
}

- (id <Monoid>)foldMap:(FoldMapArrow)f {
    //foldr (mappend . f) mempty;
    return [self foldr:^id(id init, id curr) {
        return [init mappend:f([curr unwrap])];
    } onto:[Maybe mempty]];
}


@end