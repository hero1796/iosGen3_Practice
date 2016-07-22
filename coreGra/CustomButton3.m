//
//  CustomButton3.m
//  coreGra
//
//  Created by Hung Ga 123 on 6/8/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "CustomButton3.h"

@implementation CustomButton3

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) drawRect:(CGRect)rect {
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(0, self.frame.size.height/2)];
    [path1 addLineToPoint:CGPointMake(self.frame.size.width/2, 0)];
}
@end
