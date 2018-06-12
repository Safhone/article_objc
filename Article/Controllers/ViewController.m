//
//  ViewController.m
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import "ViewController.h"
#import "DataAccess.h"
#import "Article.h"
#import "ArticleTableViewCell.h"


@interface ViewController () {
    DataAccess *dataAccess;
    
}
@property NSMutableArray *articles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataAccess = [[DataAccess alloc] init];
    
    [dataAccess fetchDataWithAtPage:1 andWithLimitation:10 andCompletion:^(NSArray * articles) {
        self->_articles = [[NSMutableArray alloc] initWithArray:articles];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.articleTableView reloadData];
        });
    }];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ArticleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Article *article = [self.articles objectAtIndex:indexPath.row];
    [cell configCellWithArticleImageView:article.image andTitleLabel:article.title andDescLabel:article.desc];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.articles.count;
}

@end
