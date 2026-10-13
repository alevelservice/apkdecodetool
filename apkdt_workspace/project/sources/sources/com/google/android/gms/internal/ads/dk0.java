package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dk0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final ws0 f6238a;

    public dk0(ws0 ws0Var) {
        com.google.android.gms.common.internal.m.a(ws0Var, "the targeting must not be null");
        this.f6238a = ws0Var;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        ws0 ws0Var = this.f6238a;
        zztp zztpVar = ws0Var.f10195d;
        bundle2.putString("slotname", ws0Var.f10197f);
        if (this.f6238a.n.contains("new_rewarded")) {
            bundle2.putBoolean("is_new_rewarded", true);
        }
        dt0.a(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zztpVar.f11238f)), zztpVar.f11238f != -1);
        dt0.a(bundle2, "extras", zztpVar.f11239g);
        dt0.a(bundle2, "cust_gender", Integer.valueOf(zztpVar.f11240h), zztpVar.f11240h != -1);
        dt0.a(bundle2, "kw", zztpVar.f11241i);
        dt0.a(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zztpVar.f11243k), zztpVar.f11243k != -1);
        boolean z = zztpVar.f11242j;
        if (z) {
            bundle2.putBoolean("test_request", z);
        }
        dt0.a(bundle2, "d_imp_hdr", (Integer) 1, zztpVar.f11237e >= 2 && zztpVar.f11244l);
        String str = zztpVar.m;
        dt0.a(bundle2, "ppid", str, zztpVar.f11237e >= 2 && !TextUtils.isEmpty(str));
        Location location = zztpVar.o;
        if (location != null) {
            Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long valueOf2 = Long.valueOf(location.getTime() * 1000);
            Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", valueOf.floatValue());
            bundle3.putLong("lat", valueOf3.longValue());
            bundle3.putLong("long", valueOf4.longValue());
            bundle3.putLong("time", valueOf2.longValue());
            bundle2.putBundle("uule", bundle3);
        }
        dt0.a(bundle2, HummerConstants.URL, zztpVar.p);
        dt0.a(bundle2, "custom_targeting", zztpVar.r);
        dt0.a(bundle2, "category_exclusions", zztpVar.s);
        dt0.a(bundle2, "request_agent", zztpVar.t);
        dt0.a(bundle2, "request_pkg", zztpVar.u);
        dt0.a(bundle2, "is_designed_for_families", Boolean.valueOf(zztpVar.v), zztpVar.f11237e >= 7);
        if (zztpVar.f11237e >= 8) {
            dt0.a(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zztpVar.x), zztpVar.x != -1);
            dt0.a(bundle2, "max_ad_content_rating", zztpVar.y);
        }
    }
}
