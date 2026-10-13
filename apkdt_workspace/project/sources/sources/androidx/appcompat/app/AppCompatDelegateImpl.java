package androidx.appcompat.app;

import a.a.n.b;
import a.a.n.f;
import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.r;
import androidx.core.content.res.e;
import androidx.core.view.ViewCompat;
import androidx.core.view.a0;
import androidx.core.view.b0;
import androidx.core.view.c0;
import androidx.core.view.e0;
import androidx.core.view.f;
import androidx.lifecycle.e;
import com.alipay.mobile.security.bio.utils.FileUtil;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class AppCompatDelegateImpl extends AppCompatDelegate implements f.a, LayoutInflater.Factory2 {
    private static final a.e.g<String, Integer> e0 = new a.e.g<>();
    private static final boolean f0;
    private static final int[] g0;
    private static final boolean h0;
    private static final boolean i0;
    private static boolean j0;
    private TextView A;
    private View B;
    private boolean C;
    private boolean D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    boolean I;
    private boolean J;
    private PanelFeatureState[] K;
    private PanelFeatureState L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    boolean Q;
    private int R;
    private int S;
    private boolean T;
    private boolean U;
    private m V;
    private m W;
    boolean X;
    int Y;
    private final Runnable Z;
    private boolean a0;
    private Rect b0;
    private Rect c0;
    private androidx.appcompat.app.f d0;

    /* renamed from: h, reason: collision with root package name */
    final Object f783h;

    /* renamed from: i, reason: collision with root package name */
    final Context f784i;

    /* renamed from: j, reason: collision with root package name */
    Window f785j;

    /* renamed from: k, reason: collision with root package name */
    private k f786k;

    /* renamed from: l, reason: collision with root package name */
    final androidx.appcompat.app.d f787l;
    ActionBar m;
    MenuInflater n;
    private CharSequence o;
    private androidx.appcompat.widget.n p;
    private i q;
    private t r;
    a.a.n.b s;
    ActionBarContextView t;
    PopupWindow u;
    Runnable v;
    a0 w;
    private boolean x;
    private boolean y;
    ViewGroup z;

    /* loaded from: classes.dex */
    class a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f803a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f803a = uncaughtExceptionHandler;
        }

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            if (a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.f803a.uncaughtException(thread, notFoundException);
                return;
            }
            this.f803a.uncaughtException(thread, th);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.Y & 1) != 0) {
                appCompatDelegateImpl.f(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.Y & 4096) != 0) {
                appCompatDelegateImpl2.f(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.X = false;
            appCompatDelegateImpl3.Y = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements androidx.core.view.s {
        c() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            int g2 = e0Var.g();
            int a2 = AppCompatDelegateImpl.this.a(e0Var, (Rect) null);
            if (g2 != a2) {
                e0Var = e0Var.b(e0Var.e(), a2, e0Var.f(), e0Var.d());
            }
            return ViewCompat.b(view, e0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements r.a {
        d() {
        }

        @Override // androidx.appcompat.widget.r.a
        public void a(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.a((e0) null, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements ContentFrameLayout.a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* loaded from: classes.dex */
        class a extends c0 {
            a() {
            }

            @Override // androidx.core.view.b0
            public void b(View view) {
                AppCompatDelegateImpl.this.t.setAlpha(1.0f);
                AppCompatDelegateImpl.this.w.a((b0) null);
                AppCompatDelegateImpl.this.w = null;
            }

            @Override // androidx.core.view.c0, androidx.core.view.b0
            public void c(View view) {
                AppCompatDelegateImpl.this.t.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.u.showAtLocation(appCompatDelegateImpl.t, 55, 0, 0);
            AppCompatDelegateImpl.this.n();
            if (AppCompatDelegateImpl.this.u()) {
                AppCompatDelegateImpl.this.t.setAlpha(0.0f);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                a0 a2 = ViewCompat.a(appCompatDelegateImpl2.t);
                a2.a(1.0f);
                appCompatDelegateImpl2.w = a2;
                AppCompatDelegateImpl.this.w.a(new a());
                return;
            }
            AppCompatDelegateImpl.this.t.setAlpha(1.0f);
            AppCompatDelegateImpl.this.t.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g extends c0 {
        g() {
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            AppCompatDelegateImpl.this.t.setAlpha(1.0f);
            AppCompatDelegateImpl.this.w.a((b0) null);
            AppCompatDelegateImpl.this.w = null;
        }

        @Override // androidx.core.view.c0, androidx.core.view.b0
        public void c(View view) {
            AppCompatDelegateImpl.this.t.setVisibility(0);
            AppCompatDelegateImpl.this.t.sendAccessibilityEvent(32);
            if (AppCompatDelegateImpl.this.t.getParent() instanceof View) {
                ViewCompat.I((View) AppCompatDelegateImpl.this.t.getParent());
            }
        }
    }

    /* loaded from: classes.dex */
    private class h implements androidx.appcompat.app.a {
        h(AppCompatDelegateImpl appCompatDelegateImpl) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements b.a {

        /* renamed from: a, reason: collision with root package name */
        private b.a f812a;

        /* loaded from: classes.dex */
        class a extends c0 {
            a() {
            }

            @Override // androidx.core.view.b0
            public void b(View view) {
                AppCompatDelegateImpl.this.t.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.u;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.t.getParent() instanceof View) {
                    ViewCompat.I((View) AppCompatDelegateImpl.this.t.getParent());
                }
                AppCompatDelegateImpl.this.t.removeAllViews();
                AppCompatDelegateImpl.this.w.a((b0) null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.w = null;
                ViewCompat.I(appCompatDelegateImpl2.z);
            }
        }

        public j(b.a aVar) {
            this.f812a = aVar;
        }

        @Override // a.a.n.b.a
        public boolean a(a.a.n.b bVar, Menu menu) {
            return this.f812a.a(bVar, menu);
        }

        @Override // a.a.n.b.a
        public boolean b(a.a.n.b bVar, Menu menu) {
            ViewCompat.I(AppCompatDelegateImpl.this.z);
            return this.f812a.b(bVar, menu);
        }

        @Override // a.a.n.b.a
        public boolean a(a.a.n.b bVar, MenuItem menuItem) {
            return this.f812a.a(bVar, menuItem);
        }

        @Override // a.a.n.b.a
        public void a(a.a.n.b bVar) {
            this.f812a.a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.u != null) {
                appCompatDelegateImpl.f785j.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.v);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.t != null) {
                appCompatDelegateImpl2.n();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                a0 a2 = ViewCompat.a(appCompatDelegateImpl3.t);
                a2.a(0.0f);
                appCompatDelegateImpl3.w = a2;
                AppCompatDelegateImpl.this.w.a(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            androidx.appcompat.app.d dVar = appCompatDelegateImpl4.f787l;
            if (dVar != null) {
                dVar.onSupportActionModeFinished(appCompatDelegateImpl4.s);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.s = null;
            ViewCompat.I(appCompatDelegateImpl5.z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class l extends m {

        /* renamed from: c, reason: collision with root package name */
        private final PowerManager f816c;

        l(@NonNull Context context) {
            super();
            this.f816c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        public int c() {
            return (Build.VERSION.SDK_INT < 21 || !this.f816c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        public void d() {
            AppCompatDelegateImpl.this.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY})
    @VisibleForTesting
    /* loaded from: classes.dex */
    public abstract class m {

        /* renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f818a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                m.this.d();
            }
        }

        m() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f818a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f784i.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f818a = null;
            }
        }

        @Nullable
        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter b2 = b();
            if (b2 == null || b2.countActions() == 0) {
                return;
            }
            if (this.f818a == null) {
                this.f818a = new a();
            }
            AppCompatDelegateImpl.this.f784i.registerReceiver(this.f818a, b2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class n extends m {

        /* renamed from: c, reason: collision with root package name */
        private final androidx.appcompat.app.j f821c;

        n(@NonNull androidx.appcompat.app.j jVar) {
            super();
            this.f821c = jVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        public int c() {
            return this.f821c.a() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.m
        public void d() {
            AppCompatDelegateImpl.this.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(17)
    /* loaded from: classes.dex */
    public static class o {
        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i2 = configuration.densityDpi;
            int i3 = configuration2.densityDpi;
            if (i2 != i3) {
                configuration3.densityDpi = i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class p {
        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class q {
        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i2 = configuration.colorMode & 3;
            int i3 = configuration2.colorMode;
            if (i2 != (i3 & 3)) {
                configuration3.colorMode |= i3 & 3;
            }
            int i4 = configuration.colorMode & 12;
            int i5 = configuration2.colorMode;
            if (i4 != (i5 & 12)) {
                configuration3.colorMode |= i5 & 12;
            }
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    private static class r {
        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class s extends ContentFrameLayout {
        public s(Context context) {
            super(context);
        }

        private boolean a(int i2, int i3) {
            return i2 < -5 || i3 < -5 || i2 > getWidth() + 5 || i3 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                AppCompatDelegateImpl.this.e(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(a.a.k.a.a.c(getContext(), i2));
        }
    }

    static {
        f0 = Build.VERSION.SDK_INT < 21;
        g0 = new int[]{R.attr.windowBackground};
        h0 = !"robolectric".equals(Build.FINGERPRINT);
        i0 = Build.VERSION.SDK_INT >= 17;
        if (!f0 || j0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        j0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    private void A() {
        if (this.f785j == null) {
            Object obj = this.f783h;
            if (obj instanceof Activity) {
                a(((Activity) obj).getWindow());
            }
        }
        if (this.f785j == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private void B() {
        z();
        if (this.E && this.m == null) {
            Object obj = this.f783h;
            if (obj instanceof Activity) {
                this.m = new androidx.appcompat.app.k((Activity) obj, this.F);
            } else if (obj instanceof Dialog) {
                this.m = new androidx.appcompat.app.k((Dialog) obj);
            }
            ActionBar actionBar = this.m;
            if (actionBar != null) {
                actionBar.c(this.a0);
            }
        }
    }

    private boolean C() {
        int i2;
        if (!this.U && (this.f783h instanceof Activity)) {
            PackageManager packageManager = this.f784i.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    i2 = 269221888;
                } else {
                    i2 = Build.VERSION.SDK_INT >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f784i, this.f783h.getClass()), i2);
                this.T = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.T = false;
            }
        }
        this.U = true;
        return this.T;
    }

    private void D() {
        if (this.y) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Nullable
    private AppCompatActivity E() {
        for (Context context = this.f784i; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private int j(int i2) {
        if (i2 == 8) {
            return 108;
        }
        if (i2 == 9) {
            return 109;
        }
        return i2;
    }

    private void v() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.z.findViewById(R.id.content);
        View decorView = this.f785j.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f784i.obtainStyledAttributes(a.a.j.AppCompatTheme);
        obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(a.a.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private int w() {
        int i2 = this.R;
        return i2 != -100 ? i2 : AppCompatDelegate.k();
    }

    private void x() {
        m mVar = this.V;
        if (mVar != null) {
            mVar.a();
        }
        m mVar2 = this.W;
        if (mVar2 != null) {
            mVar2.a();
        }
    }

    private ViewGroup y() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f784i.obtainStyledAttributes(a.a.j.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(a.a.j.AppCompatTheme_windowNoTitle, false)) {
                b(1);
            } else if (obtainStyledAttributes.getBoolean(a.a.j.AppCompatTheme_windowActionBar, false)) {
                b(108);
            }
            if (obtainStyledAttributes.getBoolean(a.a.j.AppCompatTheme_windowActionBarOverlay, false)) {
                b(109);
            }
            if (obtainStyledAttributes.getBoolean(a.a.j.AppCompatTheme_windowActionModeOverlay, false)) {
                b(10);
            }
            this.H = obtainStyledAttributes.getBoolean(a.a.j.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            A();
            this.f785j.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f784i);
            if (!this.I) {
                if (this.H) {
                    viewGroup = (ViewGroup) from.inflate(a.a.g.abc_dialog_title_material, (ViewGroup) null);
                    this.F = false;
                    this.E = false;
                } else if (this.E) {
                    TypedValue typedValue = new TypedValue();
                    this.f784i.getTheme().resolveAttribute(a.a.a.actionBarTheme, typedValue, true);
                    int i2 = typedValue.resourceId;
                    if (i2 != 0) {
                        context = new a.a.n.d(this.f784i, i2);
                    } else {
                        context = this.f784i;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(a.a.g.abc_screen_toolbar, (ViewGroup) null);
                    this.p = (androidx.appcompat.widget.n) viewGroup.findViewById(a.a.f.decor_content_parent);
                    this.p.setWindowCallback(q());
                    if (this.F) {
                        this.p.initFeature(109);
                    }
                    if (this.C) {
                        this.p.initFeature(2);
                    }
                    if (this.D) {
                        this.p.initFeature(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                viewGroup = this.G ? (ViewGroup) from.inflate(a.a.g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(a.a.g.abc_screen_simple, (ViewGroup) null);
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    ViewCompat.a(viewGroup, new c());
                } else if (viewGroup instanceof androidx.appcompat.widget.r) {
                    ((androidx.appcompat.widget.r) viewGroup).setOnFitSystemWindowsListener(new d());
                }
                if (this.p == null) {
                    this.A = (TextView) viewGroup.findViewById(a.a.f.title);
                }
                j0.b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(a.a.f.action_bar_activity_content);
                ViewGroup viewGroup2 = (ViewGroup) this.f785j.findViewById(R.id.content);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(R.id.content);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f785j.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new e());
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.E + ", windowActionBarOverlay: " + this.F + ", android:windowIsFloating: " + this.H + ", windowActionModeOverlay: " + this.G + ", windowNoTitle: " + this.I + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void z() {
        if (this.y) {
            return;
        }
        this.z = y();
        CharSequence p2 = p();
        if (!TextUtils.isEmpty(p2)) {
            androidx.appcompat.widget.n nVar = this.p;
            if (nVar != null) {
                nVar.setWindowTitle(p2);
            } else if (t() != null) {
                t().b(p2);
            } else {
                TextView textView = this.A;
                if (textView != null) {
                    textView.setText(p2);
                }
            }
        }
        v();
        a(this.z);
        this.y = true;
        PanelFeatureState a2 = a(0, false);
        if (this.Q) {
            return;
        }
        if (a2 == null || a2.f797j == null) {
            i(108);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void a(Bundle bundle) {
        this.N = true;
        a(false);
        A();
        Object obj = this.f783h;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = androidx.core.app.f.b((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                ActionBar t2 = t();
                if (t2 == null) {
                    this.a0 = true;
                } else {
                    t2.c(true);
                }
            }
        }
        AppCompatDelegate.a(this);
        this.O = true;
    }

    void a(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context b(@NonNull Context context) {
        this.N = true;
        int a2 = a(context, w());
        if (i0 && (context instanceof ContextThemeWrapper)) {
            try {
                r.a((ContextThemeWrapper) context, a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof a.a.n.d) {
            try {
                ((a.a.n.d) context).a(a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!h0) {
            super.b(context);
            return context;
        }
        try {
            Configuration configuration = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration2 = context.getResources().getConfiguration();
            Configuration a3 = a(context, a2, configuration.equals(configuration2) ? null : a(configuration, configuration2));
            a.a.n.d dVar = new a.a.n.d(context, a.a.i.Theme_AppCompat_Empty);
            dVar.a(a3);
            boolean z = false;
            try {
                if (context.getTheme() != null) {
                    z = true;
                }
            } catch (NullPointerException unused3) {
            }
            if (z) {
                e.b.a(dVar.getTheme());
            }
            super.b(dVar);
            return dVar;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("Application failed to obtain resources from itself", e2);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater c() {
        if (this.n == null) {
            B();
            ActionBar actionBar = this.m;
            this.n = new a.a.n.g(actionBar != null ? actionBar.h() : this.f784i);
        }
        return this.n;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void c(Bundle bundle) {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar d() {
        B();
        return this.m;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void e() {
        LayoutInflater from = LayoutInflater.from(this.f784i);
        if (from.getFactory() == null) {
            androidx.core.view.g.b(from, this);
        } else {
            boolean z = from.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void f() {
        ActionBar d2 = d();
        if (d2 == null || !d2.j()) {
            i(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g() {
        /*
            r3 = this;
            androidx.appcompat.app.AppCompatDelegate.b(r3)
            boolean r0 = r3.X
            if (r0 == 0) goto L12
            android.view.Window r0 = r3.f785j
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.Z
            r0.removeCallbacks(r1)
        L12:
            r0 = 0
            r3.P = r0
            r0 = 1
            r3.Q = r0
            int r0 = r3.R
            r1 = -100
            if (r0 == r1) goto L42
            java.lang.Object r0 = r3.f783h
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L42
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L42
            a.e.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.e0
            java.lang.Object r1 = r3.f783h
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.R
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L51
        L42:
            a.e.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.e0
            java.lang.Object r1 = r3.f783h
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L51:
            androidx.appcompat.app.ActionBar r0 = r3.m
            if (r0 == 0) goto L58
            r0.k()
        L58:
            r3.x()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.g():void");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void h() {
        ActionBar d2 = d();
        if (d2 != null) {
            d2.g(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void i() {
        this.P = true;
        l();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void j() {
        this.P = false;
        ActionBar d2 = d();
        if (d2 != null) {
            d2.g(false);
        }
    }

    public boolean l() {
        return a(true);
    }

    void m() {
        androidx.appcompat.view.menu.f fVar;
        androidx.appcompat.widget.n nVar = this.p;
        if (nVar != null) {
            nVar.dismissPopups();
        }
        if (this.u != null) {
            this.f785j.getDecorView().removeCallbacks(this.v);
            if (this.u.isShowing()) {
                try {
                    this.u.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.u = null;
        }
        n();
        PanelFeatureState a2 = a(0, false);
        if (a2 == null || (fVar = a2.f797j) == null) {
            return;
        }
        fVar.close();
    }

    void n() {
        a0 a0Var = this.w;
        if (a0Var != null) {
            a0Var.a();
        }
    }

    final Context o() {
        ActionBar d2 = d();
        Context h2 = d2 != null ? d2.h() : null;
        return h2 == null ? this.f784i : h2;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    final CharSequence p() {
        Object obj = this.f783h;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.o;
    }

    final Window.Callback q() {
        return this.f785j.getCallback();
    }

    public boolean r() {
        return this.x;
    }

    boolean s() {
        a.a.n.b bVar = this.s;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        ActionBar d2 = d();
        return d2 != null && d2.f();
    }

    final ActionBar t() {
        return this.m;
    }

    final boolean u() {
        ViewGroup viewGroup;
        return this.y && (viewGroup = this.z) != null && ViewCompat.D(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class i implements m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.f fVar) {
            Window.Callback q = AppCompatDelegateImpl.this.q();
            if (q == null) {
                return true;
            }
            q.onMenuOpened(108, fVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
            AppCompatDelegateImpl.this.b(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class PanelFeatureState {

        /* renamed from: a, reason: collision with root package name */
        int f788a;

        /* renamed from: b, reason: collision with root package name */
        int f789b;

        /* renamed from: c, reason: collision with root package name */
        int f790c;

        /* renamed from: d, reason: collision with root package name */
        int f791d;

        /* renamed from: e, reason: collision with root package name */
        int f792e;

        /* renamed from: f, reason: collision with root package name */
        int f793f;

        /* renamed from: g, reason: collision with root package name */
        ViewGroup f794g;

        /* renamed from: h, reason: collision with root package name */
        View f795h;

        /* renamed from: i, reason: collision with root package name */
        View f796i;

        /* renamed from: j, reason: collision with root package name */
        androidx.appcompat.view.menu.f f797j;

        /* renamed from: k, reason: collision with root package name */
        androidx.appcompat.view.menu.d f798k;

        /* renamed from: l, reason: collision with root package name */
        Context f799l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* renamed from: e, reason: collision with root package name */
            int f800e;

            /* renamed from: f, reason: collision with root package name */
            boolean f801f;

            /* renamed from: g, reason: collision with root package name */
            Bundle f802g;

            /* loaded from: classes.dex */
            class a implements Parcelable.ClassLoaderCreator<SavedState> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f800e = parcel.readInt();
                savedState.f801f = parcel.readInt() == 1;
                if (savedState.f801f) {
                    savedState.f802g = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f800e);
                parcel.writeInt(this.f801f ? 1 : 0);
                if (this.f801f) {
                    parcel.writeBundle(this.f802g);
                }
            }
        }

        PanelFeatureState(int i2) {
            this.f788a = i2;
        }

        public boolean a() {
            if (this.f795h == null) {
                return false;
            }
            return this.f796i != null || this.f798k.c().getCount() > 0;
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(a.a.a.actionBarPopupTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            }
            newTheme.resolveAttribute(a.a.a.panelMenuListTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                newTheme.applyStyle(i3, true);
            } else {
                newTheme.applyStyle(a.a.i.Theme_AppCompat_CompactMenu, true);
            }
            a.a.n.d dVar = new a.a.n.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f799l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(a.a.j.AppCompatTheme);
            this.f789b = obtainStyledAttributes.getResourceId(a.a.j.AppCompatTheme_panelBackground, 0);
            this.f793f = obtainStyledAttributes.getResourceId(a.a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        void a(androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.d dVar;
            androidx.appcompat.view.menu.f fVar2 = this.f797j;
            if (fVar == fVar2) {
                return;
            }
            if (fVar2 != null) {
                fVar2.b(this.f798k);
            }
            this.f797j = fVar;
            if (fVar == null || (dVar = this.f798k) == null) {
                return;
            }
            fVar.a(dVar);
        }

        androidx.appcompat.view.menu.n a(m.a aVar) {
            if (this.f797j == null) {
                return null;
            }
            if (this.f798k == null) {
                this.f798k = new androidx.appcompat.view.menu.d(this.f799l, a.a.g.abc_list_menu_item_layout);
                this.f798k.a(aVar);
                this.f797j.a(this.f798k);
            }
            return this.f798k.a(this.f794g);
        }
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        Integer num;
        AppCompatActivity E;
        this.w = null;
        this.x = true;
        this.R = -100;
        this.Z = new b();
        this.f784i = context;
        this.f787l = dVar;
        this.f783h = obj;
        if (this.R == -100 && (this.f783h instanceof Dialog) && (E = E()) != null) {
            this.R = E.getDelegate().b();
        }
        if (this.R == -100 && (num = e0.get(this.f783h.getClass().getName())) != null) {
            this.R = num.intValue();
            e0.remove(this.f783h.getClass().getName());
        }
        if (window != null) {
            a(window);
        }
        androidx.appcompat.widget.f.c();
    }

    private void i(int i2) {
        this.Y = (1 << i2) | this.Y;
        if (this.X) {
            return;
        }
        ViewCompat.a(this.f785j.getDecorView(), this.Z);
        this.X = true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void d(@StyleRes int i2) {
        this.S = i2;
    }

    void h(int i2) {
        if (i2 == 108) {
            ActionBar d2 = d();
            if (d2 != null) {
                d2.b(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            PanelFeatureState a2 = a(i2, true);
            if (a2.o) {
                a(a2, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class k extends a.a.n.i {
        k(Window.Callback callback) {
            super(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(AppCompatDelegateImpl.this.f784i, callback);
            a.a.n.b a2 = AppCompatDelegateImpl.this.a(aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.b(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof androidx.appcompat.view.menu.f)) {
                return super.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            AppCompatDelegateImpl.this.g(i2);
            return true;
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public void onPanelClosed(int i2, Menu menu) {
            super.onPanelClosed(i2, menu);
            AppCompatDelegateImpl.this.h(i2);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            androidx.appcompat.view.menu.f fVar = menu instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) menu : null;
            if (i2 == 0 && fVar == null) {
                return false;
            }
            if (fVar != null) {
                fVar.c(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i2, view, menu);
            if (fVar != null) {
                fVar.c(false);
            }
            return onPreparePanel;
        }

        @Override // a.a.n.i, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            androidx.appcompat.view.menu.f fVar;
            PanelFeatureState a2 = AppCompatDelegateImpl.this.a(0, true);
            if (a2 != null && (fVar = a2.f797j) != null) {
                super.onProvideKeyboardShortcuts(list, fVar, i2);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i2);
            }
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.r()) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        @RequiresApi(23)
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            if (AppCompatDelegateImpl.this.r() && i2 == 0) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback, i2);
        }
    }

    private boolean d(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState a2 = a(i2, true);
        if (a2.o) {
            return false;
        }
        return b(a2, keyEvent);
    }

    void f(int i2) {
        PanelFeatureState a2;
        PanelFeatureState a3 = a(i2, true);
        if (a3.f797j != null) {
            Bundle bundle = new Bundle();
            a3.f797j.c(bundle);
            if (bundle.size() > 0) {
                a3.s = bundle;
            }
            a3.f797j.s();
            a3.f797j.clear();
        }
        a3.r = true;
        a3.q = true;
        if ((i2 != 108 && i2 != 0) || this.p == null || (a2 = a(0, false)) == null) {
            return;
        }
        a2.m = false;
        b(a2, (KeyEvent) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class t implements m.a {
        t() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
            androidx.appcompat.view.menu.f m = fVar.m();
            boolean z2 = m != fVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                fVar = m;
            }
            PanelFeatureState a2 = appCompatDelegateImpl.a((Menu) fVar);
            if (a2 != null) {
                if (z2) {
                    AppCompatDelegateImpl.this.a(a2.f788a, a2, m);
                    AppCompatDelegateImpl.this.a(a2, true);
                } else {
                    AppCompatDelegateImpl.this.a(a2, z);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.f fVar) {
            Window.Callback q;
            if (fVar != null) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.E || (q = appCompatDelegateImpl.q()) == null || AppCompatDelegateImpl.this.Q) {
                return true;
            }
            q.onMenuOpened(108, fVar);
            return true;
        }
    }

    void e(int i2) {
        a(a(i2, true), true);
    }

    private boolean e(int i2, KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        AudioManager audioManager;
        androidx.appcompat.widget.n nVar;
        if (this.s != null) {
            return false;
        }
        PanelFeatureState a2 = a(i2, true);
        if (i2 == 0 && (nVar = this.p) != null && nVar.canShowOverflowMenu() && !ViewConfiguration.get(this.f784i).hasPermanentMenuKey()) {
            if (!this.p.isOverflowMenuShowing()) {
                if (!this.Q && b(a2, keyEvent)) {
                    z = this.p.showOverflowMenu();
                }
                z = false;
            } else {
                z = this.p.hideOverflowMenu();
            }
        } else if (!a2.o && !a2.n) {
            if (a2.m) {
                if (a2.r) {
                    a2.m = false;
                    z2 = b(a2, keyEvent);
                } else {
                    z2 = true;
                }
                if (z2) {
                    a(a2, keyEvent);
                    z = true;
                }
            }
            z = false;
        } else {
            z = a2.o;
            a(a2, true);
        }
        if (z && (audioManager = (AudioManager) this.f784i.getApplicationContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return z;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void c(int i2) {
        z();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f784i).inflate(i2, viewGroup);
        this.f786k.a().onContentChanged();
    }

    private m d(@NonNull Context context) {
        if (this.V == null) {
            this.V = new n(androidx.appcompat.app.j.a(context));
        }
        return this.V;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void a(Toolbar toolbar) {
        if (this.f783h instanceof Activity) {
            ActionBar d2 = d();
            if (!(d2 instanceof androidx.appcompat.app.k)) {
                this.n = null;
                if (d2 != null) {
                    d2.k();
                }
                if (toolbar != null) {
                    androidx.appcompat.app.h hVar = new androidx.appcompat.app.h(toolbar, p(), this.f786k);
                    this.m = hVar;
                    this.f785j.setCallback(hVar.n());
                } else {
                    this.m = null;
                    this.f785j.setCallback(this.f786k);
                }
                f();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    boolean c(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.M;
            this.M = false;
            PanelFeatureState a2 = a(0, false);
            if (a2 != null && a2.o) {
                if (!z) {
                    a(a2, true);
                }
                return true;
            }
            if (s()) {
                return true;
            }
        } else if (i2 == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    void g(int i2) {
        ActionBar d2;
        if (i2 != 108 || (d2 = d()) == null) {
            return;
        }
        d2.b(true);
    }

    private boolean c(PanelFeatureState panelFeatureState) {
        Context context = this.f784i;
        int i2 = panelFeatureState.f788a;
        if ((i2 == 0 || i2 == 108) && this.p != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(a.a.a.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(a.a.a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(a.a.a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                a.a.n.d dVar = new a.a.n.d(context, 0);
                dVar.getTheme().setTo(theme2);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
        fVar.a(this);
        panelFeatureState.a(fVar);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T a(@IdRes int i2) {
        z();
        return (T) this.f785j.findViewById(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void a(Configuration configuration) {
        ActionBar d2;
        if (this.E && this.y && (d2 = d()) != null) {
            d2.a(configuration);
        }
        androidx.appcompat.widget.f.b().a(this.f784i);
        a(false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void b(Bundle bundle) {
        z();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        z();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f786k.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void a(View view) {
        z();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f786k.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean b(int i2) {
        int j2 = j(i2);
        if (this.I && j2 == 108) {
            return false;
        }
        if (this.E && j2 == 1) {
            this.E = false;
        }
        if (j2 == 1) {
            D();
            this.I = true;
            return true;
        }
        if (j2 == 2) {
            D();
            this.C = true;
            return true;
        }
        if (j2 == 5) {
            D();
            this.D = true;
            return true;
        }
        if (j2 == 10) {
            D();
            this.G = true;
            return true;
        }
        if (j2 == 108) {
            D();
            this.E = true;
            return true;
        }
        if (j2 != 109) {
            return this.f785j.requestFeature(j2);
        }
        D();
        this.F = true;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        z();
        ((ViewGroup) this.z.findViewById(R.id.content)).addView(view, layoutParams);
        this.f786k.a().onContentChanged();
    }

    private m c(@NonNull Context context) {
        if (this.W == null) {
            this.W = new l(context);
        }
        return this.W;
    }

    private void a(@NonNull Window window) {
        if (this.f785j == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof k)) {
                this.f786k = new k(callback);
                window.setCallback(this.f786k);
                d0 a2 = d0.a(this.f784i, (AttributeSet) null, g0);
                Drawable c2 = a2.c(0);
                if (c2 != null) {
                    window.setBackgroundDrawable(c2);
                }
                a2.b();
                this.f785j = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    a.a.n.b b(@androidx.annotation.NonNull a.a.n.b.a r8) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b(a.a.n.b$a):a.a.n.b");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void a(CharSequence charSequence) {
        this.o = charSequence;
        androidx.appcompat.widget.n nVar = this.p;
        if (nVar != null) {
            nVar.setWindowTitle(charSequence);
            return;
        }
        if (t() != null) {
            t().b(charSequence);
            return;
        }
        TextView textView = this.A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.f.a
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        PanelFeatureState a2;
        Window.Callback q2 = q();
        if (q2 == null || this.Q || (a2 = a((Menu) fVar.m())) == null) {
            return false;
        }
        return q2.onMenuItemSelected(a2.f788a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.f.a
    public void a(androidx.appcompat.view.menu.f fVar) {
        b(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public a.a.n.b a(@NonNull b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar != null) {
            a.a.n.b bVar = this.s;
            if (bVar != null) {
                bVar.a();
            }
            j jVar = new j(aVar);
            ActionBar d2 = d();
            if (d2 != null) {
                this.s = d2.a(jVar);
                a.a.n.b bVar2 = this.s;
                if (bVar2 != null && (dVar = this.f787l) != null) {
                    dVar.onSupportActionModeStarted(bVar2);
                }
            }
            if (this.s == null) {
                this.s = b(jVar);
            }
            return this.s;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    boolean a(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f783h;
        if (((obj instanceof f.a) || (obj instanceof androidx.appcompat.app.e)) && (decorView = this.f785j.getDecorView()) != null && androidx.core.view.f.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f786k.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? a(keyCode, keyEvent) : c(keyCode, keyEvent);
    }

    boolean a(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.M = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            d(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z;
        boolean z2 = false;
        if (this.d0 == null) {
            String string = this.f784i.obtainStyledAttributes(a.a.j.AppCompatTheme).getString(a.a.j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.d0 = new androidx.appcompat.app.f();
            } else {
                try {
                    this.d0 = (androidx.appcompat.app.f) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    String str2 = "Failed to instantiate custom view inflater " + string + ". Falling back to default.";
                    this.d0 = new androidx.appcompat.app.f();
                }
            }
        }
        if (f0) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z2 = true;
                }
            } else {
                z2 = a((ViewParent) view);
            }
            z = z2;
        } else {
            z = false;
        }
        return this.d0.createView(view, str, context, attributeSet, z, f0, true, i0.b());
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f785j.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.C((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.o || this.Q) {
            return;
        }
        if (panelFeatureState.f788a == 0) {
            if ((this.f784i.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback q2 = q();
        if (q2 != null && !q2.onMenuOpened(panelFeatureState.f788a, panelFeatureState.f797j)) {
            a(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f784i.getSystemService("window");
        if (windowManager != null && b(panelFeatureState, keyEvent)) {
            if (panelFeatureState.f794g != null && !panelFeatureState.q) {
                View view = panelFeatureState.f796i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                    panelFeatureState.n = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f791d, panelFeatureState.f792e, 1002, 8519680, -3);
                    layoutParams2.gravity = panelFeatureState.f790c;
                    layoutParams2.windowAnimations = panelFeatureState.f793f;
                    windowManager.addView(panelFeatureState.f794g, layoutParams2);
                    panelFeatureState.o = true;
                }
            } else {
                ViewGroup viewGroup = panelFeatureState.f794g;
                if (viewGroup == null) {
                    if (!b(panelFeatureState) || panelFeatureState.f794g == null) {
                        return;
                    }
                } else if (panelFeatureState.q && viewGroup.getChildCount() > 0) {
                    panelFeatureState.f794g.removeAllViews();
                }
                if (a(panelFeatureState) && panelFeatureState.a()) {
                    ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f795h.getLayoutParams();
                    if (layoutParams3 == null) {
                        layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                    }
                    panelFeatureState.f794g.setBackgroundResource(panelFeatureState.f789b);
                    ViewParent parent = panelFeatureState.f795h.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(panelFeatureState.f795h);
                    }
                    panelFeatureState.f794g.addView(panelFeatureState.f795h, layoutParams3);
                    if (!panelFeatureState.f795h.hasFocus()) {
                        panelFeatureState.f795h.requestFocus();
                    }
                } else {
                    panelFeatureState.q = true;
                    return;
                }
            }
            i2 = -2;
            panelFeatureState.n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f791d, panelFeatureState.f792e, 1002, 8519680, -3);
            layoutParams22.gravity = panelFeatureState.f790c;
            layoutParams22.windowAnimations = panelFeatureState.f793f;
            windowManager.addView(panelFeatureState.f794g, layoutParams22);
            panelFeatureState.o = true;
        }
    }

    boolean b(int i2, KeyEvent keyEvent) {
        ActionBar d2 = d();
        if (d2 != null && d2.a(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.L;
        if (panelFeatureState != null && a(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.L;
            if (panelFeatureState2 != null) {
                panelFeatureState2.n = true;
            }
            return true;
        }
        if (this.L == null) {
            PanelFeatureState a2 = a(0, true);
            b(a2, keyEvent);
            boolean a3 = a(a2, keyEvent.getKeyCode(), keyEvent, 1);
            a2.m = false;
            if (a3) {
                return true;
            }
        }
        return false;
    }

    private boolean b(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(o());
        panelFeatureState.f794g = new s(panelFeatureState.f799l);
        panelFeatureState.f790c = 81;
        return true;
    }

    private void b(boolean z) {
        androidx.appcompat.widget.n nVar = this.p;
        if (nVar != null && nVar.canShowOverflowMenu() && (!ViewConfiguration.get(this.f784i).hasPermanentMenuKey() || this.p.isOverflowMenuShowPending())) {
            Window.Callback q2 = q();
            if (this.p.isOverflowMenuShowing() && z) {
                this.p.hideOverflowMenu();
                if (this.Q) {
                    return;
                }
                q2.onPanelClosed(108, a(0, true).f797j);
                return;
            }
            if (q2 == null || this.Q) {
                return;
            }
            if (this.X && (this.Y & 1) != 0) {
                this.f785j.getDecorView().removeCallbacks(this.Z);
                this.Z.run();
            }
            PanelFeatureState a2 = a(0, true);
            androidx.appcompat.view.menu.f fVar = a2.f797j;
            if (fVar == null || a2.r || !q2.onPreparePanel(0, a2.f796i, fVar)) {
                return;
            }
            q2.onMenuOpened(108, a2.f797j);
            this.p.showOverflowMenu();
            return;
        }
        PanelFeatureState a3 = a(0, true);
        a3.q = true;
        a(a3, false);
        a(a3, (KeyEvent) null);
    }

    private boolean a(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f796i;
        if (view != null) {
            panelFeatureState.f795h = view;
            return true;
        }
        if (panelFeatureState.f797j == null) {
            return false;
        }
        if (this.r == null) {
            this.r = new t();
        }
        panelFeatureState.f795h = (View) panelFeatureState.a(this.r);
        return panelFeatureState.f795h != null;
    }

    private boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        androidx.appcompat.widget.n nVar;
        androidx.appcompat.widget.n nVar2;
        androidx.appcompat.widget.n nVar3;
        if (this.Q) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.L;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            a(panelFeatureState2, false);
        }
        Window.Callback q2 = q();
        if (q2 != null) {
            panelFeatureState.f796i = q2.onCreatePanelView(panelFeatureState.f788a);
        }
        int i2 = panelFeatureState.f788a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (nVar3 = this.p) != null) {
            nVar3.setMenuPrepared();
        }
        if (panelFeatureState.f796i == null && (!z || !(t() instanceof androidx.appcompat.app.h))) {
            if (panelFeatureState.f797j == null || panelFeatureState.r) {
                if (panelFeatureState.f797j == null && (!c(panelFeatureState) || panelFeatureState.f797j == null)) {
                    return false;
                }
                if (z && this.p != null) {
                    if (this.q == null) {
                        this.q = new i();
                    }
                    this.p.setMenu(panelFeatureState.f797j, this.q);
                }
                panelFeatureState.f797j.s();
                if (!q2.onCreatePanelMenu(panelFeatureState.f788a, panelFeatureState.f797j)) {
                    panelFeatureState.a((androidx.appcompat.view.menu.f) null);
                    if (z && (nVar = this.p) != null) {
                        nVar.setMenu(null, this.q);
                    }
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.f797j.s();
            Bundle bundle = panelFeatureState.s;
            if (bundle != null) {
                panelFeatureState.f797j.a(bundle);
                panelFeatureState.s = null;
            }
            if (!q2.onPreparePanel(0, panelFeatureState.f796i, panelFeatureState.f797j)) {
                if (z && (nVar2 = this.p) != null) {
                    nVar2.setMenu(null, this.q);
                }
                panelFeatureState.f797j.r();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f797j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.f797j.r();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.L = panelFeatureState;
        return true;
    }

    void a(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        androidx.appcompat.widget.n nVar;
        if (z && panelFeatureState.f788a == 0 && (nVar = this.p) != null && nVar.isOverflowMenuShowing()) {
            b(panelFeatureState.f797j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f784i.getSystemService("window");
        if (windowManager != null && panelFeatureState.o && (viewGroup = panelFeatureState.f794g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                a(panelFeatureState.f788a, panelFeatureState, (Menu) null);
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.f795h = null;
        panelFeatureState.q = true;
        if (this.L == panelFeatureState) {
            this.L = null;
        }
    }

    void a(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.K;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f797j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !this.Q) {
            this.f786k.a().onPanelClosed(i2, menu);
        }
    }

    PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.K;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.f797j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    protected PanelFeatureState a(int i2, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.K;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.K = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    private boolean a(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        androidx.appcompat.view.menu.f fVar;
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.m || b(panelFeatureState, keyEvent)) && (fVar = panelFeatureState.f797j) != null) {
            z = fVar.performShortcut(i2, keyEvent, i3);
        }
        if (z && (i3 & 1) == 0 && this.p == null) {
            a(panelFeatureState, true);
        }
        return z;
    }

    void b(androidx.appcompat.view.menu.f fVar) {
        if (this.J) {
            return;
        }
        this.J = true;
        this.p.dismissPopups();
        Window.Callback q2 = q();
        if (q2 != null && !this.Q) {
            q2.onPanelClosed(108, fVar);
        }
        this.J = false;
    }

    final int a(@Nullable e0 e0Var, @Nullable Rect rect) {
        int i2;
        boolean z;
        boolean z2;
        if (e0Var != null) {
            i2 = e0Var.g();
        } else {
            i2 = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.t;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.t.getLayoutParams();
            if (this.t.isShown()) {
                if (this.b0 == null) {
                    this.b0 = new Rect();
                    this.c0 = new Rect();
                }
                Rect rect2 = this.b0;
                Rect rect3 = this.c0;
                if (e0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(e0Var.e(), e0Var.g(), e0Var.f(), e0Var.d());
                }
                j0.a(this.z, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                e0 t2 = ViewCompat.t(this.z);
                int e2 = t2 == null ? 0 : t2.e();
                int f2 = t2 == null ? 0 : t2.f();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z2 = true;
                }
                if (i3 > 0 && this.B == null) {
                    this.B = new View(this.f784i);
                    this.B.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = e2;
                    layoutParams.rightMargin = f2;
                    this.z.addView(this.B, -1, layoutParams);
                } else {
                    View view = this.B;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != e2 || marginLayoutParams2.rightMargin != f2) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = e2;
                            marginLayoutParams2.rightMargin = f2;
                            this.B.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                z = this.B != null;
                if (z && this.B.getVisibility() != 0) {
                    b(this.B);
                }
                if (!this.G && z) {
                    i2 = 0;
                }
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = false;
            }
            if (z2) {
                this.t.setLayoutParams(marginLayoutParams);
            }
        }
        View view2 = this.B;
        if (view2 != null) {
            view2.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    private void b(View view) {
        int a2;
        if ((ViewCompat.v(view) & FileUtil.STREAM_BUFFER_SIZE) != 0) {
            a2 = androidx.core.content.a.a(this.f784i, a.a.c.abc_decor_view_status_guard_light);
        } else {
            a2 = androidx.core.content.a.a(this.f784i, a.a.c.abc_decor_view_status_guard);
        }
        view.setBackgroundColor(a2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int b() {
        return this.R;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(int r7, boolean r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f784i
            r1 = 0
            android.content.res.Configuration r0 = r6.a(r0, r7, r1)
            boolean r2 = r6.C()
            android.content.Context r3 = r6.f784i
            android.content.res.Resources r3 = r3.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.uiMode
            r3 = r3 & 48
            int r0 = r0.uiMode
            r0 = r0 & 48
            r4 = 1
            if (r3 == r0) goto L47
            if (r8 == 0) goto L47
            if (r2 != 0) goto L47
            boolean r8 = r6.N
            if (r8 == 0) goto L47
            boolean r8 = androidx.appcompat.app.AppCompatDelegateImpl.h0
            if (r8 != 0) goto L30
            boolean r8 = r6.O
            if (r8 == 0) goto L47
        L30:
            java.lang.Object r8 = r6.f783h
            boolean r5 = r8 instanceof android.app.Activity
            if (r5 == 0) goto L47
            android.app.Activity r8 = (android.app.Activity) r8
            boolean r8 = r8.isChild()
            if (r8 != 0) goto L47
            java.lang.Object r8 = r6.f783h
            android.app.Activity r8 = (android.app.Activity) r8
            androidx.core.app.a.d(r8)
            r8 = 1
            goto L48
        L47:
            r8 = 0
        L48:
            if (r8 != 0) goto L50
            if (r3 == r0) goto L50
            r6.a(r0, r2, r1)
            r8 = 1
        L50:
            if (r8 == 0) goto L5d
            java.lang.Object r0 = r6.f783h
            boolean r1 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r1 == 0) goto L5d
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r0.onNightModeChanged(r7)
        L5d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b(int, boolean):boolean");
    }

    private boolean a(boolean z) {
        if (this.Q) {
            return false;
        }
        int w = w();
        boolean b2 = b(a(this.f784i, w), z);
        if (w == 0) {
            d(this.f784i).e();
        } else {
            m mVar = this.V;
            if (mVar != null) {
                mVar.a();
            }
        }
        if (w == 3) {
            c(this.f784i).e();
        } else {
            m mVar2 = this.W;
            if (mVar2 != null) {
                mVar2.a();
            }
        }
        return b2;
    }

    int a(@NonNull Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                    return d(context).c();
                }
                return -1;
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    return c(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i2;
    }

    @NonNull
    private Configuration a(@NonNull Context context, int i2, @Nullable Configuration configuration) {
        int i3;
        if (i2 != 1) {
            i3 = i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32;
        } else {
            i3 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(int i2, boolean z, @Nullable Configuration configuration) {
        Resources resources = this.f784i.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            androidx.appcompat.app.g.a(resources);
        }
        int i3 = this.S;
        if (i3 != 0) {
            this.f784i.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f784i.getTheme().applyStyle(this.S, true);
            }
        }
        if (z) {
            Object obj = this.f783h;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof androidx.lifecycle.h) {
                    if (((androidx.lifecycle.h) activity).getLifecycle().a().isAtLeast(e.b.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.P) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final androidx.appcompat.app.a a() {
        return new h(this);
    }

    @NonNull
    private static Configuration a(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f2 = configuration.fontScale;
            float f3 = configuration2.fontScale;
            if (f2 != f3) {
                configuration3.fontScale = f3;
            }
            int i2 = configuration.mcc;
            int i3 = configuration2.mcc;
            if (i2 != i3) {
                configuration3.mcc = i3;
            }
            int i4 = configuration.mnc;
            int i5 = configuration2.mnc;
            if (i4 != i5) {
                configuration3.mnc = i5;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                p.a(configuration, configuration2, configuration3);
            } else if (!a.i.m.d.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i6 = configuration.touchscreen;
            int i7 = configuration2.touchscreen;
            if (i6 != i7) {
                configuration3.touchscreen = i7;
            }
            int i8 = configuration.keyboard;
            int i9 = configuration2.keyboard;
            if (i8 != i9) {
                configuration3.keyboard = i9;
            }
            int i10 = configuration.keyboardHidden;
            int i11 = configuration2.keyboardHidden;
            if (i10 != i11) {
                configuration3.keyboardHidden = i11;
            }
            int i12 = configuration.navigation;
            int i13 = configuration2.navigation;
            if (i12 != i13) {
                configuration3.navigation = i13;
            }
            int i14 = configuration.navigationHidden;
            int i15 = configuration2.navigationHidden;
            if (i14 != i15) {
                configuration3.navigationHidden = i15;
            }
            int i16 = configuration.orientation;
            int i17 = configuration2.orientation;
            if (i16 != i17) {
                configuration3.orientation = i17;
            }
            int i18 = configuration.screenLayout & 15;
            int i19 = configuration2.screenLayout;
            if (i18 != (i19 & 15)) {
                configuration3.screenLayout |= i19 & 15;
            }
            int i20 = configuration.screenLayout & 192;
            int i21 = configuration2.screenLayout;
            if (i20 != (i21 & 192)) {
                configuration3.screenLayout |= i21 & 192;
            }
            int i22 = configuration.screenLayout & 48;
            int i23 = configuration2.screenLayout;
            if (i22 != (i23 & 48)) {
                configuration3.screenLayout |= i23 & 48;
            }
            int i24 = configuration.screenLayout & 768;
            int i25 = configuration2.screenLayout;
            if (i24 != (i25 & 768)) {
                configuration3.screenLayout |= i25 & 768;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                q.a(configuration, configuration2, configuration3);
            }
            int i26 = configuration.uiMode & 15;
            int i27 = configuration2.uiMode;
            if (i26 != (i27 & 15)) {
                configuration3.uiMode |= i27 & 15;
            }
            int i28 = configuration.uiMode & 48;
            int i29 = configuration2.uiMode;
            if (i28 != (i29 & 48)) {
                configuration3.uiMode |= i29 & 48;
            }
            int i30 = configuration.screenWidthDp;
            int i31 = configuration2.screenWidthDp;
            if (i30 != i31) {
                configuration3.screenWidthDp = i31;
            }
            int i32 = configuration.screenHeightDp;
            int i33 = configuration2.screenHeightDp;
            if (i32 != i33) {
                configuration3.screenHeightDp = i33;
            }
            int i34 = configuration.smallestScreenWidthDp;
            int i35 = configuration2.smallestScreenWidthDp;
            if (i34 != i35) {
                configuration3.smallestScreenWidthDp = i35;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                o.a(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }
}
