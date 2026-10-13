package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.n.a;
import java.util.HashMap;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class vu1 {

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private static vu1 f9991b;

    /* renamed from: c, reason: collision with root package name */
    private static final Object f9992c = new Object();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private RequestConfiguration f9993a = new RequestConfiguration.a().a();

    private vu1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.google.android.gms.ads.n.b a(List<zzaex> list) {
        HashMap hashMap = new HashMap();
        for (zzaex zzaexVar : list) {
            hashMap.put(zzaexVar.f10911e, new l1(zzaexVar.f10912f ? a.EnumC0078a.READY : a.EnumC0078a.NOT_READY, zzaexVar.f10914h, zzaexVar.f10913g));
        }
        return new m1(hashMap);
    }

    public static vu1 b() {
        vu1 vu1Var;
        synchronized (f9992c) {
            if (f9991b == null) {
                f9991b = new vu1();
            }
            vu1Var = f9991b;
        }
        return vu1Var;
    }

    @NonNull
    public final RequestConfiguration a() {
        return this.f9993a;
    }
}
