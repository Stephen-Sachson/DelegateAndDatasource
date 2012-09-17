//
//  DelegateAndDatasourceAppDelegate.h
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright silicon valley 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DelegateAndDatasourceViewController;

@interface DelegateAndDatasourceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DelegateAndDatasourceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DelegateAndDatasourceViewController *viewController;

@end

