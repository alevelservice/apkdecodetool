package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11732i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f11733j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ zzl f11734k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ zzz f11735l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(zzz zzzVar, String str, String str2, zzl zzlVar) {
        super(zzzVar);
        this.f11735l = zzzVar;
        this.f11732i = str;
        this.f11733j = str2;
        this.f11734k = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11735l.f12266i;
        zzkVar.getConditionalUserProperties(this.f11732i, this.f11733j, this.f11734k);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11734k.zzb((Bundle) null);
    }
}
