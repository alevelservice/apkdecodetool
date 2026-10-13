package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class r4 implements Callable<List<zzq>> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13182e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13183f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13184g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzfk f13185h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r4(zzfk zzfkVar, zzn zznVar, String str, String str2) {
        this.f13185h = zzfkVar;
        this.f13182e = zznVar;
        this.f13183f = str;
        this.f13184g = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzq> call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13185h.f13381e;
        g8Var.m();
        g8Var2 = this.f13185h.f13381e;
        return g8Var2.g().b(this.f13182e.f13391e, this.f13183f, this.f13184g);
    }
}
