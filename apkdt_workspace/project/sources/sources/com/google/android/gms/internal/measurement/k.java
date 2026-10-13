package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k extends zzz.a {

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f11939j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ Object f11940k;
    private final /* synthetic */ zzz n;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ int f11938i = 5;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ Object f11941l = null;
    private final /* synthetic */ Object m = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(zzz zzzVar, boolean z, int i2, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.n = zzzVar;
        this.f11939j = str;
        this.f11940k = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.n.f12266i;
        zzkVar.logHealthData(this.f11938i, this.f11939j, ObjectWrapper.wrap(this.f11940k), ObjectWrapper.wrap(this.f11941l), ObjectWrapper.wrap(this.m));
    }
}
