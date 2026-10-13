package top.xy12.codetransporter.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.Log;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TgSystem {
    public static void startService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static boolean appIsExist(Context context, String str) {
        if (str != null && !str.isEmpty()) {
            Iterator<PackageInfo> it = context.getPackageManager().getInstalledPackages(8192).iterator();
            while (it.hasNext()) {
                if (it.next().packageName.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void setTopApp(Context context) {
        Intent intent;
        Intent intent2;
        Intent intent3;
        Iterator<ActivityManager.AppTask> it = ((ActivityManager) context.getSystemService("activity")).getAppTasks().iterator();
        while (it.hasNext()) {
            ActivityManager.RecentTaskInfo taskInfo = it.next().getTaskInfo();
            StringBuilder sb = new StringBuilder(" taskInfo.baseIntent.getComponent().getPackageName(): ");
            intent = taskInfo.baseIntent;
            sb.append(intent.getComponent().getPackageName());
            Log.d("SmsReceiver", sb.toString());
            intent2 = taskInfo.baseIntent;
            if (intent2.getComponent() != null) {
                intent3 = taskInfo.baseIntent;
                if (intent3.getComponent().getPackageName().equals(context.getPackageName())) {
                    ((ActivityManager) context.getSystemService("activity")).moveTaskToFront(taskInfo.id, 1);
                    return;
                }
            }
        }
    }

    public static boolean isRunningForeground(Context context) {
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(context.getApplicationInfo().processName)) {
                return true;
            }
        }
        return false;
    }
}
