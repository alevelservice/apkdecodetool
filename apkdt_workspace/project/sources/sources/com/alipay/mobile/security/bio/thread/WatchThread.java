package com.alipay.mobile.security.bio.thread;

/* loaded from: classes.dex */
public abstract class WatchThread extends Thread {
    public static final ThreadGroup tg = new ThreadGroup("watch-thread");
    private boolean alive;
    private String status;

    public WatchThread(String str) {
        super(tg, str);
        this.alive = true;
        this.status = null;
        setDaemon(true);
    }

    public String getStatus() {
        return this.status;
    }

    public void kill() {
        this.alive = false;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.alive) {
            try {
                task();
            } catch (Throwable unused) {
            }
        }
    }

    protected void setStatus(String str) {
        this.status = str;
    }

    protected abstract void task();
}
