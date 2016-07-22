//
//  ViewController.m
//  coreGra
//
//  Created by Hung Ga 123 on 6/8/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)CLICK:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]	;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CLICK:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [sb instantiateViewControllerWithIdentifier:@"1"];
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end
