//
//  ViewController.m
//  LAB6
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import "Post.h"
#import "PostCell.h"
#import "AFNetworking.h"
@interface ViewController ()

@property NSMutableArray *posts;
@property NSString *BaseURLString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _BaseURLString = @"http://jsonplaceholder.typicode.com/";
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"txt"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSLog(@"%@", data);
//    NSString* newStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", newStr);
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    self.posts = [[NSMutableArray alloc]init];
    
    for (NSDictionary *dict in jsonArr) {
        Post *post = [[Post alloc] initWithJson:dict];
        [self.posts addObject:post];
    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PostCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[PostCell alloc] initCell];
    }
    Post *post = [self.posts objectAtIndex:indexPath.row];
    cell.lblBody.text = post.body;
    cell.lblTitle.text = post.title;
    cell.lblId.text = [NSString
                       stringWithFormat:@"# %@", (NSNumber*)post._id];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Post *post = _posts[indexPath.row];
    [self downloadComments:post];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section; {
    return _posts.count;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) downloadComments :(Post *)post {
    
    NSString *urlString = [NSString stringWithFormat:@"%@comments?postId=%@", _BaseURLString, post._id];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}


@end
