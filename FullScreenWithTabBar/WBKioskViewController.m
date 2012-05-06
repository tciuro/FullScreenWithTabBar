//
//  WBKioskViewController.m
//  FullScreenWithTabBar
//
//  Created by Tito Ciuro on 5/6/12.
//  Copyright (c) 2012 Walt Disney Company. All rights reserved.
//

#import "WBKioskViewController.h"

@interface WBKioskViewController ()

@end

@implementation WBKioskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated
{
    // Get the size of the main screen
    CGRect fullScreenRect = [[UIScreen mainScreen]bounds];

    // Hide the tab bar
    ((UITabBarController *)self.parentViewController).tabBar.hidden = YES;
    
    // Resize and fill the screen
    [[((UITabBarController *)self.parentViewController).view.subviews objectAtIndex:0] setFrame:fullScreenRect];
}

- (void)viewWillDisappear:(BOOL)animated
{
    ((UITabBarController *)self.parentViewController).tabBar.hidden = NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goBack:(id)sender
{
    ((UITabBarController *)self.parentViewController).selectedIndex = 0;
}

@end
