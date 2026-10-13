package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11807i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f11808j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(zzz zzzVar, String str) {
        super(zzzVar);
        this.f11808j = zzzVar;
        this.f11807i = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11808j.f12266i;
        zzkVar.endAdUnitExposure(this.f11807i, this.f12268f);
    }
}
