//
// Created by Pedro Viegas on 18/01/14.
// Copyright (c) 2014 Lighthouse. All rights reserved.
//

#import "Functor.h"

@interface Maybe : NSObject <Functor>

+ (Maybe *)maybe:(id)val;

@end