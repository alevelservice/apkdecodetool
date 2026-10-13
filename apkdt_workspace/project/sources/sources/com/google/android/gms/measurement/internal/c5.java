package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class c5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f12801e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12802f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f12803g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ long f12804h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzfk f12805i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c5(zzfk zzfkVar, String str, String str2, String str3, long j2) {
        this.f12805i = zzfkVar;
        this.f12801e = str;
        this.f12802f = str2;
        this.f12803g = str3;
        this.f12804h = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        String str = this.f12801e;
        if (str != null) {
            q6 q6Var = new q6(this.f12803g, str, this.f12804h);
            g8Var = this.f12805i.f13381e;
            g8Var.o().y().a(this.f12802f, q6Var);
        } else {
            g8Var2 = this.f12805i.f13381e;
            g8Var2.o().y().a(this.f12802f, (q6) null);
        }
    }
}
