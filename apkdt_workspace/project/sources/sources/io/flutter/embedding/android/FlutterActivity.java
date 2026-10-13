package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.e;
import io.flutter.embedding.android.b;
import io.flutter.embedding.android.c;

/* loaded from: classes2.dex */
public class FlutterActivity extends Activity implements b.InterfaceC0227b, androidx.lifecycle.h {

    @VisibleForTesting
    protected io.flutter.embedding.android.b delegate;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private androidx.lifecycle.i f18892e = new androidx.lifecycle.i(this);

    /* loaded from: classes2.dex */
    public static class a {
        public a(@NonNull Class<? extends FlutterActivity> cls, @NonNull String str) {
            String str2 = c.f18981a;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Class<? extends FlutterActivity> f18893a;

        /* renamed from: b, reason: collision with root package name */
        private String f18894b = "/";

        /* renamed from: c, reason: collision with root package name */
        private String f18895c = c.f18981a;

        public b(@NonNull Class<? extends FlutterActivity> cls) {
            this.f18893a = cls;
        }

        @NonNull
        public Intent a(@NonNull Context context) {
            return new Intent(context, this.f18893a).putExtra("route", this.f18894b).putExtra("background_mode", this.f18895c).putExtra("destroy_engine_with_activity", true);
        }
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.addFlags(e.b.b.a.a.a.c.ALL_INT);
            window.setStatusBarColor(1073741824);
            window.getDecorView().setSystemUiVisibility(1280);
        }
    }

    private void b() {
        if (getBackgroundMode() == c.a.transparent) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    @NonNull
    private View c() {
        return this.delegate.a((LayoutInflater) null, (ViewGroup) null, (Bundle) null);
    }

    @NonNull
    public static Intent createDefaultIntent(@NonNull Context context) {
        return withNewEngine().a(context);
    }

    @Nullable
    private Drawable d() {
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
            int i2 = bundle != null ? bundle.getInt("io.flutter.embedding.android.SplashScreenDrawable") : 0;
            if (i2 == 0) {
                return null;
            }
            if (Build.VERSION.SDK_INT > 21) {
                return getResources().getDrawable(i2, getTheme());
            }
            return getResources().getDrawable(i2);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private boolean e() {
        return (getApplicationInfo().flags & 2) != 0;
    }

    private void f() {
        try {
            ActivityInfo activityInfo = getPackageManager().getActivityInfo(getComponentName(), 128);
            if (activityInfo.metaData != null) {
                int i2 = activityInfo.metaData.getInt("io.flutter.embedding.android.NormalTheme", -1);
                if (i2 != -1) {
                    setTheme(i2);
                }
            } else {
                g.a.b.c("FlutterActivity", "Using the launch theme as normal theme.");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            g.a.b.b("FlutterActivity", "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme.");
        }
    }

    public static a withCachedEngine(@NonNull String str) {
        return new a(FlutterActivity.class, str);
    }

    @NonNull
    public static b withNewEngine() {
        return new b(FlutterActivity.class);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.d
    public void cleanUpFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.d
    public void configureFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
        io.flutter.embedding.engine.g.h.a.a(aVar);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public Activity getActivity() {
        return this;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public String getAppBundlePath() {
        String dataString;
        if (e() && "android.intent.action.RUN".equals(getIntent().getAction()) && (dataString = getIntent().getDataString()) != null) {
            return dataString;
        }
        return null;
    }

    @NonNull
    protected c.a getBackgroundMode() {
        if (getIntent().hasExtra("background_mode")) {
            return c.a.valueOf(getIntent().getStringExtra("background_mode"));
        }
        return c.a.opaque;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public String getCachedEngineId() {
        return getIntent().getStringExtra("cached_engine_id");
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public Context getContext() {
        return this;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public String getDartEntrypointFunctionName() {
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
            String string = bundle != null ? bundle.getString("io.flutter.Entrypoint") : null;
            return string != null ? string : "main";
        } catch (PackageManager.NameNotFoundException unused) {
            return "main";
        }
    }

    @Nullable
    protected io.flutter.embedding.engine.a getFlutterEngine() {
        return this.delegate.a();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public io.flutter.embedding.engine.d getFlutterShellArgs() {
        return io.flutter.embedding.engine.d.a(getIntent());
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public String getInitialRoute() {
        if (getIntent().hasExtra("route")) {
            return getIntent().getStringExtra("route");
        }
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
            String string = bundle != null ? bundle.getString("io.flutter.InitialRoute") : null;
            return string != null ? string : "/";
        } catch (PackageManager.NameNotFoundException unused) {
            return "/";
        }
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, androidx.lifecycle.h
    @NonNull
    public androidx.lifecycle.e getLifecycle() {
        return this.f18892e;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public g getRenderMode() {
        return getBackgroundMode() == c.a.opaque ? g.surface : g.texture;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public k getTransparencyMode() {
        return getBackgroundMode() == c.a.opaque ? k.opaque : k.transparent;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        this.delegate.a(i2, i3, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.delegate.c();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        f();
        super.onCreate(bundle);
        this.f18892e.a(e.a.ON_CREATE);
        this.delegate = new io.flutter.embedding.android.b(this);
        this.delegate.a(this);
        this.delegate.a(bundle);
        b();
        setContentView(c());
        a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.delegate.d();
        this.delegate.e();
        this.f18892e.a(e.a.ON_DESTROY);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterSurfaceViewCreated(@NonNull FlutterSurfaceView flutterSurfaceView) {
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterTextureViewCreated(@NonNull FlutterTextureView flutterTextureView) {
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterUiDisplayed() {
        if (Build.VERSION.SDK_INT >= 21) {
            reportFullyDrawn();
        }
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterUiNoLongerDisplayed() {
    }

    @Override // android.app.Activity
    protected void onNewIntent(@NonNull Intent intent) {
        super.onNewIntent(intent);
        this.delegate.a(intent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.delegate.g();
        this.f18892e.a(e.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.delegate.h();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.delegate.a(i2, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f18892e.a(e.a.ON_RESUME);
        this.delegate.i();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.delegate.b(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f18892e.a(e.a.ON_START);
        this.delegate.j();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.delegate.k();
        this.f18892e.a(e.a.ON_STOP);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        super.onTrimMemory(i2);
        this.delegate.a(i2);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.delegate.l();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.e
    @Nullable
    public io.flutter.embedding.engine.a provideFlutterEngine(@NonNull Context context) {
        return null;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public io.flutter.plugin.platform.d providePlatformPlugin(@Nullable Activity activity, @NonNull io.flutter.embedding.engine.a aVar) {
        if (activity != null) {
            return new io.flutter.plugin.platform.d(getActivity(), aVar.j());
        }
        return null;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.j
    @Nullable
    public i provideSplashScreen() {
        Drawable d2 = d();
        if (d2 != null) {
            return new DrawableSplashScreen(d2);
        }
        return null;
    }

    @VisibleForTesting
    void setDelegate(@NonNull io.flutter.embedding.android.b bVar) {
        this.delegate = bVar;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldAttachEngineToActivity() {
        return true;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldDestroyEngineWithHost() {
        boolean booleanExtra = getIntent().getBooleanExtra("destroy_engine_with_activity", false);
        return (getCachedEngineId() != null || this.delegate.b()) ? booleanExtra : getIntent().getBooleanExtra("destroy_engine_with_activity", true);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldRestoreAndSaveState() {
        if (getIntent().hasExtra("enable_state_restoration")) {
            return getIntent().getBooleanExtra("enable_state_restoration", false);
        }
        return getCachedEngineId() == null;
    }
}
