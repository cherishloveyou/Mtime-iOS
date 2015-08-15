//
//  Header.h
//  Movie
//
//  Created by 弄潮者 on 15/7/20.
//  Copyright (c) 2015年 弄潮者. All rights reserved.
//

#ifndef Movie_Header_h
#define Movie_Header_h


#define kwidth [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height

#define knavHeight 64
#define ktabBarheight 49

#define  BaseUrl @"https://api.douban.com"
#define  TopUrl @"/v2/movie/top250"
#define  MovieUrl @"/v2/movie/us_box"




#endif

//https://api.douban.com
//
//北美榜单
//https://api.douban.com/v2/movie/us_box
//
//TOP250
//https://api.douban.com/v2/movie/top250
//
//电影搜索
//https://api.douban.com/v2/movie/search?q={text}
//Example：
//GET /v2/movie/search?q=张艺谋
//GET /v2/movie/search?tag=喜剧
//
//影人条目信息
//https://api.douban.com/v2/movie/celebrity/1018986
//
//电影条目信息
//https://api.douban.com/v2/movie/subject/3005875
