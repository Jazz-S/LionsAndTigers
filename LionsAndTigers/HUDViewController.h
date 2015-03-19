//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>
-(void)shouldDisplayLions:(UIButton *)button;
-(void)shouldDisplayTigers:(UIButton *)button;
@end

@interface HUDViewController : UIViewController
@property id<HUDDelegate> delegate;

@end
