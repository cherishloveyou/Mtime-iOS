//
//  DataService.m
//  Movie
//
//  Created by 弄潮者 on 15/7/21.
//  Copyright (c) 2015年 弄潮者. All rights reserved.
//

#import "DataService.h"
#import "AFNetworking.h"
#import "Header.h"

@implementation DataService

+ (id)getJsonDataFromFile:(NSString *)fileName {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    id jsonDicOrArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];

    return jsonDicOrArray;
}

+ (void)getTextUrlString:(NSString *)urlString block:(BlockType)block {
    //01 构建url
    NSString *urlStr = [BaseUrl stringByAppendingString:urlString];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    //02 请求
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //03 构建 operation
    AFHTTPRequestOperation  *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    //设置响应 数据的 解析格式,json解析
    operation.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingMutableContainers];
    
    //设置数据传输完毕的 处理block
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation * operation, id responseObject) {
//        NSLog(@"getText 下载完毕");
        block(responseObject);
    } failure:^(AFHTTPRequestOperation * operation, NSError * error) {
        
    }];
    
    //04 把operation 添加到 queue
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperation:operation];
}

@end
