package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11962i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzl f11963j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ zzz f11964k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(zzz zzzVar, String str, zzl zzlVar) {
        super(zzzVar);
        this.f11964k = zzzVar;
        this.f11962i = str;
        this.f11963j = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11964k.f12266i;
        zzkVar.getMaxUserProperties(this.f11962i, this.f11963j);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11963j.zzb((Bundle) null);
    }
}
