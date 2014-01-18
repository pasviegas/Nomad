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


@end