//
//  ConsultaTableViewCell.h
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsultaTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nombreCustom;
@property (weak, nonatomic) IBOutlet UILabel *montoCustom;
@property (weak, nonatomic) IBOutlet UILabel *marcaCustom;
@property (weak, nonatomic) IBOutlet UILabel *modeloCustom;

@end
