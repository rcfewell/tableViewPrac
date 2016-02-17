//
//  SimpleTableCellTableViewCell.m
//  TableViewPrac
//
//  Created by Riley Fewell on 2/17/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import "SimpleTableCellTableViewCell.h"

@implementation SimpleTableCellTableViewCell

@synthesize nameLabel = _nameLabel;
@synthesize prepTimeLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
