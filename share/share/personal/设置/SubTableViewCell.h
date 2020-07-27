//
//  SubTableViewCell.h
//  share
//
//  Created by 房彤 on 2020/7/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SubTableViewCell : UITableViewCell

//基本资料 属性
@property UILabel *label;
@property UILabel *contentLabel;

@property UILabel *touxiang;
@property UIImageView *head;

@property UILabel *sex;
@property UIButton *girl;
@property UIButton *boy;
@property UILabel *girlLabel;
@property UILabel *boyLabel;

//修改密码
@property UILabel *mima;
@property UITextField *textField;

//消息设置
@property UILabel *str;
@property UIButton *btn;

@property BOOL x;
@end

NS_ASSUME_NONNULL_END
