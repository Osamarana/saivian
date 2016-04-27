//
//  ProfileVC.m
//  Saivian
//
//  Created by Apple on 28/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "ProfileVC.h"
#import "DrawerVC.h"
@interface ProfileVC ()

@end

@implementation ProfileVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)openDrawer:(id)sender {

    [[DrawerVC getInstance] AddInView:self.view];
    [[DrawerVC getInstance] ShowInView];
}

@end
