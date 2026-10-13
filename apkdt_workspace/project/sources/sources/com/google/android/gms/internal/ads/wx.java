package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wx implements tx {

    /* renamed from: a, reason: collision with root package name */
    private final List<String> f10231a;

    /* renamed from: b, reason: collision with root package name */
    private final iv0 f10232b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f10233c;

    public wx(ns0 ns0Var, iv0 iv0Var) {
        this.f10231a = ns0Var.n;
        this.f10232b = iv0Var;
    }

    @Override // com.google.android.gms.internal.ads.tx
    public final void a() {
        if (this.f10233c) {
            return;
        }
        this.f10232b.a(this.f10231a);
        this.f10233c = true;
    }
}
