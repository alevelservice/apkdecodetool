package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class p4 implements Callable<List<o8>> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13140e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13141f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13142g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzfk f13143h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(zzfk zzfkVar, zzn zznVar, String str, String str2) {
        this.f13143h = zzfkVar;
        this.f13140e = zznVar;
        this.f13141f = str;
        this.f13142g = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<o8> call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13143h.f13381e;
        g8Var.m();
        g8Var2 = this.f13143h.f13381e;
        return g8Var2.g().a(this.f13140e.f13391e, this.f13141f, this.f13142g);
    }
}
