//
//  WBKioskViewController.m
//  FullScreenWithTabBar
//
//  Created by Tito Ciuro on 5/6/12.
//
// Copyright (c) 2012 Webbo, L.L.C. All rights reserved.
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE
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
