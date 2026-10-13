package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hd {

    /* renamed from: a, reason: collision with root package name */
    private final View f7037a;

    /* renamed from: b, reason: collision with root package name */
    private Activity f7038b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f7039c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f7040d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f7041e;

    /* renamed from: f, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f7042f;

    public hd(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f7038b = activity;
        this.f7037a = view;
        this.f7042f = onGlobalLayoutListener;
    }

    private final void e() {
        ViewTreeObserver b2;
        if (this.f7039c) {
            return;
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f7042f;
        if (onGlobalLayoutListener != null) {
            Activity activity = this.f7038b;
            if (activity != null && (b2 = b(activity)) != null) {
                b2.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            com.google.android.gms.ads.internal.n.z();
            pe.a(this.f7037a, this.f7042f);
        }
        this.f7039c = true;
    }

    private final void f() {
        ViewTreeObserver b2;
        Activity activity = this.f7038b;
        if (activity != null && this.f7039c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f7042f;
            if (onGlobalLayoutListener != null && (b2 = b(activity)) != null) {
                com.google.android.gms.ads.internal.n.e();
                b2.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f7039c = false;
        }
    }

    public final void a(Activity activity) {
        this.f7038b = activity;
    }

    public final void b() {
        this.f7040d = false;
        f();
    }

    public final void c() {
        this.f7041e = true;
        if (this.f7040d) {
            e();
        }
    }

    public final void d() {
        this.f7041e = false;
        f();
    }

    public final void a() {
        this.f7040d = true;
        if (this.f7041e) {
            e();
        }
    }

    private static ViewTreeObserver b(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }
}
