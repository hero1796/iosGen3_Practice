//
//  ViewController.h
//  SqliteDemo
//
//  Created by Trung Đức on 5/7/16.
//  Copyright © 2016 Trung Đức. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tbvMessage;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
- (IBAction)btnAddDidTouch:(id)sender;


@end

