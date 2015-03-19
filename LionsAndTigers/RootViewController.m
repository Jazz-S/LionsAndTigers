//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topViewConstraint;
@property NSMutableArray *photosArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photosArray = [NSMutableArray new];
    
}

-(void)topRevealButtonTapped:(UIButton *)button{
    self.topViewConstraint.constant = 100;
    NSLog(@"tapped");
}
-(void)shouldDisplayLions:(UIButton *)button
{

}
-(void)shouldDisplayTigers:(UIButton *)button;
{

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UINavigationController *nav = segue.destinationViewController;
    UIViewController *vc = nav.viewControllers[0];
    if ([vc isKindOfClass: [TopViewController class]]) {
        TopViewController *topVC = (TopViewController *)vc;
        topVC.delegate = self;
    } else
    {
        HUDViewController *hudVC = (HUDViewController *)vc;
        hudVC.delegate = self;
    }
}


@end
