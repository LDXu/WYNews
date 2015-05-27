//
//  WYTopicScrollView.m
//  WYNews
//
//  Created by dai.fengyi on 15/5/27.
//  Copyright (c) 2015年 childrenOurFuture. All rights reserved.
//

#import "WYTopicScrollView.h"
#import "WYCategoryLabel.h"
#define kWidthMargin        0
@implementation WYTopicScrollView
- (void)setupUI
{
    [super setupUI];
}

- (void)setTopicArray:(NSArray *)topicArray
{
    _topicArray = topicArray;
    for (int i = 0; i < _topicArray.count; i++) {
        WYCategoryLabel *label = [[WYCategoryLabel alloc] init];
        label.text = [_topicArray[i] objectForKey:@"title"];;
        if (self.subviews.count == 0) {
            label.frame = (CGRect){CGPointMake(kWidthMargin, 0), label.bounds.size};
        }else {
            label.frame = (CGRect){CGPointMake(CGRectGetMaxX([self.subviews.lastObject frame]) + kWidthMargin, 0), label.bounds.size};
        }
        [self addSubview:label];
    }
    
    self.contentSize = CGSizeMake(CGRectGetMaxX([self.subviews.lastObject frame]) + kWidthMargin, 0);
}


@end