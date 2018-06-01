//
//  JETSViewController.h
//  TestSQLite
//
//  Created by JETS on 3/7/14.
//  Copyright (c) 2014 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface JETSViewController : UIViewController


@property (strong , nonatomic) IBOutlet UITextField *name;
@property (strong , nonatomic) IBOutlet UITextField *address;
@property (strong , nonatomic) IBOutlet UITextField *phone;
@property (strong , nonatomic) IBOutlet UILabel *status;


@property (strong , nonatomic) NSString *databasePath;
@property (nonatomic) sqlite3 *contactDB;


-(IBAction)saveData:(id)sender;
-(IBAction)findContact:(id)sender;

@end
