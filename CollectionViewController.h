//
//  CollectionViewController.h
//  LionsAndTigers
//
//  Created by Tommy Gibbons on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"

@interface CollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) NSMutableArray *lionPhotos;

@end
