package top.xy12.codetransporter;

import android.app.Application;
import android.content.Context;
import com.tencent.bugly.crashreport.CrashReport;
import top.xy12.codetransporter.util.SharedPreferencesUtil;

/* loaded from: classes.dex */
public class App extends Application {
    public static Context mContext;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        mContext = applicationContext;
        SharedPreferencesUtil.getInstance(applicationContext);
        CrashReport.initCrashReport(getApplicationContext(), "f210ee8b66", false);
    }
}
