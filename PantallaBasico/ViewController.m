//
//  ViewController.m
//  PantallaBasico
//
//  Created by LLBER on 26/10/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer * gesto = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animacionMovimiento:)];
    [self.view addGestureRecognizer:gesto];
    
}

-(void)animacionMovimiento: (UIGestureRecognizer*) recognizer {
    
    [UIImageView animateWithDuration:2 animations:^{
        //recognizer.enabled = NO;
        self.circulo.center = CGPointMake(320, 480);
    } completion:^(BOOL finished) {
        [UIImageView animateWithDuration:2 animations:^{
            self.circulo.center = CGPointMake(320, 0);
        } completion:^(BOOL finished) {
            [UIImageView animateWithDuration:2 animations:^{
                self.circulo.center = CGPointMake(160, 240);
            } completion:^(BOOL finished) {
                //recognizer.enabled = YES;
            }];
        }];
    }];
    
}

@end

