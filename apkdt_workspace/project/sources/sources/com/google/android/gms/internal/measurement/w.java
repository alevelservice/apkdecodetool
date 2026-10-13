package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* loaded from: classes.dex */
final class w extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f12161i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz.b f12162j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(zzz.b bVar, Activity activity) {
        super(zzz.this);
        this.f12162j = bVar;
        this.f12161i = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = zzz.this.f12266i;
        zzkVar.onActivityStopped(ObjectWrapper.wrap(this.f12161i), this.f12268f);
    }
}
