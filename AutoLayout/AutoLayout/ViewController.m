//
//  ViewController.m
//  AutoLayout
//
//  Created by Ugowe on 6/27/16.
//  Copyright © 2016 Ugowe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, nonatomic) NSLayoutConstraint *textViewBottomConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view removeConstraints:self.view.constraints];
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant: 10].active = YES;
    
    
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant: -10].active = YES;
    
    [self.textView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 20].active = YES;
    [self.textView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant: 10].active = YES;
    [self.textView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant: -10].active = YES;

    self.textViewBottomConstraint = [self.textView.bottomAnchor constraintEqualToAnchor:self.rightButton.topAnchor constant:-20];
    self.textViewBottomConstraint.active = YES;
    
    
    
}

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    if (size.height > size.width){
        self.textViewBottomConstraint.constant = -20;
    }
    else {
        self.textViewBottomConstraint.constant = -10;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
