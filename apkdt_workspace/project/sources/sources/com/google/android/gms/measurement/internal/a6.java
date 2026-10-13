package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f12762e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12763f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f12764g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ String f12765h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ boolean f12766i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ p5 f12767j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a6(p5 p5Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f12767j = p5Var;
        this.f12762e = atomicReference;
        this.f12763f = str;
        this.f12764g = str2;
        this.f12765h = str3;
        this.f12766i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12767j.f12908a.x().a(this.f12762e, this.f12763f, this.f12764g, this.f12765h, this.f12766i);
    }
}
