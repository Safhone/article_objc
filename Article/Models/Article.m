//
//  Article.m
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@implementation Article

- (instancetype) initWithId:(NSString *)id andTitle:(NSString *)title andDescription:(NSString *)desc andImage:(NSString *)image {
    self = [super init];
    
    if (self) {
        self.id     = id;
        self.title  = title;
        self.desc   = desc;
        self.image  = image;
    }
    return self;
}

@end
