# FullScreenWithTabBar
====================

## Motivation: I was recently struggling trying to make a UITabBarController work in Kiosk mode.

While looking around [StackOverflow](http://stackoverflow.com/) it was obvious I wasn't alone. Consider this example: you may have a tab bar that contains three items. One and three (the ones on each side) work as expected, allow you to switch between UIViewControllers. However, the item in the middle should completely take over the screen when pushed (e.g. to show an UIImagePickerController). The problem is, UITabBarController won't give up easily without a fight.
<br/><br/>
You can try to hide it by doing something like this:

    ((UITabBarController *)self.parentViewController).tabBar.hidden = YES;

Yes, this will hide the UITabBar, but it'll leave behind a black rectangle. Resizing the UIViewController's view won't help. What can be done? Turns out, it's quite easy. Make your own UIViewController subclass and add these two methods:

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
<br/>
I have written this extremely simple project to avoid excessive noise. Feel free to improve it, comment or use it anywhere.

## Contribute

I'd love to include your contributions. Feel free to improve it, send comments or suggestions. If you have improvements please [send me a pull request](https://github.com/tciuro/FullScreenWithTabBar/pull/new/master).

## Contact Me

You can ping me on Twitter —[@titusmagnus](http://twitter.com/titusmagnus).