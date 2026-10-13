package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Bundle f11981i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzl f11982j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ zzz f11983k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(zzz zzzVar, Bundle bundle, zzl zzlVar) {
        super(zzzVar);
        this.f11983k = zzzVar;
        this.f11981i = bundle;
        this.f11982j = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11983k.f12266i;
        zzkVar.performAction(this.f11981i, this.f11982j, this.f12267e);
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    protected final void b() {
        this.f11982j.zzb((Bundle) null);
    }
}
