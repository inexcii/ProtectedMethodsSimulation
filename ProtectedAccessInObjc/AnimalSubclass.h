//
//  Animal+AnimalSubclass.h
//  ProtectedAccessInObjc
//
//  Created by Ralph Zhou on 2018/02/06.
//  Copyright © 2018 Genmis Inc. All rights reserved.
//

#import "Animal.h"

@interface Animal ()

@property (nonatomic) NSString *protectedName;

- (void)protectedAction;

@end
