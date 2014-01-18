//
//  Nomad.h
//  Nomad
//
//  Created by Pedro Viegas on 18/01/14.
//  Copyright 2014 Lighthouse. All rights reserved.
//


#import "Maybe.h"
#import "Nothing.h"

static Maybe * maybe(id val){
    return [Maybe maybe:val];
}

static Maybe * nothing(){
    return [[Nothing alloc] init];
}

static Maybe * fmap(FunctorArrow f, Maybe * maybe){
    return [maybe fmap:f];
}