package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f12052i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f12053j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ Object f12054k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ boolean f12055l;
    private final /* synthetic */ zzz m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(zzz zzzVar, String str, String str2, Object obj, boolean z) {
        super(zzzVar);
        this.m = zzzVar;
        this.f12052i = str;
        this.f12053j = str2;
        this.f12054k = obj;
        this.f12055l = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.m.f12266i;
        zzkVar.setUserProperty(this.f12052i, this.f12053j, ObjectWrapper.wrap(this.f12054k), this.f12055l, this.f12267e);
    }
}
