//
//  ChimneyLabel.h
//  Santa'sChoice
//
//  Created by teacher on 5/21/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChimneyLabelDelegate
- (void)visitedNaughtyChildNamed:(NSString *)name;
- (void)visitedNiceChildNamed:(NSString *)name;
@end


@interface ChimneyLabel : UILabel
@property id<ChimneyLabelDelegate> delegate;
@property (readonly) BOOL isNaughty;
@property (readonly) NSString *childName;
@end
