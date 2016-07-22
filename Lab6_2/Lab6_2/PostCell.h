//
//  PostCell.h
//  LAB6
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblBody;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblId;

- (id) initCell;
@end
