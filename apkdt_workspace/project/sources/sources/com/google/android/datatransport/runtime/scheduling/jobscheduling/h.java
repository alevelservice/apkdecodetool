package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final m f4412e;

    /* renamed from: f, reason: collision with root package name */
    private final e.i.b.a.i.m f4413f;

    /* renamed from: g, reason: collision with root package name */
    private final int f4414g;

    /* renamed from: h, reason: collision with root package name */
    private final Runnable f4415h;

    private h(m mVar, e.i.b.a.i.m mVar2, int i2, Runnable runnable) {
        this.f4412e = mVar;
        this.f4413f = mVar2;
        this.f4414g = i2;
        this.f4415h = runnable;
    }

    public static Runnable a(m mVar, e.i.b.a.i.m mVar2, int i2, Runnable runnable) {
        return new h(mVar, mVar2, i2, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        m.a(this.f4412e, this.f4413f, this.f4414g, this.f4415h);
    }
}
