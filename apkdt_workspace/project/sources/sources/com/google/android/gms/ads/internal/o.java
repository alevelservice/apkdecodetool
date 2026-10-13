package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.zzawv;
import com.google.android.gms.internal.ads.zztp;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class o {

    /* renamed from: a, reason: collision with root package name */
    private final String f4546a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, String> f4547b = new TreeMap();

    /* renamed from: c, reason: collision with root package name */
    private String f4548c;

    /* renamed from: d, reason: collision with root package name */
    private String f4549d;

    public o(String str) {
        this.f4546a = str;
    }

    public final String a() {
        return this.f4548c;
    }

    public final String b() {
        return this.f4549d;
    }

    public final String c() {
        return this.f4546a;
    }

    public final Map<String, String> d() {
        return this.f4547b;
    }

    public final void a(zztp zztpVar, zzawv zzawvVar) {
        this.f4548c = zztpVar.n.f11271e;
        Bundle bundle = zztpVar.q;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String str = (String) mu1.e().a(aw1.g2);
        for (String str2 : bundle2.keySet()) {
            if (str.equals(str2)) {
                this.f4549d = bundle2.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.f4547b.put(str2.substring(4), bundle2.getString(str2));
            }
        }
        this.f4547b.put("SDKVersion", zzawvVar.f11000e);
    }
}
