package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class bq1 implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long t = ((Long) mu1.e().a(aw1.a1)).longValue();

    /* renamed from: e, reason: collision with root package name */
    private final Context f5842e;

    /* renamed from: f, reason: collision with root package name */
    private Application f5843f;

    /* renamed from: g, reason: collision with root package name */
    private final WindowManager f5844g;

    /* renamed from: h, reason: collision with root package name */
    private final PowerManager f5845h;

    /* renamed from: i, reason: collision with root package name */
    private final KeyguardManager f5846i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    private BroadcastReceiver f5847j;

    /* renamed from: k, reason: collision with root package name */
    private WeakReference<ViewTreeObserver> f5848k;

    /* renamed from: l, reason: collision with root package name */
    private WeakReference<View> f5849l;
    private eq1 m;
    private vc n = new vc(t);
    private boolean o = false;
    private int p = -1;
    private final HashSet<fq1> q = new HashSet<>();
    private final DisplayMetrics r;
    private final Rect s;

    public bq1(Context context, View view) {
        this.f5842e = context.getApplicationContext();
        this.f5844g = (WindowManager) context.getSystemService("window");
        this.f5845h = (PowerManager) this.f5842e.getSystemService("power");
        this.f5846i = (KeyguardManager) context.getSystemService("keyguard");
        Context context2 = this.f5842e;
        if (context2 instanceof Application) {
            this.f5843f = (Application) context2;
            this.m = new eq1((Application) context2, this);
        }
        this.r = context.getResources().getDisplayMetrics();
        this.s = new Rect();
        this.s.right = this.f5844g.getDefaultDisplay().getWidth();
        this.s.bottom = this.f5844g.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f5849l;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            b(view2);
        }
        this.f5849l = new WeakReference<>(view);
        if (view != null) {
            if (com.google.android.gms.ads.internal.n.e().a(view)) {
                a(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final void c() {
        wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aq1

            /* renamed from: e, reason: collision with root package name */
            private final bq1 f5647e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5647e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5647e.b();
            }
        });
    }

    public final void a(fq1 fq1Var) {
        this.q.add(fq1Var);
        a(3);
    }

    public final void b(fq1 fq1Var) {
        this.q.remove(fq1Var);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        a(3);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(3);
        c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        a(2);
        c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.p = -1;
        a(view);
        a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.p = -1;
        a(3);
        c();
        b(view);
    }

    private final int b(int i2) {
        return (int) (i2 / this.r.density);
    }

    private final List<Rect> c(View view) {
        boolean z;
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (Build.VERSION.SDK_INT >= 16) {
                    z = view2.isScrollContainer();
                } else {
                    if (!(view2 instanceof ScrollView) && !(view2 instanceof ListView)) {
                        z = false;
                    }
                    z = true;
                }
                if (z && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(a(rect));
                }
            }
            return arrayList;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    private final void a(Activity activity, int i2) {
        Window window;
        if (this.f5849l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f5849l.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.p = i2;
    }

    private final void b(View view) {
        try {
            if (this.f5848k != null) {
                ViewTreeObserver viewTreeObserver = this.f5848k.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f5848k = null;
            }
        } catch (Exception e2) {
            qd.b("Error while unregistering listeners from the last ViewTreeObserver.", e2);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e3) {
            qd.b("Error while unregistering listeners from the ViewTreeObserver.", e3);
        }
        if (this.f5847j != null) {
            try {
                com.google.android.gms.ads.internal.n.x().a(this.f5842e, this.f5847j);
            } catch (IllegalStateException e4) {
                qd.b("Failed trying to unregister the receiver", e4);
            } catch (Exception e5) {
                com.google.android.gms.ads.internal.n.g().a(e5, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f5847j = null;
        }
        Application application = this.f5843f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.m);
            } catch (Exception e6) {
                qd.b("Error registering activity lifecycle callbacks.", e6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2) {
        WeakReference<View> weakReference;
        boolean z;
        boolean z2;
        List<Rect> emptyList;
        if (this.q.size() == 0 || (weakReference = this.f5849l) == null) {
            return;
        }
        View view = weakReference.get();
        boolean z3 = i2 == 1;
        boolean z4 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect2);
            boolean localVisibleRect = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e2) {
                qd.b("Failure getting view location.", e2);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            z = globalVisibleRect;
            z2 = localVisibleRect;
        } else {
            z = false;
            z2 = false;
        }
        if (((Boolean) mu1.e().a(aw1.d1)).booleanValue() && view != null) {
            emptyList = c(view);
        } else {
            emptyList = Collections.emptyList();
        }
        List<Rect> list = emptyList;
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i3 = this.p;
        if (i3 != -1) {
            windowVisibility = i3;
        }
        boolean z5 = !z4 && com.google.android.gms.ads.internal.n.c().a(view, this.f5845h, this.f5846i) && z && z2 && windowVisibility == 0;
        if (z3 && !this.n.a() && z5 == this.o) {
            return;
        }
        if (z5 || this.o || i2 != 1) {
            cq1 cq1Var = new cq1(com.google.android.gms.ads.internal.n.j().c(), this.f5845h.isScreenOn(), view != null && com.google.android.gms.ads.internal.n.e().a(view), view != null ? view.getWindowVisibility() : 8, a(this.s), a(rect), a(rect2), z, a(rect3), z2, a(rect4), this.r.density, z5, list);
            Iterator<fq1> it = this.q.iterator();
            while (it.hasNext()) {
                it.next().zza(cq1Var);
            }
            this.o = z5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b() {
        a(3);
    }

    private final Rect a(Rect rect) {
        return new Rect(b(rect.left), b(rect.top), b(rect.right), b(rect.bottom));
    }

    private final void a(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f5848k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f5847j == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f5847j = new dq1(this);
            com.google.android.gms.ads.internal.n.x().a(this.f5842e, this.f5847j, intentFilter);
        }
        Application application = this.f5843f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.m);
            } catch (Exception e2) {
                qd.b("Error registering activity lifecycle callbacks.", e2);
            }
        }
    }

    public final void a(long j2) {
        this.n.a(j2);
    }

    public final void a() {
        this.n.a(t);
    }
}
