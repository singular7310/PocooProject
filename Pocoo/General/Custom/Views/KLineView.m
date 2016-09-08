//
//  KLineView.m
//  DuoTao
//
//  Created by singular on 15/8/10.
//  Copyright (c) 2015年 孙佳琪. All rights reserved.
//

#import "KLineView.h"

@implementation KLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    self.backgroundColor = [UIColor clearColor];
    self.LineColor=[OWColor colorWithHexString:@"#dddddd"];
   // self.LineColor=[ZHelper hexStringToColor:@"#dcdcdc"];
   // self.LineColor=[LSHelper hexStringToColor:@"#dcdcdc"];
}

- (void)setLineColorWithColor:(UIColor *)Color {
    
    self.LineColor=Color;
    [self setNeedsDisplay];
    
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置线宽
    CGContextSetLineWidth(context, 0.5);
    //设置线的颜色
    CGContextSetStrokeColorWithColor(context,self.LineColor.CGColor);
    //起点坐标
    CGContextMoveToPoint(context, 0.5, 0);
    //终点坐标
    CGContextAddLineToPoint(context, 0.5,  CGRectGetHeight(self.bounds));
    //开始画
    CGContextDrawPath(context, kCGPathStroke );
}


@end
