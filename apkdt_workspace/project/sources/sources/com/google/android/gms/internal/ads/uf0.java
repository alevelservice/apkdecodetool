package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class uf0<AdT> implements ad0<AdT> {
    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<AdT> a(vs0 vs0Var, ns0 ns0Var) {
        String optString = ns0Var.s.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        ws0 ws0Var = vs0Var.f9985a.f9004a;
        ys0 ys0Var = new ys0();
        ys0Var.a(ws0Var.f10195d);
        ys0Var.a(ws0Var.f10196e);
        ys0Var.a(ws0Var.f10192a);
        ys0Var.a(ws0Var.f10197f);
        ys0Var.a(ws0Var.f10193b);
        ys0Var.a(ws0Var.f10198g);
        ys0Var.b(ws0Var.f10199h);
        ys0Var.a(ws0Var.f10200i);
        ys0Var.a(ws0Var.f10201j);
        ys0Var.a(ws0Var.f10203l);
        ys0Var.a(optString);
        Bundle a2 = a(ws0Var.f10195d.q);
        Bundle a3 = a(a2.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        a3.putInt("gw", 1);
        String optString2 = ns0Var.s.optString("mad_hac", null);
        if (optString2 != null) {
            a3.putString("mad_hac", optString2);
        }
        String optString3 = ns0Var.s.optString("adJson", null);
        if (optString3 != null) {
            a3.putString("_ad", optString3);
        }
        a3.putBoolean("_noRefresh", true);
        Iterator<String> keys = ns0Var.A.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = ns0Var.A.optString(next, null);
            if (next != null) {
                a3.putString(next, optString4);
            }
        }
        a2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", a3);
        zztp zztpVar = ws0Var.f10195d;
        ys0Var.a(new zztp(zztpVar.f11237e, zztpVar.f11238f, a3, zztpVar.f11240h, zztpVar.f11241i, zztpVar.f11242j, zztpVar.f11243k, zztpVar.f11244l, zztpVar.m, zztpVar.n, zztpVar.o, zztpVar.p, a2, zztpVar.r, zztpVar.s, zztpVar.t, zztpVar.u, zztpVar.v, zztpVar.w, zztpVar.x, zztpVar.y));
        ws0 c2 = ys0Var.c();
        Bundle bundle = new Bundle();
        ps0 ps0Var = vs0Var.f9986b.f9630b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(ps0Var.f8768a));
        bundle2.putInt("refresh_interval", ps0Var.f8770c);
        bundle2.putString("gws_query_id", ps0Var.f8769b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = vs0Var.f9985a.f9004a.f10197f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", ns0Var.t);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(ns0Var.f8417c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(ns0Var.f8418d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(ns0Var.n));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(ns0Var.m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(ns0Var.f8421g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(ns0Var.f8422h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(ns0Var.f8423i));
        bundle3.putString("transaction_id", ns0Var.f8424j);
        bundle3.putString("valid_from_timestamp", ns0Var.f8425k);
        bundle3.putBoolean("is_closable_area_disabled", ns0Var.G);
        if (ns0Var.f8426l != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", ns0Var.f8426l.f10980f);
            bundle4.putString("rb_type", ns0Var.f8426l.f10979e);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return a(c2, bundle);
    }

    protected abstract qz0<AdT> a(ws0 ws0Var, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        return !TextUtils.isEmpty(ns0Var.s.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    private static Bundle a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }
}
