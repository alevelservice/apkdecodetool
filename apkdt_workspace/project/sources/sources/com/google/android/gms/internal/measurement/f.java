package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzl f11845i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f11846j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(zzz zzzVar, zzl zzlVar) {
        super(zzzVar);
        this.f11846j = zzzVar;
        this.f11845i = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11846j.f12266i;
        zzkVar.getGmpAppId(this.f11845i);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11845i.zzb((Bundle) null);
    }
}
