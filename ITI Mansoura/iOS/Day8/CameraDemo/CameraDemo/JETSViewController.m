//
//  JETSViewController.m
//  CameraDemo
//
//  Created by JETS on 2/12/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "JETSViewController.h"

@interface JETSViewController ()

@end

@implementation JETSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhoto:(id)sender {
    
    
    if(_picker == nil)
    {
        _picker = [[UIImagePickerController alloc] init];
    }
    
    // 1.1 Set the "picker"s delegate to self
    [_picker setDelegate:self];
    
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        NSLog(@"No camera available.");
        // 1.1 Set the source type to UIImagePickerControllerSourceTypePhotoLibrary
        [_picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    else
    {
        // 1.1 Set the source type to UIImagePickerControllerSourceTypeCamera
        [_picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    
    // 1.1 Call "presentViewController:animated:YES:completion:nil" on self
    [self presentViewController:_picker animated:YES completion:nil];

}



- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
           // 1.2 Get an image from the info dictionary (key = UIImagePickerControllerOriginalImage) and save it in a variable
        UIImage *image =
        info[UIImagePickerControllerOriginalImage];
    
    
   

    
    
   // [info objectForKey:UIImagePickerControllerOriginalImage];
    
    
    
        // 1.2 Set imageView.image to the previously saved image
        _imageView.image = image;
        
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}









@end
