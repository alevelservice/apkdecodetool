package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ei0 implements yh0<py> {

    /* renamed from: a, reason: collision with root package name */
    private final lz f6439a;

    public ei0(Context context, lz lzVar) {
        this.f6439a = lzVar;
    }

    @Override // com.google.android.gms.internal.ads.yh0
    public final /* synthetic */ py a(vs0 vs0Var, ns0 ns0Var, View view, bi0 bi0Var) {
        ry a2 = this.f6439a.a(new lr(vs0Var, ns0Var, null), new gi0(this, di0.f6227a));
        bi0Var.a(new fi0(this, a2));
        return a2.h();
    }
}
