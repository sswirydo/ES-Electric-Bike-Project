//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5535), March 2014

/*
Task U9
*/
(Brake.Pressed and timer2 > 1)  --> (Motor.Recharge or Rimbrake.Pressed)

/*
Task U8
*/
(Brake.Pressed and timer2 > 1)  --> (Motor.Recharge)

/*

*/
A[] not deadlock

/*
Modified version of the strategy query for Task U6, adapted for condition checking.
*/
A[] (Scheduler.Wait and schedule_timer != 1) imply\
(((Battery.Low and (timer2 >= 5 and Brake.Pressed)) imply not Motor.Idle) and\
((Brake.Released and Battery.High) imply not Motor.Idle) and\
((timer1 <= 2) imply not Motor.Recharge) and\
(Battery.High imply not Motor.Recharge) and\
(Brake.Released imply not Motor.Recharge) and\
(Battery.Low imply not Motor.Assist) and\
(Brake.Pressed imply not Motor.Assist))
