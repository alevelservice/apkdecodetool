package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13321e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13322f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13323g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ String f13324h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ p5 f13325i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x5(p5 p5Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f13325i = p5Var;
        this.f13321e = atomicReference;
        this.f13322f = str;
        this.f13323g = str2;
        this.f13324h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13325i.f12908a.x().a(this.f13321e, this.f13322f, this.f13323g, this.f13324h);
    }
}
