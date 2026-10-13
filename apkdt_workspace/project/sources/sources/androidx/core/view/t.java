package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;

/* compiled from: OneShotPreDrawListener.java */
/* loaded from: classes.dex */
public final class t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    private final View f1987e;

    /* renamed from: f, reason: collision with root package name */
    private ViewTreeObserver f1988f;

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f1989g;

    private t(View view, Runnable runnable) {
        this.f1987e = view;
        this.f1988f = view.getViewTreeObserver();
        this.f1989g = runnable;
    }

    @NonNull
    public static t a(@NonNull View view, @NonNull Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable != null) {
            t tVar = new t(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(tVar);
            view.addOnAttachStateChangeListener(tVar);
            return tVar;
        }
        throw new NullPointerException("runnable == null");
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.f1989g.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f1988f = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    public void a() {
        if (this.f1988f.isAlive()) {
            this.f1988f.removeOnPreDrawListener(this);
        } else {
            this.f1987e.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f1987e.removeOnAttachStateChangeListener(this);
    }
}
