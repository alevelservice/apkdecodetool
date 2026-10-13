package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f11783i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f11784j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ String f11785k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ zzz f11786l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(zzz zzzVar, Activity activity, String str, String str2) {
        super(zzzVar);
        this.f11786l = zzzVar;
        this.f11783i = activity;
        this.f11784j = str;
        this.f11785k = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = this.f11786l.f12266i;
        zzkVar.setCurrentScreen(ObjectWrapper.wrap(this.f11783i), this.f11784j, this.f11785k, this.f12267e);
    }
}
