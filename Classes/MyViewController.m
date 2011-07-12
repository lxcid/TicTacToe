//
//  MyViewController.m
//  TicTacToe
//
//  Created by Stan Chang Khin Boon on 4/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"


@implementation MyViewController

@synthesize grid00;
@synthesize grid01;
@synthesize grid02;
@synthesize grid10;
@synthesize grid11;
@synthesize grid12;
@synthesize grid20;
@synthesize grid21;
@synthesize grid22;
@synthesize message;
@synthesize who;

- ( void ) viewDidLoad
{
	[super viewDidLoad];
	
	grids = [[NSMutableArray alloc] initWithObjects: @"", @"", @"", @"", @"", @"", @"", @"", @"", nil];
	[self changeTurn];
	won = FALSE;
}

- ( IBAction ) selectGrid00: ( id ) sender
{
	if ( [[grids objectAtIndex: 0] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 0];
		[grids insertObject: self.who atIndex: 0];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid01: ( id ) sender
{
	if ( [[grids objectAtIndex: 1] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 1];
		[grids insertObject: self.who atIndex: 1];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid02: ( id ) sender
{
	if ( [[grids objectAtIndex: 2] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 2];
		[grids insertObject: self.who atIndex: 2];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid10: ( id ) sender
{
	if ( [[grids objectAtIndex: 3] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 3];
		[grids insertObject: self.who atIndex: 3];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid11: ( id ) sender
{
	if ( [[grids objectAtIndex: 4] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 4];
		[grids insertObject: self.who atIndex: 4];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid12: ( id ) sender
{
	if ( [[grids objectAtIndex: 5] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 5];
		[grids insertObject: self.who atIndex: 5];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid20: ( id ) sender
{
	if ( [[grids objectAtIndex: 6] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 6];
		[grids insertObject: self.who atIndex: 6];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid21: ( id ) sender
{
	if ( [[grids objectAtIndex: 7] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 7];
		[grids insertObject: self.who atIndex: 7];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( IBAction ) selectGrid22: ( id ) sender
{
	if ( [[grids objectAtIndex: 8] isEqual: @""] )
	{
		[grids removeObjectAtIndex: 8];
		[grids insertObject: self.who atIndex: 8];
		[self updateGrids];
		[self changeTurn];
	}
}

- ( void ) changeTurn
{
	if ( [self.who isEqual: @"X"] )
	{
		self.who = @"O";
	}
	else
	{
		self.who = @"X";
	}

}

- ( void ) updateGrids
{
	[grid00 setTitle: [grids objectAtIndex: 0] forState: UIControlStateNormal ];
	[grid01 setTitle: [grids objectAtIndex: 1] forState: UIControlStateNormal ];
	[grid02 setTitle: [grids objectAtIndex: 2] forState: UIControlStateNormal ];
	[grid10 setTitle: [grids objectAtIndex: 3] forState: UIControlStateNormal ];
	[grid11 setTitle: [grids objectAtIndex: 4] forState: UIControlStateNormal ];
	[grid12 setTitle: [grids objectAtIndex: 5] forState: UIControlStateNormal ];
	[grid20 setTitle: [grids objectAtIndex: 6] forState: UIControlStateNormal ];
	[grid21 setTitle: [grids objectAtIndex: 7] forState: UIControlStateNormal ];
	[grid22 setTitle: [grids objectAtIndex: 8] forState: UIControlStateNormal ];
	
	if ( [self winLiao] )
	{
		message.text = [NSString stringWithFormat: @"%@ win!!!", who];
	}
}

- ( BOOL ) winLiao
{
	if ( !won )
	{
		if ( [self checkFirst: [grids objectAtIndex: 0] second: [grids objectAtIndex: 1] third: [grids objectAtIndex: 2]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 3] second: [grids objectAtIndex: 4] third: [grids objectAtIndex: 5]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 6] second: [grids objectAtIndex: 7] third: [grids objectAtIndex: 8]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 0] second: [grids objectAtIndex: 3] third: [grids objectAtIndex: 6]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 1] second: [grids objectAtIndex: 4] third: [grids objectAtIndex: 7]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 2] second: [grids objectAtIndex: 5] third: [grids objectAtIndex: 8]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 0] second: [grids objectAtIndex: 4] third: [grids objectAtIndex: 8]] )
		{
			won = TRUE;
			return TRUE;
		}
		else if ( [self checkFirst: [grids objectAtIndex: 2] second: [grids objectAtIndex: 4] third: [grids objectAtIndex: 6]] )
		{
			won = TRUE;
			return TRUE;
		}
		else
		{
			return FALSE;
		}

		
	}
	else
	{
		return FALSE;
	}
}

- ( BOOL ) checkFirst: ( NSString * ) first second: ( NSString * ) second third: ( NSString * ) third;
{
	return ( [who isEqual: first] && [who isEqual: second] && [who isEqual: third] );
}

- (void)dealloc
{
	[grids release];
	[super dealloc];
}


@end
