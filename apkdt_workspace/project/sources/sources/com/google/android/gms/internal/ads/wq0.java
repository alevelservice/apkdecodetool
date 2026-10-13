package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.us;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wq0<RequestComponentT extends us<AdT>, AdT> implements zq0<RequestComponentT, AdT> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private RequestComponentT f10172a;

    @Override // com.google.android.gms.internal.ads.zq0
    public final qz0<AdT> a(ts<RequestComponentT> tsVar, Executor executor) {
        this.f10172a = tsVar.a();
        return this.f10172a.a().a();
    }

    @Override // com.google.android.gms.internal.ads.zq0
    public final /* synthetic */ Object a() {
        return this.f10172a;
    }
}
