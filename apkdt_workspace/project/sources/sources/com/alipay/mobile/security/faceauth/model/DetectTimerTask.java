package com.alipay.mobile.security.faceauth.model;

import e.b.b.a.a.a.c;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class DetectTimerTask {
    int mDelay;
    private int mInitTime;
    int mInternal;
    int mTimeout;
    TimerListener mTimerTaskListener;
    Timer myTime;

    /* loaded from: classes.dex */
    public interface TimerListener {
        void countdown(int i2);
    }

    public DetectTimerTask(int i2) {
        this.myTime = null;
        this.mInitTime = c.WARN_INT;
        this.mTimeout = c.WARN_INT;
        this.mDelay = 1000;
        this.mInternal = 1000;
        this.mInitTime = i2;
        this.mTimeout = i2;
    }

    public int getLeftTime() {
        return this.mTimeout;
    }

    public boolean isTimeOut() {
        return this.mTimeout == 0;
    }

    public void reset() {
        this.mTimeout = this.mInitTime;
    }

    public void setTimerTaskListener(TimerListener timerListener) {
        this.mTimerTaskListener = timerListener;
    }

    public void start() {
        this.mTimeout = this.mInitTime;
        TimerListener timerListener = this.mTimerTaskListener;
        if (timerListener != null) {
            timerListener.countdown(this.mTimeout);
        }
        stop();
        this.myTime = new Timer();
        this.myTime.schedule(new TimerTask() { // from class: com.alipay.mobile.security.faceauth.model.DetectTimerTask.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                DetectTimerTask detectTimerTask = DetectTimerTask.this;
                detectTimerTask.mTimeout -= detectTimerTask.mInternal;
                if (detectTimerTask.mTimeout <= 0) {
                    detectTimerTask.mTimeout = 0;
                    detectTimerTask.myTime.cancel();
                }
                DetectTimerTask detectTimerTask2 = DetectTimerTask.this;
                TimerListener timerListener2 = detectTimerTask2.mTimerTaskListener;
                if (timerListener2 != null) {
                    timerListener2.countdown(detectTimerTask2.mTimeout);
                }
            }
        }, this.mDelay, this.mInternal);
    }

    public void stop() {
        this.mTimeout = this.mInitTime;
        Timer timer = this.myTime;
        if (timer != null) {
            timer.cancel();
            this.myTime = null;
        }
    }

    public DetectTimerTask(int i2, int i3, int i4) {
        this.myTime = null;
        this.mInitTime = c.WARN_INT;
        this.mTimeout = c.WARN_INT;
        this.mDelay = 1000;
        this.mInternal = 1000;
        this.mInitTime = i2;
        this.mTimeout = i2;
        this.mDelay = i3;
        this.mInternal = i4;
    }
}
