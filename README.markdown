IFSheetController - by Itai Ferber - itaiferber@gmail.com

Introduction
------------

`IFSheetController` is a simple library that provides services for an application that wants fine-grain control over using sheets. Using `IFSheetController`, it's very easy to set up and deploy as many sheets as necessary for an application. For the most part, `IFSheetController` is an attempt to bring Brandon Walkin's excellent [`BWSheetController`](https://bitbucket.org/bwalkin/bwtoolkit/src/b627b745f767/BWSheetController.h) up to date.

`IFSheetController` uses Mike Ash's [`MAZeroingWeakRef`](https://github.com/mikeash/MAZeroingWeakRef), and includes the files along with a copy of their BSD license. No customization is necessary, just a copy of `MAZeroingWeakRef.h` and `MAZeroingWeakRef.m` will suffice (the files have been edited very slightly to behave differently if Automatic Reference Counting is turned on - read the ARC section for more info).

Setup
-----

The workflow of setting up a controller goes like this:
  1. In Interface Builder, lay out and create the parent and sheet windows, complete with interface controls.
  2. Create a new `NSObject` and set its class to `IFSheetController`.
  3. Connect the `parentWindow` and `sheet` outlets of the sheet controller to your parent and sheet window respectively. If you have a delegate set up, connect it to the `delegate` outlet on the controller.
  4. Connect any interface items to the methods of the sheet controller to open or close the sheet.

If you've made a mistake along the way, and have set the sheet controller's error reporting level to 1 (as opposed to 0), it will let you know about any errors it encounters (and attempts to recover from). If the error reporting level is set to 0, it will silently either ignore the affected areas (if allowed), attempt to repair the issue, or abort if no other option is available.

Automatic Reference Counting
----------------------------

This project is compatible with Clang's Automatic Reference Counting feature, available in Apple Clang 3.0 (included in Xcode 4.2). If the `__has_feature(objc_arc)` macro expands to 1 in the preprocessor, all `-retain`, `-release`, and `-autorelease` calls will be removed from the file and replaced with equivalent ARC-compatible code. Because ARC allows for the use of the `__weak` specifier, `MAZeroingWeakRef` is not needed for weak references, and since `MAZeroingWeakRef` will not compile under ARC, it has been modified to not compile if ARC is turned on. You may even remove `MAZeroingWeakRef` completely from the project if you have ARC turned on to slim the project down.

App Store
---------

No code included in `IFSheetController` makes use of private APIs, but special care is to be taken with `MAZeroingWeakRef`. The copy of `MAZeroingWeakRef` included with the sample project has its 'hackery' level set to 0 (it won't trip off any problems with App Store submissions), but if you decide to include your own copy, make sure `COREFOUNDATION_HACKERY_LEVEL` is indeed set to 0.

Source Code
-----------

The project source code is available on GitHub (in fact, you're most likely already viewing it there):

    http://github.com/itaiferber/IFSheetController/

The source code is bundled under an MIT license, so you're pretty much free to do with it as you wish.

More Information
----------------

Additional documentation can be found in the source code, if needed (header files are extensively documented).
Any outstanding questions you might have will be gladly taken at my email address (supplied above).

Enjoy!