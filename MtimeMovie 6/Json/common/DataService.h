//
//  DataService.h
//  Movie
//
//  Created by 弄潮者 on 15/7/21.
//  Copyright (c) 2015年 弄潮者. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^BlockType)(id result);

@interface DataService : NSObject

+ (id)getJsonDataFromFile:(NSString *)fileName;
+ (void)getTextUrlString:(NSString *)urlString
                   block:(BlockType)block;

@end
