package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f12854e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12855f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Object f12856g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ Object f12857h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Object f12858i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ f3 f12859j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3(f3 f3Var, int i2, String str, Object obj, Object obj2, Object obj3) {
        this.f12859j = f3Var;
        this.f12854e = i2;
        this.f12855f = str;
        this.f12856g = obj;
        this.f12857h = obj2;
        this.f12858i = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c2;
        long j2;
        char c3;
        long j3;
        o3 e2 = this.f12859j.f12908a.e();
        if (!e2.l()) {
            this.f12859j.a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c2 = this.f12859j.f12896c;
        if (c2 == 0) {
            if (this.f12859j.d().l()) {
                f3 f3Var = this.f12859j;
                f3Var.zzae();
                f3Var.f12896c = 'C';
            } else {
                f3 f3Var2 = this.f12859j;
                f3Var2.zzae();
                f3Var2.f12896c = 'c';
            }
        }
        j2 = this.f12859j.f12897d;
        if (j2 < 0) {
            f3 f3Var3 = this.f12859j;
            f3Var3.f12897d = f3Var3.d().k();
        }
        char charAt = "01VDIWEA?".charAt(this.f12854e);
        c3 = this.f12859j.f12896c;
        j3 = this.f12859j.f12897d;
        String a2 = f3.a(true, this.f12855f, this.f12856g, this.f12857h, this.f12858i);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c3);
        sb.append(j3);
        sb.append(":");
        sb.append(a2);
        String sb2 = sb.toString();
        if (sb2.length() > 1024) {
            sb2 = this.f12855f.substring(0, 1024);
        }
        e2.f13113d.a(sb2, 1L);
    }
}
