//
//  ViewController.m
//  Saivian
//
//  Created by Apple on 27/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "ViewController.h"
#import "NavigationHandler.h"
@interface ViewController ()

@end

@implementation ViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)signInPressed:(id)sender
{
    [[NavigationHandler getInstance]NavigateToHomeScreen];
}
@end
