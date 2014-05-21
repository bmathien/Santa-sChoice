//
//  ChimneyLabel.m
//  Santa'sChoice
//
//  Created by teacher on 5/21/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "ChimneyLabel.h"

@interface ChimneyLabel ()
@property (readwrite) BOOL isNaughty;

@end

@implementation ChimneyLabel

-(id) initWithCoder:(NSCoder *)aDecoder //assigns a random identifier on tap
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.isNaughty = arc4random_uniform(2);
        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:tapGestureRecognizer];
    }
    return self;
}

-(IBAction)onTapped:(id)sender
{
    if (self.isNaughty)
    {
        [self.delegate visitedNaughtyChildNamed:self.childName];
    }
    else
    {
        [self.delegate visitedNiceChildNamed:self.childName];
    }
}

- (NSString *) childName  //custom method for childs name
{
    return self.text;
}

@end
