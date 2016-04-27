//
//  NavigationHandler.h
//  Saivian
//
//  Created by Apple on 27/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
@interface NavigationHandler : NSObject
{
    UINavigationController *navController;
    UIWindow *_window;
    AppDelegate *appDelegate;
}
-(void)loadFirstVC;
-(void)MoveToProfile;
-(void)NavigateToHomeScreen;
-(id)initWithMainWindow:(UIWindow *)_tempWindow;
+(NavigationHandler *)getInstance;
@end
