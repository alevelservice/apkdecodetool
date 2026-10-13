package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzl f11897i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f11898j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(zzz zzzVar, zzl zzlVar) {
        super(zzzVar);
        this.f11898j = zzzVar;
        this.f11897i = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11898j.f12266i;
        zzkVar.getCurrentScreenClass(this.f11897i);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11897i.zzb((Bundle) null);
    }
}
