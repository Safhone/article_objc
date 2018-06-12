//
//  ViewController.h
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *articleTableView;

@end

