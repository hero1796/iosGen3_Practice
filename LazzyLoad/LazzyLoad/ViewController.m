//
//  ViewController.m
//  LazzyLoad
//
//  Created by Hung Ga 123 on 5/25/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellTableViewCell.h"
#import "UIImageView+WebCache.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property NSMutableArray *urlArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _urlArray = [NSMutableArray arrayWithObjects:@"https://free4kwallpapers.com/uploads/originals/2015/07/19/hot-girls.jpg"
                 ,@"https://i.ytimg.com/vi/bj6SwpqmVwM/maxresdefault.jpg"
                 ,@"http://assets.nydailynews.com/polopoly_fs/1.73527.1313826927!/img/httpImage/image.jpg_gen/derivatives/gallery_1200/gal-playboy-olive1-jpg.jpg"
                 ,@"https://averageguys.files.wordpress.com/2009/07/1241718622073.jpg", nil];
    // Do any additional setup after loading the view, typically from a nib.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"cell";
    CustomCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.rowLable.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    cell.indexPath= indexPath;
    cell.imgView.image = nil;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[_urlArray objectAtIndex:indexPath.row%4]]]];
        dispatch_async(dispatch_get_main_queue(), ^{
            if(cell.indexPath.row == indexPath.row) {
                cell.imgView.image = img;
            }
        });
    });
    
   // [cell.imgView sd_setImageWithURL:[_urlArray objectAtIndex:indexPath.row%4]];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
