//
//  IFSheetControllerAppDelegate.m
//  IFSheetController
//
//  Created by Itai Ferber on 7/15/11.
//  Copyright 2011 Itai Ferber. All rights reserved.
//

#import "SheetControllerAppDelegate.h"

@implementation IFSheetControllerAppDelegate

#pragma mark - IFSheetControllerDelegate Methods
- (BOOL)sheetControllerShouldOpenSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerShouldOpenSheet: called!");
	return YES;
}

- (void)sheetControllerWillOpenSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerWillOpenSheet: called!");
}

- (void)sheetControllerDidOpenSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerDidOpenSheet: called!");
}

- (BOOL)sheetControllerShouldCloseSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerShouldCloseSheet: called!");
	return YES;
}

- (void)sheetControllerWillCloseSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerWillCloseSheet: called!");
}

- (void)sheetControllerDidCloseSheet:(IFSheetController *)theController {
	NSLog(@"sheetControllerDidCloseSheet: called!");
}

@end