//
//  NavigationHandler.m
//  Saivian
//
//  Created by Apple on 27/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "NavigationHandler.h"
#import "ViewController.h"
#import "HomeVC.h"
#import "ProfileVC.h"
@implementation NavigationHandler

- (id)initWithMainWindow:(UIWindow *)_tempWindow{
    
    if(self = [super init])
    {
        _window = _tempWindow;
    }
    instance = self;
    return self;
}

static NavigationHandler *instance= NULL;

+(NavigationHandler *)getInstance
{
    if (instance == nil) {
        instance = [[super alloc] init];
    }
    
    return instance;
}
-(void)loadFirstVC{
    appDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    ViewController *_mainVC = [[ViewController alloc] init];
    navController = [[UINavigationController alloc] initWithRootViewController:_mainVC];
    _window.rootViewController = navController;
    [navController setNavigationBarHidden:YES];
}
-(void)NavigateToHomeScreen{
    
    HomeVC *homeVC = [[HomeVC alloc] initWithNibName:@"HomeVC" bundle:nil];
    navController = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    _window.rootViewController = navController;
    [navController setNavigationBarHidden:YES];
}
-(void)MoveToProfile{
    
    [navController popToRootViewControllerAnimated:NO];
    ProfileVC *myBeam = [[ProfileVC alloc] initWithNibName:@"ProfileVC" bundle:nil];
    [navController pushViewController:myBeam animated:YES];
    
}
@end
