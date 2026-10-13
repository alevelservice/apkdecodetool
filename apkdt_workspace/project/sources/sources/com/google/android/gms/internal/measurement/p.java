package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Bundle f12032i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f12033j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(zzz zzzVar, Bundle bundle) {
        super(zzzVar);
        this.f12033j = zzzVar;
        this.f12032i = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f12033j.f12266i;
        zzkVar.setConditionalUserProperty(this.f12032i, this.f12267e);
    }
}
