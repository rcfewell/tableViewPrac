//
//  SimpleTableCellTableViewCell.h
//  TableViewPrac
//
//  Created by Riley Fewell on 2/17/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCellTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;

@end
