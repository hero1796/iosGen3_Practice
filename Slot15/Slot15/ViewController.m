//
//  ViewController.m
//  Slot15
//
//  Created by TaHoangMinh on 5/15/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "ViewController.h"
#import "APIClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[APIClient sharedClient] getTermCondition:@{} success:^(id response, NSError *error) {
        NSString *s = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        NSLog(@"%@",s);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
