//
//  MyViewController.h
//  TicTacToe
//
//  Created by Stan Chang Khin Boon on 4/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyViewController : UIViewController
{
	UIButton * grid00;
	UIButton * grid01;
	UIButton * grid02;
	UIButton * grid10;
	UIButton * grid11;
	UIButton * grid12;
	UIButton * grid20;
	UIButton * grid21;
	UIButton * grid22;
	UILabel * message;
	NSMutableArray * grids;
	NSString * who;
	BOOL won;
}

@property ( nonatomic, retain ) IBOutlet UIButton * grid00;
@property ( nonatomic, retain ) IBOutlet UIButton * grid01;
@property ( nonatomic, retain ) IBOutlet UIButton * grid02;
@property ( nonatomic, retain ) IBOutlet UIButton * grid10;
@property ( nonatomic, retain ) IBOutlet UIButton * grid11;
@property ( nonatomic, retain ) IBOutlet UIButton * grid12;
@property ( nonatomic, retain ) IBOutlet UIButton * grid20;
@property ( nonatomic, retain ) IBOutlet UIButton * grid21;
@property ( nonatomic, retain ) IBOutlet UIButton * grid22;
@property ( nonatomic, retain ) IBOutlet UILabel * message;
@property ( nonatomic, copy ) NSString * who;

- ( IBAction ) selectGrid00: ( id ) sender;
- ( IBAction ) selectGrid01: ( id ) sender;
- ( IBAction ) selectGrid02: ( id ) sender;
- ( IBAction ) selectGrid10: ( id ) sender;
- ( IBAction ) selectGrid11: ( id ) sender;
- ( IBAction ) selectGrid12: ( id ) sender;
- ( IBAction ) selectGrid20: ( id ) sender;
- ( IBAction ) selectGrid21: ( id ) sender;
- ( IBAction ) selectGrid22: ( id ) sender;

- ( void ) changeTurn;
- ( void ) updateGrids;
- ( BOOL ) winLiao;
- ( BOOL ) checkFirst: ( NSString * ) first second: ( NSString * ) second third: ( NSString * ) third;

@end
