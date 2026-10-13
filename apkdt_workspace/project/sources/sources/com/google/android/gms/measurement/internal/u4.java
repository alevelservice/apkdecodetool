package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class u4 implements Callable<List<zzq>> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13248e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13249f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13250g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzfk f13251h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u4(zzfk zzfkVar, String str, String str2, String str3) {
        this.f13251h = zzfkVar;
        this.f13248e = str;
        this.f13249f = str2;
        this.f13250g = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzq> call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13251h.f13381e;
        g8Var.m();
        g8Var2 = this.f13251h.f13381e;
        return g8Var2.g().b(this.f13248e, this.f13249f, this.f13250g);
    }
}
