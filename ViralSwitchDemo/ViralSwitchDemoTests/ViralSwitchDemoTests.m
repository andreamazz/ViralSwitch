//
//  ViralSwitchDemoTests.m
//  ViralSwitchDemoTests
//
//  Created by Andrea Mazzini on 06/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

#define EXP_SHORTHAND
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

#import "AMViralSwitch.h"

SpecBegin(ViralSwitchDemoTests)

#define kRECORD     NO

describe(@"AMViralSwitch", ^{
    
    it(@"SwitchOn", ^{
        UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

        UIViewController *controller = [[UIViewController alloc] init];
        
        window.rootViewController = controller;
        expect(controller.view).willNot.beNil();
        controller.view.backgroundColor = [UIColor whiteColor];

        [window makeKeyAndVisible];
        
        AMViralSwitch *viralSwitch = [[AMViralSwitch alloc] init];
        viralSwitch.frame = CGRectMake(controller.view.frame.size.width / 2 - viralSwitch.frame.size.width / 2, controller.view.frame.size.height / 2 - viralSwitch.frame.size.height / 2, viralSwitch.frame.size.width, viralSwitch.frame.size.height);
        viralSwitch.onTintColor = [UIColor redColor];
        [controller.view addSubview:viralSwitch];

        [viralSwitch awakeFromNib];
        
        if (kRECORD) expect(controller.view).will.recordSnapshotNamed(@"SwitchOff");
        expect(controller.view).will.haveValidSnapshotNamed(@"SwitchOff");

        viralSwitch.on = YES;
        
        if (kRECORD) expect(controller.view).will.recordSnapshotNamed(@"SwitchOn");
        expect(controller.view).will.haveValidSnapshotNamed(@"SwitchOn");
        
    });
});

SpecEnd
