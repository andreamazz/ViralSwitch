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

@property (weak, nonatomic) IBOutlet AMViralSwitch *sw;
@property (weak, nonatomic) IBOutlet UIView *sampleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.sw.animationElementsOn = @[
                                  @{ AMElementView: self.sampleView.layer,
                                     AMElementKeyPath: @"backgroundColor",
                                     AMElementFromValue: (id)[UIColor colorWithRed:74.0/255.0 green:144.0/255.0 blue:226.0/255.0 alpha:1].CGColor,
                                     AMElementToValue: (id)[UIColor whiteColor].CGColor }
                                  ];
    
    self.sw.animationElementsOff = @[
                                  @{ AMElementView: self.sampleView.layer,
                                     AMElementKeyPath: @"backgroundColor",
                                     AMElementToValue: (id)[UIColor colorWithRed:74.0/255.0 green:144.0/255.0 blue:226.0/255.0 alpha:1].CGColor,
                                     AMElementFromValue: (id)[UIColor whiteColor].CGColor }
                                  ];
    
}

@end
