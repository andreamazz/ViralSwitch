//
//  AMViralSwitch.m
//  ViralSwitchDemo
//
//  Created by Andrea Mazzini on 06/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

#import "AMViralSwitch.h"

#define kDURATION   0.35

@interface AMViralSwitch ()

@property (nonatomic, strong) CAShapeLayer *shape;
@property (nonatomic, assign) CGFloat radius;

@end

@implementation AMViralSwitch

- (void)layoutSubviews
{
    CGFloat x = MAX(CGRectGetMidX(self.frame), self.superview.frame.size.width - CGRectGetMidX(self.frame));
    CGFloat y = MAX(CGRectGetMidY(self.frame), self.superview.frame.size.height - CGRectGetMidY(self.frame));

    self.radius = sqrt(x*x + y*y);
    
//    self.radius = 100;
    self.shape.frame = (CGRect){CGRectGetMidX(self.frame) - self.radius,
                                 CGRectGetMidY(self.frame) - self.radius, self.radius * 2, self.radius * 2};
    self.shape.anchorPoint = CGPointMake(0.5, 0.5);
    self.shape.path = [UIBezierPath bezierPathWithOvalInRect:(CGRect){0, 0, self.radius * 2, self.radius * 2}].CGPath;
}

- (void)awakeFromNib
{
    [self setClipsToBounds:NO];
    
    self.shape = [CAShapeLayer layer];
    self.shape.fillColor = self.onTintColor.CGColor;
    self.shape.transform = CATransform3DMakeScale(0.0, 0.0, 0.0);
    
    [self.superview.layer insertSublayer:self.shape below:self.layer];
    
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.cornerRadius = self.frame.size.height / 2;
    
    [self addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)switchChanged:(UISwitch *)sender
{
    if (sender.on) {

        self.shape.transform = CATransform3DMakeScale(0.0, 0.0, 0.0);
        [self.shape removeAnimationForKey:@"scaleDown"];
        
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.0, 0.0, 0.0)];
        animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
        animation.repeatCount = 1;
        animation.removedOnCompletion = NO;
        animation.fillMode = kCAFillModeForwards;
        animation.duration = kDURATION;

        [self.shape addAnimation:animation forKey:@"scaleUp"];
        
        animation = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
        animation.fromValue = @0;
        animation.toValue = @1;
        animation.repeatCount = 1;
        animation.removedOnCompletion = NO;
        animation.fillMode = kCAFillModeForwards;
        animation.duration = kDURATION;
        
        [self.layer addAnimation:animation forKey:@"borderUp"];

        
    } else {
        [self.shape removeAnimationForKey:@"scaleUp"];
        [self.shape removeAnimationForKey:@"borderUp"];
        self.layer.borderWidth = 1;

        self.shape.transform = CATransform3DMakeScale(1.0, 1.0, 1.0);

        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
        animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01, 0.01, 0.01)];
        animation.repeatCount = 1;
        animation.removedOnCompletion = NO;
        animation.fillMode = kCAFillModeForwards;
        animation.duration = kDURATION;
        
        [self.shape addAnimation:animation forKey:@"scaleDown"];
        
        animation = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
        animation.fromValue = @1;
        animation.toValue = @0;
        animation.repeatCount = 1;
        animation.removedOnCompletion = NO;
        animation.fillMode = kCAFillModeForwards;
        animation.duration = kDURATION;
        
        [self.layer addAnimation:animation forKey:@"borderDown"];
    }
}


@end
