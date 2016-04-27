//
//  DrawerVC.h
//  Saivian
//
//  Created by Apple on 28/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
enum {
    
    OFF_HIDDEN = 0,
    ON_SCREEN = 1,
    
};
typedef NSUInteger CurrentState;
@interface DrawerVC : ViewController
{
    
    UIView *parentView;
    CurrentState _currentState;
    AppDelegate *appDelegate;
    IBOutlet UIButton *removeBtn;
    IBOutlet UIButton *homeBtn;
    IBOutlet UIButton *profile;
    IBOutlet UIButton *cashbacklocal;
    IBOutlet UIButton *instantsavings;
    IBOutlet UIButton *stores;
    IBOutlet UIButton *receipts;
    IBOutlet UIButton *share;
    IBOutlet UIButton *settings;
    
}
@property CurrentState _currentState;
@property ( strong , nonatomic ) UINavigationController *navigationController;
+(DrawerVC *)getInstance;
-(void)AddInView:(UIView *)parentView;
-(void)ShowInView;

- (IBAction)generalAction:(id)sender;
- (IBAction)Home:(id)sender;
- (IBAction)profile:(id)sender;
- (IBAction)cashbacklocal:(id)sender;
- (IBAction)instantsavings:(id)sender;
- (IBAction)stores:(id)sender;
- (IBAction)receipts:(id)sender;
- (IBAction)share:(id)sender;
- (IBAction)Logout:(id)sender;
- (IBAction)settings:(id)sender;


@end
