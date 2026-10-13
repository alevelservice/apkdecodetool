package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zz implements tq<br> {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, ad0<br>> f10871a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, ad0<d10>> f10872b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, bf0<d10>> f10873c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<tq<uo>> f10874d;

    /* renamed from: e, reason: collision with root package name */
    private final x10 f10875e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zz(Map<String, ad0<br>> map, Map<String, ad0<d10>> map2, Map<String, bf0<d10>> map3, af1<tq<uo>> af1Var, x10 x10Var) {
        this.f10871a = map;
        this.f10872b = map2;
        this.f10873c = map3;
        this.f10874d = af1Var;
        this.f10875e = x10Var;
    }

    @Override // com.google.android.gms.internal.ads.tq
    @Nullable
    public final ad0<br> a(int i2, String str) {
        ad0<uo> a2;
        ad0<br> ad0Var = this.f10871a.get(str);
        if (ad0Var != null) {
            return ad0Var;
        }
        if (i2 == 1) {
            if (this.f10875e.d() == null || (a2 = this.f10874d.get().a(i2, str)) == null) {
                return null;
            }
            return br.a(a2);
        }
        if (i2 != 4) {
            return null;
        }
        bf0<d10> bf0Var = this.f10873c.get(str);
        if (bf0Var != null) {
            return br.a((bf0<? extends sq>) bf0Var);
        }
        ad0<d10> ad0Var2 = this.f10872b.get(str);
        if (ad0Var2 != null) {
            return br.a(ad0Var2);
        }
        return null;
    }
}
