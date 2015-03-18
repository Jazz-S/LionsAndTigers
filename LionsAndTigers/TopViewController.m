//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"


@interface TopViewController ()



@end

@implementation TopViewController
- (IBAction)topRevealButtonTapped:(id)sender
{
    [self.delegate topRevealButtonTapped:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
