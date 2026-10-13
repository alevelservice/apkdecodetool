package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzl f11927i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz f11928j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(zzz zzzVar, zzl zzlVar) {
        super(zzzVar);
        this.f11928j = zzzVar;
        this.f11927i = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11928j.f12266i;
        zzkVar.getCurrentScreenName(this.f11927i);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11927i.zzb((Bundle) null);
    }
}
