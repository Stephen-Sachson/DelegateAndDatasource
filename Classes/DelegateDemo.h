//
//  DelegateDemo.h
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright 2012 silicon valley. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DelegateDemoDelegate <NSObject>
@required
- (void)didTextEnable:(BOOL)isEnabled;
/*
 @optional

*/
@end

@protocol DelegateDemoDatasource <NSObject>
@required
- (void)didTextChange;
/*
 @optional
 
 
 */
@end



@interface DelegateDemo : UIViewController  { 
	//Declare instance variables here.
		
	id<DelegateDemoDelegate> _delegate;
	id<DelegateDemoDatasource> _dataSource;
}

@property (nonatomic, retain) id<DelegateDemoDelegate> delegate;
@property (nonatomic, retain) id<DelegateDemoDatasource> dataSource;

- (void)dealWithTextField:(UITextField *)textField asYou:(BOOL)should;
- (BOOL)dealWithTextChange;

@end
 