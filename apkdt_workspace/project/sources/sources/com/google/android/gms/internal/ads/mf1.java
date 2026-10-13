package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mf1 implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final Handler q = new Handler(Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    private final Context f8103e;

    /* renamed from: f, reason: collision with root package name */
    private Application f8104f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private final PowerManager f8105g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private final KeyguardManager f8106h;

    /* renamed from: i, reason: collision with root package name */
    private final cf1 f8107i;

    /* renamed from: j, reason: collision with root package name */
    private BroadcastReceiver f8108j;

    /* renamed from: k, reason: collision with root package name */
    private WeakReference<ViewTreeObserver> f8109k;

    /* renamed from: l, reason: collision with root package name */
    private WeakReference<View> f8110l;
    private x51 m;
    private byte n = -1;
    private int o = -1;
    private long p = -3;

    public mf1(cf1 cf1Var, View view) {
        this.f8107i = cf1Var;
        this.f8103e = cf1Var.f5992a;
        this.f8105g = (PowerManager) this.f8103e.getSystemService("power");
        this.f8106h = (KeyguardManager) this.f8103e.getSystemService("keyguard");
        Context context = this.f8103e;
        if (context instanceof Application) {
            this.f8104f = (Application) context;
            this.m = new x51((Application) context, this);
        }
        a(view);
    }

    private final void b() {
        q.post(new pf1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0066, code lost:
    
        if (r7 == false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            r9 = this;
            java.lang.ref.WeakReference<android.view.View> r0 = r9.f8110l
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            r1 = -1
            r2 = -3
            if (r0 != 0) goto L15
            r9.p = r2
            r9.n = r1
            return
        L15:
            int r4 = r0.getVisibility()
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L1f
            r4 = 1
            goto L20
        L1f:
            r4 = 0
        L20:
            boolean r7 = r0.isShown()
            if (r7 != 0) goto L29
            r4 = r4 | 2
            byte r4 = (byte) r4
        L29:
            android.os.PowerManager r7 = r9.f8105g
            if (r7 == 0) goto L36
            boolean r7 = r7.isScreenOn()
            if (r7 != 0) goto L36
            r4 = r4 | 4
            byte r4 = (byte) r4
        L36:
            com.google.android.gms.internal.ads.cf1 r7 = r9.f8107i
            boolean r7 = r7.k()
            if (r7 != 0) goto L6a
            android.app.KeyguardManager r7 = r9.f8106h
            if (r7 == 0) goto L69
            boolean r7 = r7.inKeyguardRestrictedInputMode()
            if (r7 == 0) goto L69
            android.app.Activity r7 = com.google.android.gms.internal.ads.kf1.a(r0)
            if (r7 == 0) goto L65
            android.view.Window r7 = r7.getWindow()
            if (r7 != 0) goto L56
            r7 = 0
            goto L5a
        L56:
            android.view.WindowManager$LayoutParams r7 = r7.getAttributes()
        L5a:
            if (r7 == 0) goto L65
            int r7 = r7.flags
            r8 = 524288(0x80000, float:7.34684E-40)
            r7 = r7 & r8
            if (r7 == 0) goto L65
            r7 = 1
            goto L66
        L65:
            r7 = 0
        L66:
            if (r7 == 0) goto L69
            goto L6a
        L69:
            r5 = 0
        L6a:
            if (r5 != 0) goto L6f
            r4 = r4 | 8
            byte r4 = (byte) r4
        L6f:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getGlobalVisibleRect(r5)
            if (r5 != 0) goto L7d
            r4 = r4 | 16
            byte r4 = (byte) r4
        L7d:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getLocalVisibleRect(r5)
            if (r5 != 0) goto L8b
            r4 = r4 | 32
            byte r4 = (byte) r4
        L8b:
            int r0 = r0.getWindowVisibility()
            int r5 = r9.o
            if (r5 == r1) goto L94
            r0 = r5
        L94:
            if (r0 == 0) goto L99
            r0 = r4 | 64
            byte r4 = (byte) r0
        L99:
            byte r0 = r9.n
            if (r0 == r4) goto Lad
            r9.n = r4
            byte r0 = r9.n
            if (r0 != 0) goto La8
            long r0 = android.os.SystemClock.elapsedRealtime()
            goto Lab
        La8:
            long r0 = (long) r0
            long r0 = r2 - r0
        Lab:
            r9.p = r0
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mf1.c():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view) {
        WeakReference<View> weakReference = this.f8110l;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            c(view2);
        }
        this.f8110l = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                b(view);
            }
            view.addOnAttachStateChangeListener(this);
            this.p = -2L;
            return;
        }
        this.p = -3L;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        c();
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.o = -1;
        b(view);
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.o = -1;
        c();
        b();
        c(view);
    }

    private final void b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f8109k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f8108j == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f8108j = new of1(this);
            this.f8103e.registerReceiver(this.f8108j, intentFilter);
        }
        Application application = this.f8104f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.m);
            } catch (Exception unused) {
            }
        }
    }

    private final void a(Activity activity, int i2) {
        Window window;
        if (this.f8110l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f8110l.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.o = i2;
    }

    public final long a() {
        if (this.p <= -2 && this.f8110l.get() == null) {
            this.p = -3L;
        }
        return this.p;
    }

    private final void c(View view) {
        try {
            if (this.f8109k != null) {
                ViewTreeObserver viewTreeObserver = this.f8109k.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f8109k = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.f8108j;
        if (broadcastReceiver != null) {
            try {
                this.f8103e.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.f8108j = null;
        }
        Application application = this.f8104f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.m);
            } catch (Exception unused4) {
            }
        }
    }
}
