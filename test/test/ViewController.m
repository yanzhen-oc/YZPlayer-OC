//
//  ViewController.m
//
//  Created by yanzhen.
//

#import "ViewController.h"
#import "PlayerViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    PlayerViewController *vc = [[PlayerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)playOnWindow:(id)sender {
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    app.avWindow.hidden = NO;
    [app.avWindow playAV:URL3];
}

@end
