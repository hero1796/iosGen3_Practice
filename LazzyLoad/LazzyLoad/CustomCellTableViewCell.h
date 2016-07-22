//
//  CustomCellTableViewCell.h
//  LazzyLoad
//
//  Created by Hung Ga 123 on 5/25/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *rowLable;
@property (weak, nonatomic) IBOutlet UILabel *numbleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property NSIndexPath *indexPath;
@end
