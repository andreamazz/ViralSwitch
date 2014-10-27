ViralSwitch
========

UISwitch subclass that 'infects' the parent view with the `onTintColor` when the switch is turned on. Inspired by [this Dribble](https://dribbble.com/shots/1749645-Contact-Sync) by [Ramotion](https://dribbble.com/teams/Ramotion).


#Screenshot
![ViralSwitch](https://raw.githubusercontent.com/andreamazz/ViralSwitch/master/screenshot.gif)

#Installation
Using cocoapods:
`pod 'AMViralSwitch'`

#Usage
AMViralSwitch is a drop-in replacement of UISwitch. You just need to set the `onTintColor` property of the switch, and it will automatically _infect_ its superview with the selected color.

#TODO  
- [ ] Trigger animations on other views
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
	
