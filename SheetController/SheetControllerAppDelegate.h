//
//  SheetControllerAppDelegate.h
//  SheetController
//
//  Created by Itai Ferber on 7/16/11.
//  Copyright 2011 Itai Ferber. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SheetControllerAppDelegate : NSObject <NSApplicationDelegate> {
	NSWindow *_window;
}

@property (strong) IBOutlet NSWindow *window;

@end
