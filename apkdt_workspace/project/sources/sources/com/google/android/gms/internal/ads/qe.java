package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class qe {

    /* renamed from: e, reason: collision with root package name */
    private final WeakReference<View> f8879e;

    public qe(View view) {
        this.f8879e = new WeakReference<>(view);
    }

    private final ViewTreeObserver c() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f8879e.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void a() {
        ViewTreeObserver c2 = c();
        if (c2 != null) {
            a(c2);
        }
    }

    protected abstract void a(ViewTreeObserver viewTreeObserver);

    public final void b() {
        ViewTreeObserver c2 = c();
        if (c2 != null) {
            b(c2);
        }
    }

    protected abstract void b(ViewTreeObserver viewTreeObserver);
}
