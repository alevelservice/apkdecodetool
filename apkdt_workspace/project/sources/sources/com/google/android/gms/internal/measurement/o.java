package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Long f12003i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f12004j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ String f12005k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ Bundle f12006l;
    private final /* synthetic */ boolean m;
    private final /* synthetic */ boolean n;
    private final /* synthetic */ zzz o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(zzz zzzVar, Long l2, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzzVar);
        this.o = zzzVar;
        this.f12003i = l2;
        this.f12004j = str;
        this.f12005k = str2;
        this.f12006l = bundle;
        this.m = z;
        this.n = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        Long l2 = this.f12003i;
        long longValue = l2 == null ? this.f12267e : l2.longValue();
        zzkVar = this.o.f12266i;
        zzkVar.logEvent(this.f12004j, this.f12005k, this.f12006l, this.m, this.n, longValue);
    }
}
