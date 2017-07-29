# UIView-Animation
UIView类目扩展UIView的动画

```
#pragma mark - position
/**
 震动动画
 
 @param times 震动次数     8
 @param duration 震动时间  0.5
 @param amplitude 震动幅度 0.03
 @param key key
 */
- (void)shakeAnimationWithTimes:(NSUInteger)times
                       duration:(float)duration
                      amplitude:(float)amplitude
                         forKey:(nonnull NSString *)key;

#pragma mark - transform

/**
 伸缩变化

 @param repeatCount 动画重复次数 HUGE表示无限循环
 @param duration 动画时长 1.5
 @param scaleValue 放大（缩小）倍数 1.5
 @param key key
 */
- (void)scallEnlargeAndReductionWithRepeateCount:(NSUInteger)repeatCount
                                        duration:(float)duration
                                    enlargeScale:(float)scaleValue
                                          forKey:(nonnull NSString *)key;
```
更多方法会持续更新，补充。

