//
//  LoginVCViewController.m
//  project01
//
//  Created by Triyakom PT on 3/23/16.
//  Copyright © 2016 Tyaa. All rights reserved.
//

#import "LoginVC.h"
#import "TwitterProfileObject.h"
#import "FBLoginObject.h"
#import "HomeViewController.h"

@interface LoginVC ()

@property (weak, nonatomic) IBOutlet UIButton *googleBtn;
@property (weak, nonatomic) IBOutlet UIButton *fbBtn;
@property (weak, nonatomic) IBOutlet UIButton *twitterBtn;
@property (nonatomic) BOOL *loginTwittResult;
@property (nonatomic) BOOL *loginFBResult;

@property (strong, nonatomic) HomeViewController *homeVC;
@property (strong, nonatomic) TwitterProfileObject *twitterObject;
@property (strong, nonatomic) FBLoginObject *fbObject;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[self navigationController]setNavigationBarHidden:YES animated:YES];
}

- (IBAction)didTappedGoogleLogin:(id)sender {
    NSLog(@"Login using GOOGLE+..");
    
    NSString *myFolder1 = [[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:<#(nonnull NSString *)#>
    
//    [self enteringNewPage];
}

- (IBAction)didTappedFacebookLogin:(id)sender {
    NSLog(@"Login using FACEBOOK..");
    self.fbObject = [[FBLoginObject alloc]init];
    [self.fbObject fbLoginManager];
    
//    [self enteringNewPage];
}

- (IBAction)didTappedTwitterLogin:(id)sender {
    NSLog(@"Login using TWITTER..");
    self.twitterObject = [[TwitterProfileObject alloc]init];
    [self.twitterObject ConnectProfile];
    
//    [self enteringNewPage];
}

- (void)enteringNewPage {
    self.homeVC = [[HomeViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:self.homeVC animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
