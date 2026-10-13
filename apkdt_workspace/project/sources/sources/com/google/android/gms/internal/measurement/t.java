package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* loaded from: classes.dex */
final class t extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f12108i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzz.b f12109j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(zzz.b bVar, Activity activity) {
        super(zzz.this);
        this.f12109j = bVar;
        this.f12108i = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = zzz.this.f12266i;
        zzkVar.onActivityPaused(ObjectWrapper.wrap(this.f12108i), this.f12268f);
    }
}
