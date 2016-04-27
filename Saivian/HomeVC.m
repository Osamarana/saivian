//
//  HomeVC.m
//  Saivian
//
//  Created by Apple on 28/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "HomeVC.h"
#import "DrawerVC.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer* sgr = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipe:)];
    [sgr setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:sgr];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ShowDrawer:(id)sender {
    
    [[DrawerVC getInstance] AddInView:self.view];
    [[DrawerVC getInstance] ShowInView];
    
}
- (void)rightSwipe:(UISwipeGestureRecognizer *)gesture
{
    [self ShowDrawer:self];
}

@end
