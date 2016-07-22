//
//  PostCell.m
//  LAB6
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "PostCell.h"

@implementation PostCell

- (void)awakeFromNib {
    // Initialization code
}

- (id) initCell {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
