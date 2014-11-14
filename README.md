ViralSwitch
========

[![Build Status](https://travis-ci.org/andreamazz/ViralSwitch.png)](https://travis-ci.org/andreamazz/ViralSwitch)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/AMViralSwitch/badge.png?style=flat)](http://cocoapods.org/?q=amviralswitch)

UISwitch subclass that 'infects' the parent view with the `onTintColor` when the switch is turned on. Inspired by [this Dribble](https://dribbble.com/shots/1749645-Contact-Sync) by [Ramotion](https://dribbble.com/teams/Ramotion).


#Screenshot
![ViralSwitch](https://raw.githubusercontent.com/andreamazz/ViralSwitch/master/screenshot.gif)

#Installation
Using cocoapods:
`pod 'AMViralSwitch'`

#Usage
AMViralSwitch is a drop-in replacement of UISwitch. You just need to set the `onTintColor` property of the switch, and it will automatically _infect_ its superview with the selected color.

#Animate views
You can animate other views alongside the switch _infection_. Tipically you'll want to change color to views or labels that are inside the same superview. You can animate CoreAnimation properties likes this: 
```objc
self.greenSwitch.animationElementsOn = @[
   @{ AMElementView: self.greenView.layer,
      AMElementKeyPath: @"backgroundColor", 
      AMElementFromValue: (id)[UIColor clearColor].CGColor,
      AMElementToValue: (id)[UIColor whiteColor].CGColor }
];
```

To animate the `textColor` of an `UILabel` the syntax is slightly different:
```objc
self.blueSwitch.animationElementsOn = @[
    @{ AMElementView: self.blueLabel,
       AMElementKeyPath: @"textColor",
       AMElementToValue: [UIColor whiteColor] }
];
```
Follow the same principle to animate the `tintColor` of your `UIButton`s:
```objc
self.blueSwitch.animationElementsOn = @[
    @{ AMElementView: self.infoButton,
       AMElementKeyPath: @"tintColor",
       AMElementToValue: [UIColor whiteColor] }
];
```



#TODO  
- [ ] Test
- [ ] Add Travis CI

#MIT License

	Copyright (c) 2014 Andrea Mazzini. All rights reserved.

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
	
