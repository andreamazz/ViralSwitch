<p align="center">
  <img width="420" height="240" src="assets/logo.png"/>
</p>

[![Build Status](https://travis-ci.org/andreamazz/ViralSwitch.png)](https://travis-ci.org/andreamazz/ViralSwitch)
[![CocoaPods](https://cocoapod-badges.herokuapp.com/v/AMViralSwitch/badge.png?style=flat)](http://cocoapods.org/?q=amviralswitch)
[![Coverage Status](https://coveralls.io/repos/andreamazz/ViralSwitch/badge.svg)](https://coveralls.io/r/andreamazz/ViralSwitch)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

UISwitch subclass that 'infects' the parent view with the `onTintColor` when the switch is turned on. Inspired by [this Dribble](https://dribbble.com/shots/1749645-Contact-Sync) by [Ramotion](https://dribbble.com/teams/Ramotion).

<p align="center">
  <a href='https://appetize.io/app/0c9gj9epg9bnv87c4mu94udcfr' alt='Live demo'>
    <img width="50" height="60" src="assets/demo.png"/>
  </a>
</p>

# Screenshot
![ViralSwitch](https://raw.githubusercontent.com/andreamazz/ViralSwitch/master/assets/screenshot.gif)

# Installation

## Using cocoapods:
```
pod 'AMViralSwitch'
```

## Using Carthage:
```
github "andreamazz/ViralSwitch"
```

# Usage
`AMViralSwitch` is a drop-in replacement of `UISwitch`:  
- Use `AMViralSwitch` instead of `UISwitch`
- Set the `onTintColor` property of the switch

The switch will automatically _infect_ its superview with the selected color.

## Animation duration
Use `animationDuration` property to control the animation's speed:
```swift
self.toggle.animationDuration = 1.0
```

## Animation completion
You can set a completion block for both `on` and `off` animations:
```swift
self.toggle.completionOn = {
  print("Enabled")
}

self.toggle.completionOff = {
  print("Disabled")
}
```

# Animate views
You can animate other views alongside the switch _infection_. Typically you'll want to change color to views or labels that are inside the same superview. You can animate CoreAnimation properties likes this:

### Swift
```swift
toggle.animationElementsOn = [
    [
        AMElementView: self.greenView.layer,
        AMElementKeyPath: "backgroundColor",
        AMElementFromValue: UIColor.blackColor().CGColor,
        AMElementToValue: UIColor.whiteColor().CGColor
    ]
]
```

### Objective-C
```objc
self.toggle.animationElementsOn = @[
   @[ AMElementView: self.greenView.layer,
      AMElementKeyPath: @"backgroundColor",
      AMElementFromValue: (id)[UIColor clearColor].CGColor,
      AMElementToValue: (id)[UIColor whiteColor].CGColor }
];
```

To animate the `textColor` of an `UILabel` the syntax is slightly different:

### Swift
```swift
toggle.animationElementsOn = [
    [
        AMElementView: label,
        AMElementKeyPath: "textColor",
        AMElementFromValue: UIColor.blackColor(),
        AMElementToValue: UIColor.whiteColor()
    ]
]
```

### Objective-C
```objc
self.blueSwitch.animationElementsOn = @[
    @{ AMElementView: self.blueLabel,
       AMElementKeyPath: @"textColor",
       AMElementToValue: [UIColor whiteColor] }
];
```

Follow the same principle to animate the `tintColor` of your `UIButton`s:

### Swift
```swift
toggle.animationElementsOn = [
    [
        AMElementView: self.infoButton,
        AMElementKeyPath: "tintColor",
        AMElementToValue: UIColor.whiteColor()
    ]
]
```

### Objective-C
```objc
self.blueSwitch.animationElementsOn = @[
    @{ AMElementView: self.infoButton,
       AMElementKeyPath: @"tintColor",
       AMElementToValue: [UIColor whiteColor] }
];
```

# Author
[Andrea Mazzini](https://twitter.com/theandreamazz). I'm available for freelance work, feel free to contact me.

Want to support the development of [these free libraries](https://cocoapods.org/owners/734)? Buy me a coffee ☕️ via [Paypal](https://www.paypal.me/andreamazzini).  

# Contributors
Thanks to [everyone](https://github.com/andreamazz/ViralSwitch/graphs/contributors) kind enough to submit a pull request.

# MIT License

	Copyright (c) 2017 Andrea Mazzini. All rights reserved.

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the "Software"),
	to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
