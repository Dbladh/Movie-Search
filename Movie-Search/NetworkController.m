//
//  NetworkController.m
//  Movie-Search
//
//  Created by Daniel Bladh on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"

static NSString * const apiKey = @"26ba9cea3606aeaa64333c6f54623755";

@implementation NetworkController

+(AFHTTPSessionManager *) api {
    
    
    NSURL * baseURL = [NSURL URLWithString:@"http://api.themoviedb.org/3/"];
    AFHTTPSessionManager * manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    return manager;
    
}

+(NSDictionary *)parametersWithApiKey: (NSDictionary *)params{
    NSMutableDictionary * mutableParams = params.mutableCopy;
    [mutableParams setValue:apiKey forKey:@"api_key"];
    return mutableParams;
}

@end

