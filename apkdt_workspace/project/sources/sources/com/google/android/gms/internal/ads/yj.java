package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class yj implements View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ t8 f10569e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ tj f10570f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yj(tj tjVar, t8 t8Var) {
        this.f10570f = tjVar;
        this.f10569e = t8Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f10570f.a(view, this.f10569e, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
