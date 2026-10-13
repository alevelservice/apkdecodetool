package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* loaded from: classes.dex */
final class s extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f12078i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ Bundle f12079j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ zzz.b f12080k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(zzz.b bVar, Activity activity, Bundle bundle) {
        super(zzz.this);
        this.f12080k = bVar;
        this.f12078i = activity;
        this.f12079j = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = zzz.this.f12266i;
        zzkVar.onActivityCreated(ObjectWrapper.wrap(this.f12078i), this.f12079j, this.f12268f);
    }
}
