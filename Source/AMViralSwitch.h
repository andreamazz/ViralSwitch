//
//  AMViralSwitch.h
//  ViralSwitchDemo
//
//  Created by Andrea Mazzini on 06/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

#import <UIKit/UIKit.h>

/** @constant AMViralSwitch AMElementView View animated alongside the switch */
FOUNDATION_EXPORT NSString *const AMElementView;
/** @constant AMViralSwitch AMElementView Key-path for the animated view property */
FOUNDATION_EXPORT NSString *const AMElementKeyPath;
/** @constant AMViralSwitch AMElementView Starting point for the animated view */
FOUNDATION_EXPORT NSString *const AMElementFromValue;
/** @constant AMViralSwitch AMElementView End point for the animated view */
FOUNDATION_EXPORT NSString *const AMElementToValue;

/** AMViralSwitch
 *
 * UISwitch subclass that 'infects' the parent view with the onTintColor when the switch is turned on
 */
@interface AMViralSwitch : UISwitch

/**-----------------------------------------------------------------------------
 * @name AMViralSwitch Properties
 * -----------------------------------------------------------------------------
 */

/** Animation duration
 *
 * Holds the duration of the animation. Can be set via UIAppearance proxy
 */
@property (nonatomic, assign) NSTimeInterval animationDuration UI_APPEARANCE_SELECTOR;

/** Views animated when the switch is turned on
 *
 * Holds an array of dictionaries with the following structure:
 * @{
 *  AMElementView: someView,
 *  AMElementKeyPath: @"alpha",
 *  AMElementFromValue: @0,
 *  AMElementToValue: @1
 * }
 */
@property (nonatomic, strong) NSArray *animationElementsOn;

/** Views animated when the switch is turned off
 *
 * Holds an array of dictionaries with the following structure:
 * @{
 *  AMElementView: someView,
 *  AMElementKeyPath: @"alpha",
 *  AMElementFromValue: @0,
 *  AMElementToValue: @1
 * }
 */
@property (nonatomic, strong) NSArray *animationElementsOff;

/** Animation 'on' completion
 *
 * Block called when the animation from 'off' to 'on' is completed
 */
@property (nonatomic, copy) void (^completionOn)();

/** Animation 'off' completion
 *
 * Block called when the animation from 'on' to 'off' is completed
 */
@property (nonatomic, copy) void (^completionOff)();

@end
