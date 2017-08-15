# Pre-work - *Name of App Here*

Tipper is a tip calculator application for iOS.

Submitted by: Jonathan Kim

Time spent: 7 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
- [ ] UI Updates (colors and animations)
- [ ] Splitting between multiple people
- [ ] Scrolling tip percentage changer

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/GvbMxv2' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** This suprised me how fun it was. The Xcode Interface Builder is surprisingly intuitive, while frustrating at the same time since I don't know the hotkeys. The way the views work reminds me a lot of reactjs, especially the life cycle of the View Controller. The error handling was kind of rough to be quite honest since I wasn't quite sure where exactly to look. I didn't really have a good way of understanding what happened. I actually had a first iteration of this project where I accidentally deleted my AppDelegate file which I didn't know broke everything else.

This reminded me a lot with jQuery as well. The $ operator would grab the element, kind of like the the outlets, and then the actions are just the functions that we do afterwards like in a .on("change" function(){ }). In this way, this is how I would go about trying to explain things to another developer. You have outlets, which are used to reference parts, and actions are the functions we place upon those references, just like how we reference html using ids and tags, and use javascript to put functions upon those references.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**  Strong reference cycles for closures can happen in a number of ways. Ultimately, what strong reference cycles are cycles that hold of information that is not needed anymore, but is held because of strong references. Strong references are classes that are created due to a function specifically calling for the creation of that class, without indicating how much longer it is going to be needed. We can indicate the parameters by which to get rid of references, and therefore deallocate memory, by instantiating the associations with weak or unowned references. This just puts conditions on whether the class exists, and deinitializes whatever is not needed anymore.

Your friend needs to carry a couple of items. He only has 2 arms to do so, so he makes an association ( you ) to help him carry things. A strong reference is when he specifically tells you to carry those extra items. And he goes away and does his own thing, you're now stuck carrying these items for the rest of time. This is the cycle since you were specifically chosen to perform this task without being told when to end. Until he puts some conditions on when or where to put them down ( aka the weak or unowned associations ) you are carrying things in your hands. As a human its obvious that we would just drop that stuff, but for computers and ARC they need to be told when to put down those extra items.
