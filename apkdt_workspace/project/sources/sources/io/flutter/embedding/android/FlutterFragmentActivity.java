package io.flutter.embedding.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import io.flutter.embedding.android.FlutterFragment;
import io.flutter.embedding.android.c;

/* loaded from: classes2.dex */
public class FlutterFragmentActivity extends FragmentActivity implements j, e, d {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private FlutterFragment f18911e;

    /* loaded from: classes2.dex */
    public static class a {
        public a(@NonNull Class<? extends FlutterFragmentActivity> cls, @NonNull String str) {
            String str2 = c.f18981a;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Class<? extends FlutterFragmentActivity> f18912a;

        /* renamed from: b, reason: collision with root package name */
        private String f18913b = "/";

        /* renamed from: c, reason: collision with root package name */
        private String f18914c = c.f18981a;

        public b(@NonNull Class<? extends FlutterFragmentActivity> cls) {
            this.f18912a = cls;
        }

        @NonNull
        public Intent a(@NonNull Context context) {
            return new Intent(context, this.f18912a).putExtra("route", this.f18913b).putExtra("background_mode", this.f18914c).putExtra("destroy_engine_with_activity", true);
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
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(609893468);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @NonNull
    public static Intent createDefaultIntent(@NonNull Context context) {
        return withNewEngine().a(context);
    }

    private void d() {
        androidx.fragment.app.g supportFragmentManager = getSupportFragmentManager();
        this.f18911e = (FlutterFragment) supportFragmentManager.a("flutter_fragment");
        if (this.f18911e == null) {
            this.f18911e = createFlutterFragment();
            androidx.fragment.app.j a2 = supportFragmentManager.a();
            a2.a(609893468, this.f18911e, "flutter_fragment");
            a2.a();
        }
    }

    @Nullable
    private Drawable e() {
        try {
            Bundle bundle = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
            Integer valueOf = bundle != null ? Integer.valueOf(bundle.getInt("io.flutter.embedding.android.SplashScreenDrawable")) : null;
            if (valueOf == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT > 21) {
                return getResources().getDrawable(valueOf.intValue(), getTheme());
            }
            return getResources().getDrawable(valueOf.intValue());
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private boolean f() {
        return (getApplicationInfo().flags & 2) != 0;
    }

    private void g() {
        try {
            ActivityInfo activityInfo = getPackageManager().getActivityInfo(getComponentName(), 128);
            if (activityInfo.metaData != null) {
                int i2 = activityInfo.metaData.getInt("io.flutter.embedding.android.NormalTheme", -1);
                if (i2 != -1) {
                    setTheme(i2);
                }
            } else {
                g.a.b.c("FlutterFragmentActivity", "Using the launch theme as normal theme.");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            g.a.b.b("FlutterFragmentActivity", "Could not read meta-data for FlutterFragmentActivity. Using the launch theme as normal theme.");
        }
    }

    @NonNull
    public static a withCachedEngine(@NonNull String str) {
        return new a(FlutterFragmentActivity.class, str);
    }

    @NonNull
    public static b withNewEngine() {
        return new b(FlutterFragmentActivity.class);
    }

    @Override // io.flutter.embedding.android.d
    public void cleanUpFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
    }

    @Override // io.flutter.embedding.android.d
    public void configureFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
        io.flutter.embedding.engine.g.h.a.a(aVar);
    }

    @NonNull
    protected FlutterFragment createFlutterFragment() {
        c.a backgroundMode = getBackgroundMode();
        g renderMode = getRenderMode();
        k kVar = backgroundMode == c.a.opaque ? k.opaque : k.transparent;
        if (getCachedEngineId() != null) {
            g.a.b.c("FlutterFragmentActivity", "Creating FlutterFragment with cached engine:\nCached engine ID: " + getCachedEngineId() + "\nWill destroy engine when Activity is destroyed: " + shouldDestroyEngineWithHost() + "\nBackground transparency mode: " + backgroundMode + "\nWill attach FlutterEngine to Activity: " + shouldAttachEngineToActivity());
            FlutterFragment.b b2 = FlutterFragment.b(getCachedEngineId());
            b2.a(renderMode);
            b2.a(kVar);
            b2.b(shouldAttachEngineToActivity());
            b2.a(shouldDestroyEngineWithHost());
            return b2.a();
        }
        g.a.b.c("FlutterFragmentActivity", "Creating FlutterFragment with new engine:\nBackground transparency mode: " + backgroundMode + "\nDart entrypoint: " + getDartEntrypointFunctionName() + "\nInitial route: " + getInitialRoute() + "\nApp bundle path: " + getAppBundlePath() + "\nWill attach FlutterEngine to Activity: " + shouldAttachEngineToActivity());
        FlutterFragment.c h2 = FlutterFragment.h();
        h2.b(getDartEntrypointFunctionName());
        h2.c(getInitialRoute());
        h2.a(getAppBundlePath());
        h2.a(io.flutter.embedding.engine.d.a(getIntent()));
        h2.a(renderMode);
        h2.a(kVar);
        h2.a(shouldAttachEngineToActivity());
        return h2.a();
    }

    @NonNull
    protected String getAppBundlePath() {
        String dataString;
        if (f() && "android.intent.action.RUN".equals(getIntent().getAction()) && (dataString = getIntent().getDataString()) != null) {
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

    @Nullable
    protected String getCachedEngineId() {
        return getIntent().getStringExtra("cached_engine_id");
    }

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
        return this.f18911e.g();
    }

    @NonNull
    protected String getInitialRoute() {
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

    @NonNull
    protected g getRenderMode() {
        return getBackgroundMode() == c.a.opaque ? g.surface : g.texture;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        this.f18911e.onActivityResult(i2, i3, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.f18911e.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        g();
        super.onCreate(bundle);
        b();
        setContentView(c());
        a();
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(@NonNull Intent intent) {
        this.f18911e.onNewIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f18911e.onPostResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        this.f18911e.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        super.onTrimMemory(i2);
        this.f18911e.onTrimMemory(i2);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.f18911e.onUserLeaveHint();
    }

    @Override // io.flutter.embedding.android.e
    @Nullable
    public io.flutter.embedding.engine.a provideFlutterEngine(@NonNull Context context) {
        return null;
    }

    @Override // io.flutter.embedding.android.j
    @Nullable
    public i provideSplashScreen() {
        Drawable e2 = e();
        if (e2 != null) {
            return new DrawableSplashScreen(e2);
        }
        return null;
    }

    protected boolean shouldAttachEngineToActivity() {
        return true;
    }

    public boolean shouldDestroyEngineWithHost() {
        return getIntent().getBooleanExtra("destroy_engine_with_activity", false);
    }
}
