//
//  HomeViewController.m
//  project01
//
//  Created by Triyakom PT on 3/23/16.
//  Copyright © 2016 Tyaa. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCollCell.h"

@interface HomeViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation HomeViewController{
    NSString *cellClassName;
    CGFloat baseOffset;
    CGFloat offsetStep;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UICollectionViewDataSource PROTOCOL-
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 12;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView.tag == 1) {
        HomeCollCell *homeCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellClassName forIndexPath:indexPath];
        homeCell.cellImage. = [NSString stringWithFormat:@"%d", indexPath.item];
        homeCell.cellName.t
    } else if (collectionView.tag == 2) {
        MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellClassName forIndexPath:indexPath];
        cell.label.text = [NSString stringWithFormat:@"%d", indexPath.item];
    } else if (collectionView.tag == 3) {
        MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellClassName forIndexPath:indexPath];
        cell.label.text = [NSString stringWithFormat:@"%d", indexPath.item];
    } else {
        MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellClassName forIndexPath:indexPath];
        cell.label.text = [NSString stringWithFormat:@"%d", indexPath.item];
    }
    
    return 0;
}

#pragma mark -UICollectionViewDelegate PROTOCOL-
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
    if (velocity.x < 0) {
        baseOffset = MAX(0, baseOffset - offsetStep);
    } else if (velocity.x > 0) {
        baseOffset = MIN(scrollView.contentSize.width - scrollView.bounds.size.width, baseOffset + offsetStep);
    }
    #if 0
        dispatch_async(dispatch_get_main_queue(), ^{
            [scrollView setContentOffset:CGPointMake(baseOffset, 0) animated:YES];
        });
    #else
        targetContentOffset->x = baseOffset;
    #endif

}

@end
