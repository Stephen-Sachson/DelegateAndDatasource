//
//  DelegateDemo.m
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright 2012 silicon valley. All rights reserved.
//

#import "DelegateDemo.h"


@implementation DelegateDemo
@synthesize delegate=_delegate;
@synthesize dataSource=_dataSource;

- (id)init{
	if (self=[super init]){
		//Do some initialization here.
		
	}
	return self;
}

- (void)dealWithTextField:(UITextField *)textField asYou:(BOOL)should {
	
	//Implement anything here before the text field has been disabled.
	
	if ([_delegate respondsToSelector:@selector(didTextEnable:)]) {
		[_delegate didTextEnable:should];
	}
	return;
}

- (BOOL)dealWithTextChange {
	
	//Implement anything here before the text has changed.
	
	if ([_dataSource respondsToSelector:@selector(didTextChange)]) {
		[_dataSource didTextChange];
	}
	return YES;
}



- (void)dealloc {
	[_delegate release];
	[_dataSource release];
		
	[super dealloc];
	
}
@end
