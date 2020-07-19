//
//  Repository.m
//  GithubUserSearch
//
//  Created by Karem Gohar on 16.07.20.
//  Copyright © 2020 Karem Gohar. All rights reserved.
//

#import "Repository.h"

// Shorthand for simple blocks
#define λ(decl, expr) (^(decl) { return (expr); })

// nil → NSNull conversion for JSON dictionaries

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Private model interfaces

@interface Repository (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

#pragma mark - JSON serialization

Repository *_Nullable RepositoryFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [Repository fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

Repository *_Nullable RepositoryFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return RepositoryFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable RepositoryToData(Repository *welcome, NSError **error)
{
    @try {
        id json = [welcome JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable RepositoryToJSON(Repository *welcome, NSStringEncoding encoding, NSError **error)
{
    NSData *data = RepositoryToData(welcome, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation Repository
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"node_id": @"nodeID",
        @"name": @"name",
        @"full_name": @"fullName",
        @"private": @"private",
        @"html_url": @"htmlURL",
        @"description": @"theDescription",
        @"fork": @"fork",
        @"url": @"url",
        @"forks_url": @"forksURL",
        @"keys_url": @"keysURL",
        @"collaborators_url": @"collaboratorsURL",
        @"teams_url": @"teamsURL",
        @"hooks_url": @"hooksURL",
        @"issue_events_url": @"issueEventsURL",
        @"events_url": @"eventsURL",
        @"assignees_url": @"assigneesURL",
        @"branches_url": @"branchesURL",
        @"tags_url": @"tagsURL",
        @"blobs_url": @"blobsURL",
        @"git_tags_url": @"gitTagsURL",
        @"git_refs_url": @"gitRefsURL",
        @"trees_url": @"treesURL",
        @"statuses_url": @"statusesURL",
        @"languages_url": @"languagesURL",
        @"stargazers_url": @"stargazersURL",
        @"contributors_url": @"contributorsURL",
        @"subscribers_url": @"subscribersURL",
        @"subscription_url": @"subscriptionURL",
        @"commits_url": @"commitsURL",
        @"git_commits_url": @"gitCommitsURL",
        @"comments_url": @"commentsURL",
        @"issue_comment_url": @"issueCommentURL",
        @"contents_url": @"contentsURL",
        @"compare_url": @"compareURL",
        @"merges_url": @"mergesURL",
        @"archive_url": @"archiveURL",
        @"downloads_url": @"downloadsURL",
        @"issues_url": @"issuesURL",
        @"pulls_url": @"pullsURL",
        @"milestones_url": @"milestonesURL",
        @"notifications_url": @"notificationsURL",
        @"labels_url": @"labelsURL",
        @"releases_url": @"releasesURL",
        @"deployments_url": @"deploymentsURL",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"pushed_at": @"pushedAt",
        @"git_url": @"gitURL",
        @"ssh_url": @"sshURL",
        @"clone_url": @"cloneURL",
        @"svn_url": @"svnURL",
        @"homepage": @"homepage",
        @"size": @"size",
        @"stargazers_count": @"stargazersCount",
        @"watchers_count": @"watchersCount",
        @"language": @"language",
        @"has_issues": @"hasIssues",
        @"has_projects": @"hasProjects",
        @"has_downloads": @"hasDownloads",
        @"has_wiki": @"hasWiki",
        @"has_pages": @"hasPages",
        @"forks_count": @"forksCount",
        @"mirror_url": @"mirrorURL",
        @"archived": @"archived",
        @"disabled": @"disabled",
        @"open_issues_count": @"openIssuesCount",
        @"forks": @"forks",
        @"open_issues": @"openIssues",
        @"watchers": @"watchers",
        @"default_branch": @"defaultBranch",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return RepositoryFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return RepositoryFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[Repository alloc] initWithJSONDictionary:dict] : nil;
}

- (_Nullable instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = Repository.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:Repository.properties.allValues] mutableCopy];
    
    // Rewrite property names that differ in JSON
    for (id jsonName in Repository.properties) {
        id propertyName = Repository.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }
    
    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return RepositoryToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return RepositoryToJSON(self, encoding, error);
}
@end

NS_ASSUME_NONNULL_END
