//
//  MovieController.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MovieController.h"
#import "NetworkController.h"

@implementation MovieController

+ (MovieController *)sharedInstance {
    
    static MovieController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [MovieController new];
    });
    return sharedInstance;
    
}

-(void)retrieveMoviesWithSearchString: (NSString *)searchString completionBlock:(void (^)())completion{
    NSString * search = @"search/movie";
    NSDictionary * params = [NetworkController parametersWithApiKey:@{@"query":searchString}];
    [[NetworkController api]GET:search parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"Response: %@", responseObject);
        NSArray * movies = [responseObject objectForKey:@"results"];
        self.resultMovies = movies;
        completion();
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"Error: %@", error);
        
    }];
}

@end
