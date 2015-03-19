//
//  CollectionTableView.h
//  LionsAndTigers
//
//  Created by Tommy Gibbons on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"

@interface CollectionTableView : UICollectionView <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *theLionPhotos;
-(void)CollectionViewWillLoad;


@end
