//
//  HomeViewController.h
//  project01
//
//  Created by Triyakom PT on 3/23/16.
//  Copyright © 2016 Tyaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *bannerView;
@property (weak, nonatomic) IBOutlet UICollectionView *collection1;
@property (weak, nonatomic) IBOutlet UICollectionView *collection2;
@property (weak, nonatomic) IBOutlet UICollectionView *collection3;
@property (weak, nonatomic) IBOutlet UICollectionView *collection4;
@property (weak, nonatomic) IBOutlet UIScrollView *homeScroll;

@end
