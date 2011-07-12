//
//  TicTacToeAppDelegate.h
//  TicTacToe
//
//  Created by Stan Chang Khin Boon on 4/10/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyViewController.h"

@interface TicTacToeAppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow * window;
	MyViewController * myViewController;
}

@property ( nonatomic, retain ) IBOutlet UIWindow * window;
@property ( nonatomic, retain ) MyViewController * myViewController;

@end

