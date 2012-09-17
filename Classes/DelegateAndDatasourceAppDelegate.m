//
//  DelegateAndDatasourceAppDelegate.m
//  DelegateAndDatasource
//
//  Created by Stephen on 9/17/12.
//  Copyright silicon valley 2012. All rights reserved.
//

#import "DelegateAndDatasourceAppDelegate.h"
#import "DelegateAndDatasourceViewController.h"
#import "DelegateDemo.h"

@implementation DelegateAndDatasourceAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
