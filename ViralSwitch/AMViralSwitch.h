//
//  AMViralSwitch.h
//  ViralSwitchDemo
//
//  Created by Andrea Mazzini on 06/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString *const AMElementView;
FOUNDATION_EXPORT NSString *const AMElementKeyPath;
FOUNDATION_EXPORT NSString *const AMElementFromValue;
FOUNDATION_EXPORT NSString *const AMElementToValue;

@interface AMViralSwitch : UISwitch

@property (nonatomic, assign) NSTimeInterval animationDuration UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) NSArray *animationElementsOn;
@property (nonatomic, strong) NSArray *animationElementsOff;

@end
