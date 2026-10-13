package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11826i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f11827j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(zzz zzzVar, String str) {
        super(zzzVar);
        this.f11827j = zzzVar;
        this.f11826i = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11827j.f12266i;
        zzkVar.beginAdUnitExposure(this.f11826i, this.f12268f);
    }
}
