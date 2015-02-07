//
//  NetworkController.h
//  Movie-Search
//
//  Created by Daniel Bladh on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h> 

@interface NetworkController : NSObject

+(NSDictionary *)parametersWithApiKey: (NSDictionary *)params;
+(AFHTTPSessionManager *) api;

@end
