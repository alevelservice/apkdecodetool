package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nt0 {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, pt0> f8427a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Context f8428b;

    /* renamed from: c, reason: collision with root package name */
    private final ca f8429c;

    /* renamed from: d, reason: collision with root package name */
    private final zzawv f8430d;

    /* renamed from: e, reason: collision with root package name */
    private final t11 f8431e;

    public nt0(Context context, zzawv zzawvVar, ca caVar) {
        this.f8428b = context;
        this.f8430d = zzawvVar;
        this.f8429c = caVar;
        this.f8431e = new t11(new com.google.android.gms.ads.internal.f(context, zzawvVar));
    }

    private final pt0 b(String str) {
        z7 b2 = z7.b(this.f8428b);
        try {
            b2.a(str);
            sa saVar = new sa();
            saVar.a(this.f8428b, str, false);
            ta taVar = new ta(this.f8429c.i(), saVar);
            return new pt0(b2, taVar, new ka(gd.c(), taVar), new t11(new com.google.android.gms.ads.internal.f(this.f8428b, this.f8430d)));
        } catch (PackageManager.NameNotFoundException unused) {
            return a();
        }
    }

    public final pt0 a(@Nullable String str) {
        if (str == null) {
            return a();
        }
        if (this.f8427a.containsKey(str)) {
            return this.f8427a.get(str);
        }
        pt0 b2 = b(str);
        this.f8427a.put(str, b2);
        return b2;
    }

    private final pt0 a() {
        return new pt0(this.f8428b, this.f8429c.i(), this.f8429c.k(), this.f8431e);
    }
}
