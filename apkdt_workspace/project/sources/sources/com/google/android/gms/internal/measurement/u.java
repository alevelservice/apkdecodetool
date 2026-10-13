package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* loaded from: classes.dex */
final class u extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f12119i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz.b f12120j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(zzz.b bVar, Activity activity) {
        super(zzz.this);
        this.f12120j = bVar;
        this.f12119i = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = zzz.this.f12266i;
        zzkVar.onActivityResumed(ObjectWrapper.wrap(this.f12119i), this.f12268f);
    }
}
