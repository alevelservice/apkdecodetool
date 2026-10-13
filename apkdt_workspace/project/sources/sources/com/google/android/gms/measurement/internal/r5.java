package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13186e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13187f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f13188g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ Bundle f13189h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ boolean f13190i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ boolean f13191j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ boolean f13192k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ String f13193l;
    private final /* synthetic */ p5 m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r5(p5 p5Var, String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.m = p5Var;
        this.f13186e = str;
        this.f13187f = str2;
        this.f13188g = j2;
        this.f13189h = bundle;
        this.f13190i = z;
        this.f13191j = z2;
        this.f13192k = z3;
        this.f13193l = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.m.a(this.f13186e, this.f13187f, this.f13188g, this.f13189h, this.f13190i, this.f13191j, this.f13192k, this.f13193l);
    }
}
