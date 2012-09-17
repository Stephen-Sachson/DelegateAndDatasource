//
//  DelegateAndDatasourceViewController.m
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright silicon valley 2012. All rights reserved.
//

#import "DelegateAndDatasourceViewController.h"


@implementation DelegateAndDatasourceViewController
@synthesize label;
@synthesize textField=_textField;
@synthesize button;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	shouldEnable=YES;
	_textField.delegate=self;
	demo=[[DelegateDemo alloc] init];
	demo.delegate=self;
	demo.dataSource=self;
}


- (IBAction)enableTextField {
	if(shouldEnable) {
		shouldEnable=NO;
		[button setTitle:@"Enable Text" forState:UIControlStateNormal];
	}
	else {
		
		shouldEnable=YES;
		[button setTitle:@"Disable Text" forState:UIControlStateNormal];
	}
	[demo dealWithTextField:_textField asYou:shouldEnable];
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[label release];
	[_textField release];
    [string release];
	[demo release];
    [super dealloc];
}
#pragma mark -
#pragma mark Delegate
- (void)didTextEnable:(BOOL)isEnabled {
	if (isEnabled)
	label.text=@"Delegate: Text field enabled";
	else 
	label.text=@"Delegate: Text field disabled";
}



#pragma mark -
#pragma mark Data source
- (void)didTextChange {
	label.text=@"Data source: Text changed.";
}



#pragma mark -
#pragma mark Text Field Delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
	string=[textField.text retain];
	return shouldEnable;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
	if([textField.text isEqualToString:string]) {
		label.text=@"";
		return YES;
	}
	return [demo dealWithTextChange];
	
}
@end
