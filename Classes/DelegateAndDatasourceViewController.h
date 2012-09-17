//
//  DelegateAndDatasourceViewController.h
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright silicon valley 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelegateDemo.h"
@class DelegateDemo;
@interface DelegateAndDatasourceViewController : UIViewController 
                                <DelegateDemoDelegate,DelegateDemoDatasource,UITextFieldDelegate>{
	IBOutlet UILabel *label;
	IBOutlet UITextField *_textField;
	IBOutlet UIButton *button;
	BOOL shouldEnable;
	DelegateDemo *demo;
									
	@private
	NSString *string;								
}
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction)enableTextField;

@end

