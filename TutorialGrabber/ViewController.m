//
//  ViewController.m
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"
#import "Video.h"
#import "VideoTableViewCell.h"
#import "VideoViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *videoList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.videoList = [[NSArray alloc]init];
    [[HTTPService instance] getTutorials:^(NSArray * _Nullable dataArray, NSString * _Nullable errMessage) {
        if(dataArray) {
            NSMutableArray *arr = [[NSMutableArray alloc]init];
            for (NSDictionary *v in dataArray) {
                Video *vid = [[Video alloc]init];
                vid.videoTitle = [v objectForKey:@"title"];
                vid.videoDescription = [v objectForKey:@"description"];
                vid.videoURL = [v objectForKey:@"thumbnail"];
                vid.videoFrame = [v objectForKey:@"iframe"];
                
                [arr addObject:vid];
            }
            self.videoList = arr;
            [self updateTableData];
        } else if (errMessage) {
            
        }
    }];
}

-(void) updateTableData {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VideoTableViewCell * cell = (VideoTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"main"];
    if(!cell) {
        cell = [[VideoTableViewCell alloc]init];
    }
    return cell;
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    Video *vid = [self.videoList objectAtIndex:indexPath.row];
    VideoTableViewCell *vidCell = (VideoTableViewCell*)cell;
    [vidCell updateUI:vid];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Video *video = [self.videoList objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"VideoVC" sender:video];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.videoList.count;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    VideoViewController *vc = (VideoViewController*)segue.destinationViewController;
    Video *video = (Video*)sender;
    vc.video = video;
}

@end
