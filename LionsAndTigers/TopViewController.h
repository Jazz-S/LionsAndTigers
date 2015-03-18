//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>
-(void)topRevealButtonTapped:(UIButton *)button;

@end
@interface TopViewController : UIViewController
@property id<TopDelegate> delegate;

@end
