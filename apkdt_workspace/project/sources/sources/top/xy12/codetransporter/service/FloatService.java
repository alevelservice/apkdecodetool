package top.xy12.codetransporter.service;

import android.app.ActivityManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import com.intercept.sms.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import top.xy12.codetransporter.util.TgSystem;

/* loaded from: classes.dex */
public class FloatService extends Service {
    public static String OPERATION = "是否需要开启";
    public static int OPERATION_HIDE = 2;
    public static int OPERATION_SHOW = 1;
    Button btnView;
    Boolean isAdded;
    WindowManager.LayoutParams params;
    WindowManager windowManager;
    int HANDLE_CHECK_ACTIVITY = 0;
    private Handler mHandler = new Handler() { // from class: top.xy12.codetransporter.service.FloatService.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == FloatService.this.HANDLE_CHECK_ACTIVITY) {
                if (!FloatService.this.isAdded.booleanValue()) {
                    FloatService.this.windowManager.addView(FloatService.this.btnView, FloatService.this.params);
                    FloatService.this.isAdded = true;
                    new Thread(new Runnable() { // from class: top.xy12.codetransporter.service.FloatService.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (int i = 0; i < 10; i++) {
                                try {
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                Message message2 = new Message();
                                message2.what = 2;
                                FloatService.this.mHandler.sendMessage(message2);
                            }
                        }
                    }).start();
                }
                FloatService.this.mHandler.sendEmptyMessageDelayed(FloatService.this.HANDLE_CHECK_ACTIVITY, 100L);
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int intExtra = intent.getIntExtra(OPERATION, 3);
        if (intExtra == OPERATION_SHOW) {
            this.mHandler.sendEmptyMessage(this.HANDLE_CHECK_ACTIVITY);
        } else if (intExtra == OPERATION_HIDE) {
            this.mHandler.removeMessages(this.HANDLE_CHECK_ACTIVITY);
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onCreate() {
        createWindowView(this);
        super.onCreate();
    }

    private void createWindowView(final Context context) {
        Log.w("SmsReceiver", "createWindowView");
        Button button = new Button(getApplicationContext());
        this.btnView = button;
        button.setBackgroundResource(R.drawable.ic_launcher_background);
        this.windowManager = (WindowManager) getApplicationContext().getSystemService("window");
        this.params = new WindowManager.LayoutParams();
        this.btnView.setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.service.FloatService$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FloatService.lambda$createWindowView$0(context, view);
            }
        });
        this.params.flags = 32;
        this.params.format = 1;
        this.params.width = 200;
        this.params.height = 200;
        this.params.gravity = 3;
        this.params.x = 0;
        this.params.y = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            this.params.type = 2038;
        } else {
            this.params.type = 2002;
        }
        this.btnView.setOnTouchListener(new View.OnTouchListener() { // from class: top.xy12.codetransporter.service.FloatService.1
            int lastX;
            int lastY;
            int paramX;
            int paramY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.lastX = (int) motionEvent.getRawX();
                    this.lastY = (int) motionEvent.getRawY();
                    this.paramX = FloatService.this.params.x;
                    this.paramY = FloatService.this.params.y;
                    return false;
                }
                if (action != 2) {
                    return false;
                }
                int rawX = ((int) motionEvent.getRawX()) - this.lastX;
                int rawY = ((int) motionEvent.getRawY()) - this.lastY;
                FloatService.this.params.x = this.paramX + rawX;
                FloatService.this.params.y = this.paramY + rawY;
                FloatService.this.windowManager.updateViewLayout(FloatService.this.btnView, FloatService.this.params);
                return false;
            }
        });
        this.windowManager.addView(this.btnView, this.params);
        this.isAdded = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$createWindowView$0(Context context, View view) {
        Log.w("SmsReceiver", "回到app");
        TgSystem.setTopApp(context);
    }

    private boolean isAtHome() {
        ComponentName componentName;
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) getSystemService("activity")).getRunningTasks(1);
        Log.d("henry", "是否在主页面" + runningTasks);
        List<String> homeApplicationList = getHomeApplicationList();
        componentName = runningTasks.get(0).topActivity;
        return homeApplicationList.contains(componentName.getPackageName());
    }

    private List<String> getHomeApplicationList() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 65536).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().activityInfo.packageName);
        }
        Log.d("henry", "主屏幕应用列表" + arrayList);
        return arrayList;
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("SmsReceiver", "onDestroy ");
        if (this.isAdded.booleanValue()) {
            this.windowManager.removeView(this.btnView);
        }
        this.mHandler.removeCallbacksAndMessages(null);
        this.windowManager = null;
        this.mHandler = null;
        super.onDestroy();
    }
}
