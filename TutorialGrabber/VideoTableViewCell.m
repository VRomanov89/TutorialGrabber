//
//  VideoTableViewCell.m
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import "VideoTableViewCell.h"

@interface VideoTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;
@property (weak, nonatomic) IBOutlet UIView *cellView;


@end

@implementation VideoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.cornerRadius = 2.0;
    self.layer.shadowColor = [UIColor colorWithRed:157/255 green:157/255 blue:157/255 alpha:0.8].CGColor;
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowRadius = 5.0;
    self.layer.shadowOffset = CGSizeMake(0.0, 0.2);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
