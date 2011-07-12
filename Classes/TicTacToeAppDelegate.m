//
//  TicTacToeAppDelegate.m
//  TicTacToe
//
//  Created by Stan Chang Khin Boon on 4/10/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "TicTacToeAppDelegate.h"

@implementation TicTacToeAppDelegate

@synthesize window;
@synthesize myViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	MyViewController * aViewController = [[MyViewController alloc] initWithNibName: @"MyViewController" bundle: [NSBundle mainBundle]];
	[self setMyViewController: aViewController];
	[aViewController release];
	UIView * controllerView = [myViewController view];
	[window addSubview: controllerView];
	[window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc
{
	[myViewController release];
    [window release];
    [super dealloc];
}


@end
