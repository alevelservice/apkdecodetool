package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzz;

/* loaded from: classes.dex */
final class v extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ Activity f12138i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzl f12139j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ zzz.b f12140k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(zzz.b bVar, Activity activity, zzl zzlVar) {
        super(zzz.this);
        this.f12140k = bVar;
        this.f12138i = activity;
        this.f12139j = zzlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzz.a
    final void a() {
        zzk zzkVar;
        zzkVar = zzz.this.f12266i;
        zzkVar.onActivitySaveInstanceState(ObjectWrapper.wrap(this.f12138i), this.f12139j, this.f12268f);
    }
}
