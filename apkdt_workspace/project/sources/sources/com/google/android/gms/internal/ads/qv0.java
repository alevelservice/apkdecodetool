package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.ads.sv0;
import com.google.android.gms.internal.ads.wv0;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
@ShowFirstParty
/* loaded from: classes.dex */
public final class qv0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9009a;

    /* renamed from: b, reason: collision with root package name */
    private final Looper f9010b;

    public qv0(@NonNull Context context, @NonNull Looper looper) {
        this.f9009a = context;
        this.f9010b = looper;
    }

    public final void a(@NonNull String str) {
        wv0.a k2 = wv0.k();
        k2.a(this.f9009a.getPackageName());
        k2.a(wv0.b.BLOCKED_IMPRESSION);
        sv0.b k3 = sv0.k();
        k3.a(str);
        k3.a(sv0.a.BLOCKED_REASON_BACKGROUND);
        k2.a(k3);
        new pv0(this.f9009a, this.f9010b, (wv0) k2.s()).a();
    }
}
