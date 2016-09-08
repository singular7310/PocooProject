//
//  KSingleLineView.m
//  LYEPUBReader
//
//  Created by singular on 14/12/2.
//  Copyright (c) 2014年 grenlight. All rights reserved.
//

#import "KSingleLineView.h"

@implementation KSingleLineView

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
    self.LineColor=[OWColor colorWithHexString:@"#7ecae7"];
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
    CGContextMoveToPoint(context, 0, CGRectGetHeight(self.bounds)-0.25);
    //终点坐标
    CGContextAddLineToPoint(context, rect.size.width,  CGRectGetHeight(self.bounds)-0.25);
    //开始画
    CGContextDrawPath(context, kCGPathStroke );
}
@end
