//
//  ViewController.m
//  Santa'sChoice
//
//  Created by teacher on 5/21/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "ViewController.h"
#import "ChimneyLabel.h"

@interface ViewController () <ChimneyLabelDelegate>
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyOne;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyTwo;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyThree;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyFour;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyFive;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneySix;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chimneyOne.delegate = self;
    self.chimneyTwo.delegate = self;
    self.chimneyThree.delegate = self;
    self.chimneyFour.delegate = self;
    self.chimneyFive.delegate = self;
    self.chimneySix.delegate = self;
}



- (void)visitedNaughtyChildNamed:(NSString *)name  //logs naughty or nice
{
    NSLog(@"Naughty Child %@", name);
}



-(void)visitedNiceChildNamed:(NSString *)name
{
    NSLog(@"Nice Child %@", name);
    [self performSegueWithIdentifier:@"GotAToySegue" sender:self];
}

- (IBAction)unwindFromYes:(UIStoryboardSegue *)segue
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
