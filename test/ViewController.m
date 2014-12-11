//
//  ViewController.m
//  test
//
//  Created by Boris Bügling on 10/12/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSBundle* frameworkBundle = [NSBundle bundleForClass:NSClassFromString(@"Foo")];
    NSURL* resourceBundleURL = [frameworkBundle URLForResource:@"res" withExtension:@"bundle"];
    NSBundle* resourceBundle = [NSBundle bundleWithURL:resourceBundleURL];
    UIImage* image = [[UIImage alloc] initWithContentsOfFile:[resourceBundle pathForResource:@"512_black" ofType:@"png"]];

    UIImageView* view = [[UIImageView alloc] initWithFrame:self.view.bounds];
    view.contentMode = UIViewContentModeCenter;
    view.image = image;
    [self.view addSubview:view];

    NSURL* imageURL = [frameworkBundle URLForResource:@"troll" withExtension:@"png"];
    image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageURL]];
    NSLog(@"Image loaded with dimensions: %@", NSStringFromCGSize(image.size));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
