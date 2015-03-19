//
//  CollectionTableView.m
//  LionsAndTigers
//
//  Created by Tommy Gibbons on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CollectionTableView.h"



@implementation CollectionTableView

-(void)CollectionViewWillLoad{
     self.theLionPhotos = [NSMutableArray arrayWithObjects:@"lion1.png",@"lion2.png",@"lion3.png", nil];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
        return 1;
    }

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
        return self.theLionPhotos.count;
    }

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
        CollectionViewCell *lionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
        UIImage *image;
        int row = [indexPath row];
        image = [UIImage imageNamed:self.theLionPhotos[row]];
        lionCell.imageView.image = image;
        return lionCell;
    }


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
