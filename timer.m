#import "timer.h"

@implementation timer

-(void)countDownTimer{
    // Initialize your time. In this case I'm creating a timer that count downs frmo 5 seconds.
    secondsLeft=hours=minutes=seconds=5;
    mTimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateCounter:) userInfo:nil repeats:YES];
}
- (void)updateCounter:(NSTimer *)theTimer {
    if(secondsLeft > 0 ){
        secondsLeft -- ;
        hours = secondsLeft / 3600;
        minutes = (secondsLeft % 3600) / 60;
        seconds = (secondsLeft %3600) % 60;
        
        // Perform any work here, like changing the label text of an object, or animating a view
    }
    else{
        // Stops the timer from updating, ending the count down cycle
        [theTimer invalidate];
        
    }
}
@end
