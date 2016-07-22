//
//  ViewController.m
//  SqliteDemo
//
//  Created by Trung Đức on 5/7/16.
//  Copyright © 2016 Trung Đức. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"


@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *message;

@property (nonatomic, assign) BOOL isUpdating;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _message = [[NSMutableArray alloc]init];
    
    _tbvMessage.tableFooterView = [[UIView alloc]init];
    
    [self reloadDataWillReloadTableView:YES];
    
    _isUpdating = NO;
}

#pragma mark - TableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _message.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellId = @"MessageId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = [_message[indexPath.row] text];
    
    return cell;
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    _textField.text = [_message[indexPath.row] text];
    
    _isUpdating = YES;
    
    [_btnAdd setTitle:@"UPDATE" forState:UIControlStateNormal];
    
}

#pragma mark - Edit

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [Message deleteMessageFromDB:_message[indexPath.row] error:nil];
        
        [_tbvMessage beginUpdates];
        
        [_tbvMessage deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        
        [self reloadDataWillReloadTableView:NO];
        
        [_tbvMessage endUpdates];
        
    }
}

#pragma mark - Class funtions

- (IBAction)btnAddDidTouch:(id)sender {
    
    if (!_isUpdating) {
        if (_textField.text.length > 0) {
            
            Message *newMessage = [[Message alloc]initWithId:-1 andText:_textField.text];
            
            [Message addMessage:newMessage error:nil];
            
            [_tbvMessage beginUpdates];
            
            [_tbvMessage insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationRight];
            
            [self reloadDataWillReloadTableView:NO];
            
            [_tbvMessage endUpdates];
            
            _textField.text = @"";
            
        }
    } else {
        
        Message *messageToUpdate = [_message objectAtIndex:_tbvMessage.indexPathForSelectedRow.row];
        
        if (_textField.text.length > 0) {
            
            messageToUpdate.text = _textField.text;
            
            [Message updateMessageFromDB:messageToUpdate error:nil];
            
            [_btnAdd setTitle:@"ADD" forState:UIControlStateNormal];
            
            _textField.text = @"";
            
            [_tbvMessage beginUpdates];
            
            [_tbvMessage reloadRowsAtIndexPaths:@[_tbvMessage.indexPathForSelectedRow] withRowAnimation:UITableViewRowAnimationFade];
            
            [_tbvMessage endUpdates];
            
        }
        
    }
    
}

- (void)reloadDataWillReloadTableView:(BOOL)willReloadTableView;
{
//    [Message loadMessageFromDBWithCompletionBlock:^(NSArray *messages) {
//        _message = [NSMutableArray arrayWithArray:messages];
//    }];
       
    if (willReloadTableView) {
        [_tbvMessage reloadData];
    }
    
}

@end
