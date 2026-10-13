package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class y4 implements Callable<byte[]> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzai f13344e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13345f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13346g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y4(zzfk zzfkVar, zzai zzaiVar, String str) {
        this.f13346g = zzfkVar;
        this.f13344e = zzaiVar;
        this.f13345f = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13346g.f13381e;
        g8Var.m();
        g8Var2 = this.f13346g.f13381e;
        g8Var2.j().a(this.f13344e, this.f13345f);
        throw null;
    }
}
