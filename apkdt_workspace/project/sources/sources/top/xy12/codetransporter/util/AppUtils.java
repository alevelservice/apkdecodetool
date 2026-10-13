package top.xy12.codetransporter.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public class AppUtils {
    public static String getCurrentActivityName(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ComponentName componentName;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.isEmpty()) {
            return null;
        }
        componentName = runningTasks.get(0).topActivity;
        return componentName.getClassName();
    }
}
