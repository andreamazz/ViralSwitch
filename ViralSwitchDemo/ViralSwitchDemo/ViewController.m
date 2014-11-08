//
//  ViewController.m
//  ViralSwitchDemo
//
//  Created by Andrea Mazzini on 06/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

#import "ViewController.h"
#import "AMViralSwitch.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet AMViralSwitch *blueSwitch;
@property (weak, nonatomic) IBOutlet AMViralSwitch *greenSwitch;

@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *greenView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blueSwitch.animationElementsOn = @[
                                            @{ AMElementView: self.blueView.layer,
                                               AMElementKeyPath: @"backgroundColor",
                                               AMElementFromValue: (id)[UIColor clearColor].CGColor,
                                               AMElementToValue: (id)[UIColor whiteColor].CGColor }
                                            ];
    
    self.blueSwitch.animationElementsOff = @[
                                             @{ AMElementView: self.blueView.layer,
                                                AMElementKeyPath: @"backgroundColor",
                                                AMElementFromValue: (id)[UIColor whiteColor].CGColor,
                                                AMElementToValue: (id)[UIColor clearColor].CGColor }
                                             ];
    
    
    self.greenSwitch.animationElementsOn = @[
                                             @{ AMElementView: self.greenView.layer,
                                                AMElementKeyPath: @"backgroundColor",
                                                AMElementFromValue: (id)[UIColor clearColor].CGColor,
                                                AMElementToValue: (id)[UIColor whiteColor].CGColor }
                                             ];
    
    self.greenSwitch.animationElementsOff = @[
                                              @{ AMElementView: self.greenView.layer,
                                                 AMElementKeyPath: @"backgroundColor",
                                                 AMElementFromValue: (id)[UIColor whiteColor].CGColor,
                                                 AMElementToValue: (id)[UIColor clearColor].CGColor }
                                              ];
}

@end
