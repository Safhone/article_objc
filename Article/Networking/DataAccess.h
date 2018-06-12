//
//  DataAccess.h
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataAccess : NSObject
-(void)fetchDataWithAtPage: (int) atPage andWithLimitation: (int) withLimitation andCompletion: (void (^)(NSArray *)) completion;
@end
