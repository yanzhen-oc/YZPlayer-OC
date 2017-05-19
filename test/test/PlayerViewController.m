//
//  PlayerViewController.m
//
//  Created by yanzhen.
//

#import "PlayerViewController.h"
#import <YZPlayer/YZPlayer.h>



@interface PlayerViewController ()
@property (nonatomic, strong) YZAVView *avView;
@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _avView = [[YZAVView alloc] initWithFrame:CGRectMake(50, 100, 180, 240)];
    _avView.image = [UIImage imageNamed:@"back"];
    YZAVMark *mark = [[YZAVMark alloc] init];
    mark.mark = @"YZ TV";
    mark.rect = CGRectMake(5, 5, 120, 40);
    UIColor *color = [UIColor colorWithRed:1.0 green:133/255.0 blue:25/255.0 alpha:1];
    mark.attrs = @{
                   NSForegroundColorAttributeName: color,
                   NSFontAttributeName: [UIFont fontWithName:@"IowanOldStyle-BoldItalic" size:18]
                   };
    
    _avView.mark = mark;

    [self.view addSubview:_avView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"播放" style:UIBarButtonItemStylePlain target:self action:@selector(play)];
}


- (void)play{
    
    [_avView playVideo:URL2 beignBlock:^{
        NSLog(@"--- begin ---");
    } finishedBlock:^{
        NSLog(@"--- finished ---");
    } failedBlock:^(NSError *error) {
        NSLog(@"TTTT:%@",error);
    } succeedBlock:^(YZAVTime time) {
        NSLog(@"TTTT:%f -- %f -- %f",time.totalTime,time.currentTime,time.loadedTime);
    }];
    
}
- (IBAction)continuePlay:(id)sender {
    [_avView play];
}

- (IBAction)pause:(id)sender {
    [_avView pause];
    
}
- (IBAction)seek:(id)sender {
    [_avView seekToTime:20 completionHandler:^(BOOL finished) {
        NSLog(@"--- %s ---",__func__);
    }];
}

-(void)dealloc
{
    NSLog(@"--- %s ---",__func__);
}

@end
