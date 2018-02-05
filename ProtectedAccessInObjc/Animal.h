//
//  Animal.h
//  ProtectedAccessInObjc
//
//  Created by Ralph Zhou on 2018/02/05.
//  Copyright © 2018 Genmis Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (nonatomic) BOOL isPublic;

- (void)eat;

@end
