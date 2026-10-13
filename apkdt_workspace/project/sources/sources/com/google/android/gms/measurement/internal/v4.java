package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class v4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzai f13276e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13277f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13278g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v4(zzfk zzfkVar, zzai zzaiVar, String str) {
        this.f13278g = zzfkVar;
        this.f13276e = zzaiVar;
        this.f13277f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13278g.f13381e;
        g8Var.m();
        g8Var2 = this.f13278g.f13381e;
        g8Var2.a(this.f13276e, this.f13277f);
    }
}
