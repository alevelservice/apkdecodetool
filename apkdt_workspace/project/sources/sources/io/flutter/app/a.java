package io.flutter.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import g.a.c.a.m;
import io.flutter.view.FlutterView;
import io.flutter.view.d;
import io.flutter.view.e;
import io.flutter.view.f;
import java.util.ArrayList;

/* compiled from: FlutterActivityDelegate.java */
/* loaded from: classes2.dex */
public final class a implements io.flutter.app.b, FlutterView.e, m {

    /* renamed from: i, reason: collision with root package name */
    private static final WindowManager.LayoutParams f18867i = new WindowManager.LayoutParams(-1, -1);

    /* renamed from: e, reason: collision with root package name */
    private final Activity f18868e;

    /* renamed from: f, reason: collision with root package name */
    private final b f18869f;

    /* renamed from: g, reason: collision with root package name */
    private FlutterView f18870g;

    /* renamed from: h, reason: collision with root package name */
    private View f18871h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterActivityDelegate.java */
    /* renamed from: io.flutter.app.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0224a implements FlutterView.d {

        /* compiled from: FlutterActivityDelegate.java */
        /* renamed from: io.flutter.app.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0225a extends AnimatorListenerAdapter {
            C0225a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ((ViewGroup) a.this.f18871h.getParent()).removeView(a.this.f18871h);
                a.this.f18871h = null;
            }
        }

        C0224a() {
        }

        @Override // io.flutter.view.FlutterView.d
        public void a() {
            a.this.f18871h.animate().alpha(0.0f).setListener(new C0225a());
            a.this.f18870g.removeFirstFrameListener(this);
        }
    }

    /* compiled from: FlutterActivityDelegate.java */
    /* loaded from: classes2.dex */
    public interface b {
        e createFlutterNativeView();

        FlutterView createFlutterView(Context context);

        boolean retainFlutterNativeView();
    }

    public a(Activity activity, b bVar) {
        g.a.d.b.a(activity);
        this.f18868e = activity;
        g.a.d.b.a(bVar);
        this.f18869f = bVar;
    }

    private Drawable c() {
        TypedValue typedValue = new TypedValue();
        if (!this.f18868e.getTheme().resolveAttribute(R.attr.windowBackground, typedValue, true) || typedValue.resourceId == 0) {
            return null;
        }
        try {
            return this.f18868e.getResources().getDrawable(typedValue.resourceId);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    private boolean d() {
        return (this.f18868e.getApplicationInfo().flags & 2) != 0;
    }

    private Boolean e() {
        try {
            Bundle bundle = this.f18868e.getPackageManager().getActivityInfo(this.f18868e.getComponentName(), 129).metaData;
            return Boolean.valueOf(bundle != null && bundle.getBoolean("io.flutter.app.android.SplashScreenUntilFirstFrame"));
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Override // io.flutter.view.FlutterView.e
    public FlutterView getFlutterView() {
        return this.f18870g;
    }

    @Override // g.a.c.a.m
    public boolean hasPlugin(String str) {
        return this.f18870g.getPluginRegistry().hasPlugin(str);
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        return this.f18870g.getPluginRegistry().onActivityResult(i2, i3, intent);
    }

    @Override // io.flutter.app.b
    public boolean onBackPressed() {
        FlutterView flutterView = this.f18870g;
        if (flutterView == null) {
            return false;
        }
        flutterView.popRoute();
        return true;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // io.flutter.app.b
    public void onCreate(Bundle bundle) {
        String a2;
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = this.f18868e.getWindow();
            window.addFlags(e.b.b.a.a.a.c.ALL_INT);
            window.setStatusBarColor(1073741824);
            window.getDecorView().setSystemUiVisibility(1280);
        }
        d.a(this.f18868e.getApplicationContext(), a(this.f18868e.getIntent()));
        this.f18870g = this.f18869f.createFlutterView(this.f18868e);
        if (this.f18870g == null) {
            this.f18870g = new FlutterView(this.f18868e, null, this.f18869f.createFlutterNativeView());
            this.f18870g.setLayoutParams(f18867i);
            this.f18868e.setContentView(this.f18870g);
            this.f18871h = b();
            if (this.f18871h != null) {
                a();
            }
        }
        if (b(this.f18868e.getIntent()) || (a2 = d.a()) == null) {
            return;
        }
        a(a2);
    }

    @Override // io.flutter.app.b
    public void onDestroy() {
        Application application = (Application) this.f18868e.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.f18868e.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.f18870g;
        if (flutterView != null) {
            if (!flutterView.getPluginRegistry().a(this.f18870g.getFlutterNativeView()) && !this.f18869f.retainFlutterNativeView()) {
                this.f18870g.destroy();
            } else {
                this.f18870g.detach();
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f18870g.onMemoryPressure();
    }

    @Override // io.flutter.app.b
    public void onNewIntent(Intent intent) {
        if (d() && b(intent)) {
            return;
        }
        this.f18870g.getPluginRegistry().onNewIntent(intent);
    }

    @Override // io.flutter.app.b
    public void onPause() {
        Application application = (Application) this.f18868e.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.f18868e.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.f18870g;
        if (flutterView != null) {
            flutterView.onPause();
        }
    }

    @Override // io.flutter.app.b
    public void onPostResume() {
        FlutterView flutterView = this.f18870g;
        if (flutterView != null) {
            flutterView.onPostResume();
        }
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        return this.f18870g.getPluginRegistry().onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // io.flutter.app.b
    public void onResume() {
        Application application = (Application) this.f18868e.getApplicationContext();
        if (application instanceof FlutterApplication) {
            ((FlutterApplication) application).setCurrentActivity(this.f18868e);
        }
    }

    @Override // io.flutter.app.b
    public void onStart() {
        FlutterView flutterView = this.f18870g;
        if (flutterView != null) {
            flutterView.onStart();
        }
    }

    @Override // io.flutter.app.b
    public void onStop() {
        this.f18870g.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        if (i2 == 10) {
            this.f18870g.onMemoryPressure();
        }
    }

    @Override // io.flutter.app.b
    public void onUserLeaveHint() {
        this.f18870g.getPluginRegistry().onUserLeaveHint();
    }

    @Override // g.a.c.a.m
    public m.d registrarFor(String str) {
        return this.f18870g.getPluginRegistry().registrarFor(str);
    }

    @Override // g.a.c.a.m
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.f18870g.getPluginRegistry().valuePublishedByPlugin(str);
    }

    private boolean b(Intent intent) {
        if (!"android.intent.action.RUN".equals(intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra("route");
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = d.a();
        }
        if (stringExtra != null) {
            this.f18870g.setInitialRoute(stringExtra);
        }
        a(dataString);
        return true;
    }

    private static String[] a(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra("trace-startup", false)) {
            arrayList.add("--trace-startup");
        }
        if (intent.getBooleanExtra("start-paused", false)) {
            arrayList.add("--start-paused");
        }
        if (intent.getBooleanExtra("disable-service-auth-codes", false)) {
            arrayList.add("--disable-service-auth-codes");
        }
        if (intent.getBooleanExtra("use-test-fonts", false)) {
            arrayList.add("--use-test-fonts");
        }
        if (intent.getBooleanExtra("enable-dart-profiling", false)) {
            arrayList.add("--enable-dart-profiling");
        }
        if (intent.getBooleanExtra("enable-software-rendering", false)) {
            arrayList.add("--enable-software-rendering");
        }
        if (intent.getBooleanExtra("skia-deterministic-rendering", false)) {
            arrayList.add("--skia-deterministic-rendering");
        }
        if (intent.getBooleanExtra("trace-skia", false)) {
            arrayList.add("--trace-skia");
        }
        if (intent.getBooleanExtra("trace-systrace", false)) {
            arrayList.add("--trace-systrace");
        }
        if (intent.getBooleanExtra("dump-skp-on-shader-compilation", false)) {
            arrayList.add("--dump-skp-on-shader-compilation");
        }
        if (intent.getBooleanExtra("cache-sksl", false)) {
            arrayList.add("--cache-sksl");
        }
        if (intent.getBooleanExtra("purge-persistent-cache", false)) {
            arrayList.add("--purge-persistent-cache");
        }
        if (intent.getBooleanExtra("verbose-logging", false)) {
            arrayList.add("--verbose-logging");
        }
        int intExtra = intent.getIntExtra("observatory-port", 0);
        if (intExtra > 0) {
            arrayList.add("--observatory-port=" + Integer.toString(intExtra));
        }
        if (intent.getBooleanExtra("disable-service-auth-codes", false)) {
            arrayList.add("--disable-service-auth-codes");
        }
        if (intent.getBooleanExtra("endless-trace-buffer", false)) {
            arrayList.add("--endless-trace-buffer");
        }
        if (intent.hasExtra("dart-flags")) {
            arrayList.add("--dart-flags=" + intent.getStringExtra("dart-flags"));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private View b() {
        Drawable c2;
        if (!e().booleanValue() || (c2 = c()) == null) {
            return null;
        }
        View view = new View(this.f18868e);
        view.setLayoutParams(f18867i);
        view.setBackground(c2);
        return view;
    }

    private void a(String str) {
        if (this.f18870g.getFlutterNativeView().g()) {
            return;
        }
        f fVar = new f();
        fVar.f19611a = str;
        fVar.f19612b = "main";
        this.f18870g.runFromBundle(fVar);
    }

    private void a() {
        View view = this.f18871h;
        if (view == null) {
            return;
        }
        this.f18868e.addContentView(view, f18867i);
        this.f18870g.addFirstFrameListener(new C0224a());
        this.f18868e.setTheme(R.style.Theme.Black.NoTitleBar);
    }
}
