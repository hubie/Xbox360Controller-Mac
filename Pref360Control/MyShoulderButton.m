/*
    MICE Xbox 360 Controller driver for Mac OS X
    Copyright (C) 2006-2012 Colin Munro
    
    MyShoulderButton.m - implementation of simple button view
    
    This file is part of Xbox360Controller.

    Xbox360Controller is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Xbox360Controller is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Foobar; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/
#import "MyShoulderButton.h"

#define INSET_AMOUNT        2

@implementation MyShoulderButton

- (id)initWithFrame:(NSRect)frameRect
{
	if ((self = [super initWithFrame:frameRect]) != nil) {
		pressed=FALSE;
	}
	return self;
}

- (void)drawRect:(NSRect)rect
{
    NSRect area;
    
    area=[self bounds];
    NSDrawLightBezel(area,area);
    if(pressed) {
        area.origin.x+=INSET_AMOUNT;
        area.origin.y+=INSET_AMOUNT;
        area.size.width-=INSET_AMOUNT*2;
        area.size.height-=INSET_AMOUNT*2;
        [[NSColor blueColor] set];
        NSRectFill(area);
    }
}

- (void)setPressed:(BOOL)b
{
    pressed=b;
    [self setNeedsDisplay:TRUE];
}

@end
