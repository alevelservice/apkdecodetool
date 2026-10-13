package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class mi implements View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ t8 f8141e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ii f8142f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mi(ii iiVar, t8 t8Var) {
        this.f8142f = iiVar;
        this.f8141e = t8Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f8142f.a(view, this.f8141e, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
