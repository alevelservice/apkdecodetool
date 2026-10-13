package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f11754i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f11755j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ Bundle f11756k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ zzz f11757l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(zzz zzzVar, String str, String str2, Bundle bundle) {
        super(zzzVar);
        this.f11757l = zzzVar;
        this.f11754i = str;
        this.f11755j = str2;
        this.f11756k = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11757l.f12266i;
        zzkVar.clearConditionalUserProperty(this.f11754i, this.f11755j, this.f11756k);
    }
}
