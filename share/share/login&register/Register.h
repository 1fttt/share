//
//  Register.h
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


//声明协议方法
@protocol PassValueDelegate <NSObject>

- (void)passContent:(NSString *)userName andPass:(NSString*)userPass;

@end





@interface Register : UIViewController

@property UITextField *name;
@property UITextField *pass;
@property UITextField *email;

@property NSString *userName;
@property NSString *userPass;

//声明代理人属性
@property id<PassValueDelegate> delegate;


@end
NS_ASSUME_NONNULL_END
