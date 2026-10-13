package io.flutter.app;

import android.app.Activity;
import android.app.Application;
import androidx.annotation.CallSuper;

/* loaded from: classes.dex */
public class FlutterApplication extends Application {

    /* renamed from: e, reason: collision with root package name */
    private Activity f18862e = null;

    public Activity getCurrentActivity() {
        return this.f18862e;
    }

    @Override // android.app.Application
    @CallSuper
    public void onCreate() {
        super.onCreate();
        g.a.a.c().a().a(this);
    }

    public void setCurrentActivity(Activity activity) {
        this.f18862e = activity;
    }
}
