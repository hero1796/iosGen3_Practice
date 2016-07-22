//
//  CustomButton.m
//  coreGra
//
//  Created by Hung Ga 123 on 6/8/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

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
       
    }
    return self;
}

-(void) drawRect: (CGRect) rect
{
//    CAShapeLayer *circleLayer = [CAShapeLayer layer];
//    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)] CGPath]];
//    circleLayer.fillColor = [UIColor redColor].CGColor;
//    [[self layer] addSublayer:circleLayer];
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width/2 - self.frame.size.height/2, 0, self.frame.size.height, self.frame.size.height)];
    [path setLineWidth:3.0];
    [[UIColor yellowColor] setFill];
    [path fill];
}
@end
