//
//  ArticleTableViewCell.h
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *articleImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

-(void) configCellWithArticleImageView: (NSString *) articleImageView andTitleLabel: (NSString *) titleLabel andDescLabel: (NSString *) descLabel;

@end
