//
//  Animal.m
//  ProtectedAccessInObjc
//
//  Created by Ralph Zhou on 2018/02/05.
//  Copyright © 2018 Genmis Inc. All rights reserved.
//

#import "Animal.h"


#import "AnimalSubclass.h"

@interface Animal()

@property (nonatomic) NSString *secretName;

@end

@implementation Animal

#pragma mark - Override

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.secretName = @"secret name of an animal";
        self.protectedName = @"protected Nameee";
    }
    
    return self;
}

#pragma mark - Public

- (void)eat
{
    NSLog(@"animal eats");
}

#pragma mark - Protected

- (void)protectedAction
{
    NSLog(@"only protected animals act like this!!!");
}

#pragma mark - Private

- (void)drink
{
    NSLog(@"private animals drink");
}

@end
