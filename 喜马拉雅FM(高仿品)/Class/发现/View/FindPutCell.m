//
//  FindPutCell.m
//  喜马拉雅FM(高仿品)
//
//  Created by apple-jd33 on 15/11/11.
//  Copyright © 2015年 HansRove. All rights reserved.
//

#import "FindPutCell.h"

#define kRect (kWindowW - 40)/3
@implementation FindPutCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
    return self;
}

#pragma mark - 懒加载并布局
- (ContentImageView *)clickBtn0 {
    if (!_clickBtn0) {
        _clickBtn0 = [ContentImageView new];
        [self.contentView addSubview:_clickBtn0];
        [_clickBtn0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.left.mas_equalTo(10);
            make.size.mas_equalTo(CGSizeMake(kRect, kRect));
        }];
        _clickBtn0.backgroundColor = [UIColor redColor];
    }
    return _clickBtn0;
}
- (ContentImageView *)clickBtn1 {
    if (!_clickBtn1) {
        _clickBtn1 = [ContentImageView new];
        [self.contentView addSubview:_clickBtn1];
        [_clickBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.left.mas_equalTo(self.clickBtn0.mas_right).mas_equalTo(10);
            make.size.mas_equalTo(self.clickBtn0);
        }];
        _clickBtn1.backgroundColor = [UIColor yellowColor];
    }
    return _clickBtn1;
}
- (ContentImageView *)clickBtn2 {
    if (!_clickBtn2) {
        _clickBtn2 = [ContentImageView new];
        [self.contentView addSubview:_clickBtn2];
        [_clickBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.size.mas_equalTo(self.clickBtn0);
            make.left.mas_equalTo(self.clickBtn1.mas_right).mas_equalTo(10);
//            make.right.mas_equalTo(-10);
        }];
        _clickBtn2.backgroundColor = [UIColor greenColor];
    }
    return _clickBtn2;
}
- (UILabel *)detailLb0 {
    if (!_detailLb0) {
        _detailLb0 = [UILabel new];
        [self.contentView addSubview:_detailLb0];
        [_detailLb0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leadingMargin.mas_equalTo(self.clickBtn0);
            make.trailingMargin.mas_equalTo(self.clickBtn0);
            make.top.mas_equalTo(self.clickBtn0.mas_bottom).mas_equalTo(10);
//            make.bottom.mas_equalTo(-8);
        }];
        _detailLb0.font = [UIFont systemFontOfSize:14];
        _detailLb0.numberOfLines = 2;
    }
    return _detailLb0;
}
- (UILabel *)detailLb1 {
    if (!_detailLb1) {
        _detailLb1 = [UILabel new];
        [self.contentView addSubview:_detailLb1];
        [_detailLb1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leadingMargin.mas_equalTo(self.clickBtn1);
            make.trailingMargin.mas_equalTo(self.clickBtn1);
            make.top.mas_equalTo(self.clickBtn1.mas_bottom).mas_equalTo(10);
//            make.bottom.mas_equalTo(-8);
        }];
        _detailLb1.font = [UIFont systemFontOfSize:14];
        _detailLb1.numberOfLines = 2;
    }
    return _detailLb1;
}
- (UILabel *)detailLb2 {
    if (!_detailLb2) {
        _detailLb2 = [UILabel new];
        [self.contentView addSubview:_detailLb2];
        [_detailLb2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leadingMargin.mas_equalTo(self.clickBtn2);
            make.trailingMargin.mas_equalTo(self.clickBtn2);
            make.top.mas_equalTo(self.clickBtn2.mas_bottom).mas_equalTo(10);
//            make.bottom.mas_equalTo(-8);
        }];
        _detailLb2.font = [UIFont systemFontOfSize:14];
        _detailLb2.numberOfLines = 2;
        
    }
    return _detailLb2;
}


@end
