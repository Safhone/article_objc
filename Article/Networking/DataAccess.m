//
//  DataAccess.m
//  Article
//
//  Created by Safhone on 6/12/18.
//  Copyright © 2018 Safhone. All rights reserved.
//

#import "DataAccess.h"
#import "Article.h"

@implementation DataAccess

-(void)fetchDataWithAtPage: (int) atPage andWithLimitation: (int) withLimitation andCompletion: (void (^)(NSArray* articles)) completion {
    
    NSString *compURLString = [NSString stringWithFormat:@"http://api-ams.me/v1/api/articles?page=%d&limit=%d", atPage, withLimitation];
    NSURL *url = [NSURL URLWithString: compURLString];
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    [config setHTTPAdditionalHeaders: @{@"Content-Type"  : @"application/json",
                                        @"Accept"        : @"application/json",
                                        @"Authorization" : @"Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ="
                                        }];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration: config];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: url];
    request.HTTPMethod = @"GET";
    
    NSURLSessionDataTask * dataTask = [session dataTaskWithRequest: request completionHandler: ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *err;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &err];
        NSArray *dataArr = [json objectForKey:@"DATA"];
        NSMutableArray *articles = [[NSMutableArray alloc] init];
        
        for (NSDictionary *dic in dataArr) {
            NSString *id    = dic[@"ID"];
            NSString *title = dic[@"TITLE"];
            NSString *desc  = dic[@"DESCRIPTION"];
            NSString *img   = dic[@"IMAGE"];
            
            Article *article = [[Article alloc] init];
            [articles addObject:[article initWithId:id andTitle:title andDescription:desc andImage:img]];
        }
        
        completion(articles);
        
    }];
    
    [dataTask resume];
    
}


@end
