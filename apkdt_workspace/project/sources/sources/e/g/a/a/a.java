package e.g.a.a;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import g.a.c.a.d;
import g.a.c.a.m;

/* compiled from: KeyboardVisibilityPlugin.java */
/* loaded from: classes.dex */
public class a implements d.InterfaceC0212d, Application.ActivityLifecycleCallbacks, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: e, reason: collision with root package name */
    View f17641e = null;

    /* renamed from: f, reason: collision with root package name */
    d.b f17642f = null;

    /* renamed from: g, reason: collision with root package name */
    boolean f17643g;

    a(m.d dVar) {
    }

    private void a() {
        View view = this.f17641e;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f17641e = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        try {
            this.f17641e = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
            this.f17641e.getViewTreeObserver().addOnGlobalLayoutListener(this);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        a();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Rect rect = new Rect();
        View view = this.f17641e;
        if (view != null) {
            view.getWindowVisibleDisplayFrame(rect);
            double height = rect.height();
            double height2 = this.f17641e.getRootView().getHeight();
            Double.isNaN(height);
            Double.isNaN(height2);
            boolean z = height / height2 < 0.85d;
            if (z != this.f17643g) {
                this.f17643g = z;
                d.b bVar = this.f17642f;
                if (bVar != null) {
                    bVar.a(Integer.valueOf(this.f17643g ? 1 : 0));
                }
            }
        }
    }

    public static void a(m.d dVar) {
        d dVar2 = new d(dVar.d(), "github.com/adee42/flutter_keyboard_visibility");
        a aVar = new a(dVar);
        dVar2.a(aVar);
        dVar.b().getApplication().registerActivityLifecycleCallbacks(aVar);
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj, d.b bVar) {
        this.f17642f = bVar;
        if (this.f17643g) {
            bVar.a(1);
        }
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj) {
        this.f17642f = null;
    }
}
