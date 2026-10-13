package com.google.android.gms.internal.ads;

import android.location.Location;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class h5 implements com.google.android.gms.ads.mediation.t {

    /* renamed from: a, reason: collision with root package name */
    private final Date f6998a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6999b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<String> f7000c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f7001d;

    /* renamed from: e, reason: collision with root package name */
    private final Location f7002e;

    /* renamed from: f, reason: collision with root package name */
    private final int f7003f;

    /* renamed from: g, reason: collision with root package name */
    private final zzaai f7004g;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f7006i;

    /* renamed from: h, reason: collision with root package name */
    private final List<String> f7005h = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    private final Map<String, Boolean> f7007j = new HashMap();

    public h5(@Nullable Date date, int i2, @Nullable Set<String> set, @Nullable Location location, boolean z, int i3, zzaai zzaaiVar, List<String> list, boolean z2, int i4, String str) {
        this.f6998a = date;
        this.f6999b = i2;
        this.f7000c = set;
        this.f7002e = location;
        this.f7001d = z;
        this.f7003f = i3;
        this.f7004g = zzaaiVar;
        this.f7006i = z2;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f7007j.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.f7007j.put(split[1], false);
                        }
                    }
                } else {
                    this.f7005h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final boolean a() {
        List<String> list = this.f7005h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final int b() {
        return this.f7003f;
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final boolean c() {
        List<String> list = this.f7005h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final Map<String, Boolean> d() {
        return this.f7007j;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final boolean e() {
        return this.f7006i;
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final boolean f() {
        List<String> list = this.f7005h;
        if (list != null) {
            return list.contains("2") || this.f7005h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final Date g() {
        return this.f6998a;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final boolean h() {
        return this.f7001d;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final Set<String> i() {
        return this.f7000c;
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final NativeAdOptions j() {
        zzyc zzycVar;
        if (this.f7004g == null) {
            return null;
        }
        NativeAdOptions.a aVar = new NativeAdOptions.a();
        aVar.b(this.f7004g.f10885f);
        aVar.b(this.f7004g.f10886g);
        aVar.a(this.f7004g.f10887h);
        zzaai zzaaiVar = this.f7004g;
        if (zzaaiVar.f10884e >= 2) {
            aVar.a(zzaaiVar.f10888i);
        }
        zzaai zzaaiVar2 = this.f7004g;
        if (zzaaiVar2.f10884e >= 3 && (zzycVar = zzaaiVar2.f10889j) != null) {
            aVar.a(new com.google.android.gms.ads.k(zzycVar));
        }
        return aVar.a();
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final Location k() {
        return this.f7002e;
    }

    @Override // com.google.android.gms.ads.mediation.t
    public final boolean l() {
        List<String> list = this.f7005h;
        if (list != null) {
            return list.contains("1") || this.f7005h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final int m() {
        return this.f6999b;
    }
}
