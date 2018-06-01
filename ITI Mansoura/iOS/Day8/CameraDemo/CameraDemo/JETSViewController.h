//
//  JETSViewController.h
//  CameraDemo
//
//  Created by JETS on 2/12/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JETSViewController : UIViewController <UIImagePickerControllerDelegate , UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property UIImagePickerController *picker;


- (IBAction)takePhoto:(id)sender;

@end
