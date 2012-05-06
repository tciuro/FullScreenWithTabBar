//
//  WBSecondViewController.m
//  FullScreenWithTabBar
//
//  Created by Tito Ciuro on 5/6/12.
//  Copyright (c) 2012 Walt Disney Company. All rights reserved.
//

#import "WBSecondViewController.h"

@interface WBSecondViewController ()

@end

@implementation WBSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
