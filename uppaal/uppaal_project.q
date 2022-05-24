//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
A[] Scheduler.Wait imply ( (Battery.Low and timer2 >= 5) imply not Motor.Idle)

/*

*/
A[] Scheduler.Wait imply ( (Brake.Released and Battery.High) imply not Motor.Idle)

/*

*/
A[] Scheduler.Wait imply ( (timer1 <= 2) imply not Motor.Recharge)

/*

*/
A[] Scheduler.Wait imply (Battery.High imply not Motor.Recharge)

/*

*/
A[] Scheduler.Wait imply (Brake.Released imply not Motor.Recharge)

/*

*/
A[] Scheduler.Wait imply (Battery.Low imply not Motor.Assist)

/*
The motor should not assist when the brake is pressed.
*/
A[] Scheduler.Wait imply (Brake.Pressed imply not Motor.Assist)

/*
For all paths there is NO deadlock.
*/
A[] not deadlock
