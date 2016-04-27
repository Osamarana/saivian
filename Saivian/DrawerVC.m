//
//  DrawerVC.m
//  Saivian
//
//  Created by Apple on 28/04/2016.
//  Copyright © 2016 Osama. All rights reserved.
//

#import "DrawerVC.h"
#import "NavigationHandler.h"
#import "Constants.h"
@interface DrawerVC ()

@end


static DrawerVC *DrawerVC_Instance= NULL;
@implementation DrawerVC
@synthesize _currentState;
float _yLocation;
- (void)viewDidLoad {
    [super viewDidLoad];
    DrawerVC_Instance = self;
    if (IS_IPHONE_6 ) {
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, 667);
    }
    else if (IS_IPHONE_6Plus){
        
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, 736)];
    }
    removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [removeBtn setFrame:CGRectMake(0, 0, parentView.frame.size.width, parentView.frame.size.height)];
    [removeBtn addTarget:self action:@selector(ShowInView) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(DrawerVC *)getInstance{
    
    if(DrawerVC_Instance == NULL)
    {
        DrawerVC_Instance = [[DrawerVC alloc] initWithNibName:@"DrawerVC" bundle:nil];
        _yLocation = 0.0f;
    }
    
    return DrawerVC_Instance;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        _currentState = OFF_HIDDEN;
    }
    return self;
}
-(void)AddInView:(UIView *)_parentView{
    parentView = _parentView;
    if (IS_IPAD) {
        [self.view setFrame:CGRectMake(-424, _yLocation, self.view.frame.size.width, parentView.frame.size.height -_yLocation)];
    }else{
        
        [self.view setFrame:CGRectMake(-280, _yLocation, self.view.frame.size.width, self.view.frame.size.height)];
        if (IS_IPHONE_6) {
            [self.view setFrame:CGRectMake(-298, _yLocation, self.view.frame.size.width, self.view.frame.size.height)];
        }
    }
    [_parentView addSubview:self.view];
    
}
-(void)ShowInView{
    if(_currentState == OFF_HIDDEN)
    {
        [UIView transitionWithView:self.view duration:0.3 options:UIViewAnimationOptionCurveEaseIn animations:^{
            
            _currentState = ON_SCREEN;

            [self.view setFrame:CGRectMake(0, _yLocation, self.view.frame.size.width, parentView.frame.size.height-_yLocation)];
            [parentView addSubview:removeBtn];
            [parentView bringSubviewToFront:self.view];
            
            
            
        } completion:nil];
    }
    
    else if(_currentState == ON_SCREEN)
    {
        [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
            if (IS_IPAD) {
                [self.view setFrame:CGRectMake(-424, _yLocation, self.view.frame.size.width, parentView.frame.size.height -_yLocation)];
            }else{
                [self.view setFrame:CGRectMake(-280, _yLocation, self.view.frame.size.width, parentView.frame.size.height -_yLocation)];
                if (IS_IPHONE_6) {
                    [self.view setFrame:CGRectMake(-298 , _yLocation, self.view.frame.size.width, self.view.frame.size.height)];
                }
            }
            _currentState = OFF_HIDDEN;
            [removeBtn removeFromSuperview];
        } completion:nil];
    }
    
}

-(IBAction)generalAction:(id)sender{
    [self ShowInView];
}
- (IBAction)Home:(id)sender{
    [[NavigationHandler getInstance]NavigateToHomeScreen];
}
- (IBAction)profile:(id)sender{
    [[NavigationHandler getInstance]MoveToProfile];
}
- (IBAction)cashbacklocal:(id)sender{
}
- (IBAction)instantsavings:(id)sender{
}
- (IBAction)stores:(id)sender{
}
- (IBAction)receipts:(id)sender{
}
- (IBAction)share:(id)sender{
}
- (IBAction)Logout:(id)sender{
}
- (IBAction)settings:(id)sender{
}
@end
