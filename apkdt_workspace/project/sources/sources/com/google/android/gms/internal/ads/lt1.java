package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.w1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lt1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f7975e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f7976f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ uq1 f7977g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lt1(uq1 uq1Var, String str, long j2) {
        this.f7977g = uq1Var;
        this.f7975e = str;
        this.f7976f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w1.a aVar;
        w1.a aVar2;
        aVar = this.f7977g.f9797e;
        aVar.a(this.f7975e, this.f7976f);
        aVar2 = this.f7977g.f9797e;
        aVar2.a(this.f7977g.toString());
    }
}
