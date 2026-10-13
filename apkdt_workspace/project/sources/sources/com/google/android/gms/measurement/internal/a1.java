package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f12743e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f12744f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ a f12745g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(a aVar, String str, long j2) {
        this.f12745g = aVar;
        this.f12743e = str;
        this.f12744f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12745g.c(this.f12743e, this.f12744f);
    }
}
