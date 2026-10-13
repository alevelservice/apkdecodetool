package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class um0 implements ko0<vm0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f9770a;

    /* renamed from: b, reason: collision with root package name */
    private final ws0 f9771b;

    /* renamed from: c, reason: collision with root package name */
    private final PackageInfo f9772c;

    /* renamed from: d, reason: collision with root package name */
    private final pa f9773d;

    public um0(tz0 tz0Var, ws0 ws0Var, @Nullable PackageInfo packageInfo, pa paVar) {
        this.f9770a = tz0Var;
        this.f9771b = ws0Var;
        this.f9772c = packageInfo;
        this.f9773d = paVar;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<vm0> a() {
        return this.f9770a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.xm0

            /* renamed from: e, reason: collision with root package name */
            private final um0 f10388e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10388e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10388e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ vm0 b() {
        final ArrayList<String> arrayList = this.f9771b.f10198g;
        if (arrayList == null) {
            return wm0.f10145a;
        }
        if (arrayList.isEmpty()) {
            return zm0.f10802a;
        }
        return new vm0(this, arrayList) { // from class: com.google.android.gms.internal.ads.ym0

            /* renamed from: a, reason: collision with root package name */
            private final um0 f10599a;

            /* renamed from: b, reason: collision with root package name */
            private final ArrayList f10600b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10599a = this;
                this.f10600b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Bundle bundle) {
                this.f10599a.a(this.f10600b, bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(ArrayList arrayList, Bundle bundle) {
        JSONArray optJSONArray;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.f9771b.f10199h);
        String str = "landscape";
        if (((Boolean) mu1.e().a(aw1.R1)).booleanValue() && this.f9771b.f10200i.f10884e > 3) {
            bundle.putBoolean("enable_native_media_orientation", true);
            int i2 = this.f9771b.f10200i.f10891l;
            String str2 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "unknown" : "square" : "portrait" : "landscape" : "any";
            if (!"unknown".equals(str2)) {
                bundle.putString("native_media_orientation", str2);
            }
        }
        int i3 = this.f9771b.f10200i.f10886g;
        if (i3 == 0) {
            str = "any";
        } else if (i3 == 1) {
            str = "portrait";
        } else if (i3 != 2) {
            str = "unknown";
        }
        if (!"unknown".equals(str)) {
            bundle.putString("native_image_orientation", str);
        }
        bundle.putBoolean("native_multiple_images", this.f9771b.f10200i.f10887h);
        bundle.putBoolean("use_custom_mute", this.f9771b.f10200i.f10890k);
        PackageInfo packageInfo = this.f9772c;
        int i4 = packageInfo == null ? 0 : packageInfo.versionCode;
        if (i4 > this.f9773d.k()) {
            this.f9773d.c();
            this.f9773d.a(i4);
        }
        JSONObject e2 = this.f9773d.e();
        String jSONArray = (e2 == null || (optJSONArray = e2.optJSONArray(this.f9771b.f10197f)) == null) ? null : optJSONArray.toString();
        if (!TextUtils.isEmpty(jSONArray)) {
            bundle.putString("native_advanced_settings", jSONArray);
        }
        int i5 = this.f9771b.f10202k;
        if (i5 > 1) {
            bundle.putInt("max_num_ads", i5);
        }
        zzafj zzafjVar = this.f9771b.f10194c;
        if (zzafjVar != null) {
            int i6 = zzafjVar.f10917e;
            String str3 = "l";
            if (i6 != 1) {
                if (i6 != 2) {
                    StringBuilder sb = new StringBuilder(52);
                    sb.append("Instream ad video aspect ratio ");
                    sb.append(i6);
                    sb.append(" is wrong.");
                    qd.b(sb.toString());
                } else {
                    str3 = "p";
                }
            }
            bundle.putString("ia_var", str3);
            bundle.putBoolean("instr", true);
        }
        if (this.f9771b.a() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
    }
}
