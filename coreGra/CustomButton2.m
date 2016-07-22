//
//  CustomButton2.m
//  coreGra
//
//  Created by Hung Ga 123 on 6/8/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "CustomButton2.h"

@implementation CustomButton2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}
-(void) drawRect:(CGRect)rect {
    CGPoint point0 = CGPointMake(0, self.frame.size.height/2);
    CGPoint point1 = CGPointMake(self.frame.size.width, self.frame.size.height/2);
    CGPoint point2 = CGPointMake(self.frame.size.width/3, -self.frame.size.height * 0.15);
    CGPoint point3 = CGPointMake(2*self.frame.size.width/3, -self.frame.size.height * 0.15);

    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:point0];
    [path1 addCurveToPoint:point1 controlPoint1:point2 controlPoint2:point3];
    [path1 setLineWidth:3.0];
   // [[UIColor blueColor] set];
    [[UIColor redColor] setFill];
    [path1 fill];
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    CGPoint point4 = CGPointMake(self.frame.size.width/3, self.frame.size.height + self.frame.size.height * 0.15);
    CGPoint point5 = CGPointMake(2*self.frame.size.width/3, self.frame.size.height + self.frame.size.height * 0.15);
    [path2 moveToPoint:point1];
    [path2 addCurveToPoint:point0 controlPoint1:point5 controlPoint2:point4];
    [path2 setLineWidth:3.0];
   // [[UIColor blueColor] set];
    [[UIColor redColor] setFill];
    [path2 fill];
}
@end
