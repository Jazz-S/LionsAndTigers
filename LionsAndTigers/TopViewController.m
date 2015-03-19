//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Jazz Santiago on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "CollectionViewCell.h"

@interface TopViewController ()<UITableViewDataSource,UITabBarDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController
- (IBAction)topRevealButtonTapped:(id)sender
{
    [self.delegate topRevealButtonTapped:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *layout =
    (id)self.collectionView.collectionViewLayout;
    [self.collectionView
     registerClass:[UICollectionReusableView class]
     forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
     withReuseIdentifier:@"animalCell"];
     self.animalLionPhotos = [NSMutableArray arrayWithObjects:@"lion1.png",@"lion2.png",@"lion3.png", nil];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section {
    return self.animalLionPhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *lionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"animalCell" forIndexPath:indexPath];
    UIImage *image;
    int row = [indexPath row];
    image = [UIImage imageNamed:self.animalLionPhotos[row]];
    lionCell.imageView.image = image;
    return lionCell;
}




@end
