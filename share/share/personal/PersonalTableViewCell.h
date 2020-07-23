//
//  PersonalTableViewCell.h
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersonalTableViewCell : UITableViewCell

//图片
@property UIImageView *photoView;
@property UIImageView *zanView;
@property UIImageView *eyeView;
@property UIImageView *shareView;

//文字
@property UILabel *nameLabel;
@property UILabel *contentLabel;
@property UILabel *Label1;

@property UILabel *zanLabel;
@property UILabel *eyeLabel;
@property UILabel *shareLabel;


@end

NS_ASSUME_NONNULL_END
