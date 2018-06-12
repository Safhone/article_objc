//
//  ArticleTableViewCell.m
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import "ArticleTableViewCell.h"

@implementation ArticleTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configCellWithArticleImageView:(NSString *)articleImageView andTitleLabel:(NSString *)titleLabel andDescLabel:(NSString *)descLabel {
//    self.articleImageView.image = [UIImage imageNamed:articleImageView];
    self.titleLabel.text        = titleLabel;
    self.descLabel.text         = [descLabel isEqual:[NSNull null]] ? @"" : descLabel;
}

@end
