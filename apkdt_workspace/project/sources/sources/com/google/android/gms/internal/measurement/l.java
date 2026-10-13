package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11950i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f11951j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ boolean f11952k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ zzl f11953l;
    private final /* synthetic */ zzz m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(zzz zzzVar, String str, String str2, boolean z, zzl zzlVar) {
        super(zzzVar);
        this.m = zzzVar;
        this.f11950i = str;
        this.f11951j = str2;
        this.f11952k = z;
        this.f11953l = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.m.f12266i;
        zzkVar.getUserProperties(this.f11950i, this.f11951j, this.f11952k, this.f11953l);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11953l.zzb((Bundle) null);
    }
}
