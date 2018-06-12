//
//  Article.h
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Article : NSObject

@property (strong, nonatomic) NSString *id;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSString *image;

- (instancetype) initWithId:(NSString *)id andTitle:(NSString *)title andDescription:(NSString *)desc andImage:(NSString *)image;

@end
