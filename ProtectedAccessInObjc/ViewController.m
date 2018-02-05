//
//  ViewController.m
//  ProtectedAccessInObjc
//
//  Created by Ralph Zhou on 2018/02/05.
//  Copyright © 2018 Genmis Inc. All rights reserved.
//

#import "ViewController.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Cat *cat = [Cat new];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
