package top.xy12.codetransporter.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import top.xy12.codetransporter.page.MainActivity;

/* loaded from: classes.dex */
public class HeartbeatService extends Service {
    private Timer timer;
    private TimerTask timerTask;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.w("SmsReceiver", "服务启动");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.w("SmsReceiver", "onStartCommand");
        if (this.timer == null) {
            this.timer = new Timer();
            TimerTask timerTask = new TimerTask() { // from class: top.xy12.codetransporter.service.HeartbeatService.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Log.w("SmsReceiver", "newScheduledThreadPool");
                    new HashMap().put("phoneList", MainActivity.getSim(HeartbeatService.this));
                }
            };
            this.timerTask = timerTask;
            this.timer.schedule(timerTask, 1000L, 10000L);
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.w("SmsReceiver", "服务停止");
    }
}
