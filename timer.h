#import <Foundation/Foundation.h>
@interface timer : NSObject{
    /**
    @discussion NSTimer object
     */
    NSTimer *mTimer;
    /**
    @discussion Time variables
     */
    int hours, minutes, seconds,secondsLeft;
}

/**
@discussion Method that initializes timer count down
 */
-(void)countDownTimer;
/**
@discussion Method that updates timer
 */
-(void)updateCounter:(NSTimer*)timer;
@end