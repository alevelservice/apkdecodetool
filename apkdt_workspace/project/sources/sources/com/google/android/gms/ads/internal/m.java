package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.q21;
import com.google.android.gms.internal.ads.t11;
import com.google.android.gms.internal.ads.zzawv;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m implements Callable<t11> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzj f4533e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(zzj zzjVar) {
        this.f4533e = zzjVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ t11 call() {
        zzawv zzawvVar;
        Context context;
        zzawvVar = this.f4533e.f4603e;
        String str = zzawvVar.f11000e;
        context = this.f4533e.f4606h;
        return new t11(q21.a(str, context, false));
    }
}
