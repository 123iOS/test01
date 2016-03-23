//
//  HomeCollCell.h
//  project01
//
//  Created by Triyakom PT on 3/23/16.
//  Copyright © 2016 Tyaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCollCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIButton *cellImage;
@property (weak, nonatomic) IBOutlet UIButton *cellName;
@property (weak, nonatomic) IBOutlet UILabel *cellPrice;

@end
