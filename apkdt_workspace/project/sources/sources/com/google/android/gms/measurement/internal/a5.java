package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class a5 implements Callable<List<o8>> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f12760e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f12761f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(zzfk zzfkVar, zzn zznVar) {
        this.f12761f = zzfkVar;
        this.f12760e = zznVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<o8> call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f12761f.f13381e;
        g8Var.m();
        g8Var2 = this.f12761f.f13381e;
        return g8Var2.g().a(this.f12760e.f13391e);
    }
}
