package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13167e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13168f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Object f13169g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ long f13170h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ p5 f13171i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q5(p5 p5Var, String str, String str2, Object obj, long j2) {
        this.f13171i = p5Var;
        this.f13167e = str;
        this.f13168f = str2;
        this.f13169g = obj;
        this.f13170h = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13171i.a(this.f13167e, this.f13168f, this.f13169g, this.f13170h);
    }
}
