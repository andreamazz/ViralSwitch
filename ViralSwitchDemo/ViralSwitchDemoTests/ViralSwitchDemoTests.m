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

__block AMViralSwitch *subject;
__block UIViewController *controller;
__block UILabel *label;

describe(@"AMViralSwitch", ^{

    describe(@"switchOn", ^{

        beforeEach(^{
            UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

            controller = [[UIViewController alloc] init];

            window.rootViewController = controller;
            expect(controller.view).willNot.beNil();
            controller.view.backgroundColor = [UIColor whiteColor];

            [window makeKeyAndVisible];

            subject = [[AMViralSwitch alloc] init];
            subject.frame = CGRectMake(controller.view.frame.size.width / 2 - subject.frame.size.width / 2, controller.view.frame.size.height / 2 - subject.frame.size.height / 2, subject.frame.size.width, subject.frame.size.height);
            subject.onTintColor = [UIColor redColor];
            [controller.view addSubview:subject];

            label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 50)];
            label.text = @"Hello!";
            label.textColor = [UIColor blackColor];
            [controller.view addSubview:label];

            [subject awakeFromNib];
        });

        it(@"looks right", ^{
            if (kRECORD) expect(controller.view).will.recordSnapshotNamed(@"SwitchOff");
            expect(controller.view).will.haveValidSnapshotNamed(@"SwitchOff");

            subject.on = YES;

            if (kRECORD) expect(controller.view).will.recordSnapshotNamed(@"SwitchOn");
            expect(controller.view).will.haveValidSnapshotNamed(@"SwitchOn");
        });

        it(@"calls the completion handlers", ^{
            __block int meaningOfLife = 0;
            subject.completionOn = ^{
                meaningOfLife = 42;
            };
            subject.completionOff = ^{
                meaningOfLife = 0;
            };
            subject.on = YES;

            expect(meaningOfLife).after(1).to.equal(42);

            subject.on = NO;

            expect(meaningOfLife).after(1).to.equal(0);
        });

        it(@"animates fellow views", ^{
            subject.animationElementsOn =
            @[
              @{ AMElementView: label,
                 AMElementKeyPath: @"textColor",
                 AMElementToValue: [UIColor whiteColor] }
              ];

            subject.animationElementsOff =
            @[
              @{ AMElementView: label,
                 AMElementKeyPath: @"textColor",
                 AMElementToValue: [UIColor blackColor] }
              ];

            subject.on = YES;

            expect(label.textColor).after(1).to.equal([UIColor whiteColor]);

            subject.on = NO;

            expect(label.textColor).after(1).to.equal([UIColor blackColor]);
        });
    });
    
});

SpecEnd
