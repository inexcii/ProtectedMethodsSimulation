//
//  Cat.m
//  ProtectedAccessInObjc
//
//  Created by Ralph Zhou on 2018/02/05.
//  Copyright © 2018 Genmis Inc. All rights reserved.
//

#import "Cat.h"

#import "AnimalSubclass.h"
// Or, add the following class-extension for Animal class
/*
@interface Animal ()

@property (nonatomic) NSString *protectedName;
- (void)protectedAction;

@end
 */

@implementation Cat

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        // call public methods as usual
        [self eat];
        
        // call protected methods & property
        NSLog(@"cat's protected name: %@", self.protectedName);
        [self protectedAction];
        
        // call private methods & property
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        if ([self respondsToSelector:@selector(drink)]) {
            [self performSelector:@selector(drink)];
        }
        if ([self respondsToSelector:@selector(secretName)]) {
            NSLog(@"%@", [self performSelector:@selector(secretName)]);
        }
#pragma clang diagnostic pop
    }
    
    return self;
}

@end
