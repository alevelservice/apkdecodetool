package com.example.first.flutter.intercept.interceptnext;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.CallSuper;
import androidx.multidex.a;
import com.zoloz.builder.buildconfig.ZolozBuildConfig;
import com.zoloz.builder.buildconfig.ZolozConfig;
import io.flutter.app.FlutterApplication;

/* loaded from: classes.dex */
public class MainApplication extends FlutterApplication {

    /* renamed from: f, reason: collision with root package name */
    private Activity f3434f = null;

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.c(this);
    }

    @Override // io.flutter.app.FlutterApplication
    public Activity getCurrentActivity() {
        return this.f3434f;
    }

    @Override // io.flutter.app.FlutterApplication, android.app.Application
    @CallSuper
    public void onCreate() {
        super.onCreate();
        String str = "gwLogUrl: https://api.zhub.ims.interce.pt";
        ZolozConfig.init(this, new ZolozBuildConfig().setDeviceId(Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id")).setGWLogUrl("https://api.zhub.ims.interce.pt").build());
    }

    @Override // io.flutter.app.FlutterApplication
    public void setCurrentActivity(Activity activity) {
        this.f3434f = activity;
    }
}
