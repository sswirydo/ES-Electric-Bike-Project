//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
E<> (timer2 > 2 and Brake.Pressed)

/*

*/
A[] not deadlock

/*

*/
A[] (Scheduler.Wait and schedule_timer != 1)  imply ( (Battery.Low and (timer2 >= 5 and Brake.Pressed)) imply not Motor.Idle)

/*

*/
A[] (Scheduler.Wait)  imply ( (Battery.Low and (timer2 >= 5 and Brake.Pressed)) imply not Motor.Idle)

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
