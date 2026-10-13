package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzzz extends zzaaj {
    private static final int m = Color.rgb(12, 174, 206);
    private static final int n = Color.rgb(204, 204, 204);
    private static final int o = m;

    /* renamed from: e, reason: collision with root package name */
    private final String f11281e;

    /* renamed from: f, reason: collision with root package name */
    private final List<zzaae> f11282f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    private final List<zzaas> f11283g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    private final int f11284h;

    /* renamed from: i, reason: collision with root package name */
    private final int f11285i;

    /* renamed from: j, reason: collision with root package name */
    private final int f11286j;

    /* renamed from: k, reason: collision with root package name */
    private final int f11287k;

    /* renamed from: l, reason: collision with root package name */
    private final int f11288l;

    public zzzz(String str, List<zzaae> list, Integer num, Integer num2, Integer num3, int i2, int i3, boolean z) {
        this.f11281e = str;
        if (list != null) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                zzaae zzaaeVar = list.get(i4);
                this.f11282f.add(zzaaeVar);
                this.f11283g.add(zzaaeVar);
            }
        }
        this.f11284h = num != null ? num.intValue() : n;
        this.f11285i = num2 != null ? num2.intValue() : o;
        this.f11286j = num3 != null ? num3.intValue() : 12;
        this.f11287k = i2;
        this.f11288l = i3;
    }

    public final int getBackgroundColor() {
        return this.f11284h;
    }

    @Override // com.google.android.gms.internal.ads.zzaak
    public final String getText() {
        return this.f11281e;
    }

    public final int getTextColor() {
        return this.f11285i;
    }

    public final int getTextSize() {
        return this.f11286j;
    }

    @Override // com.google.android.gms.internal.ads.zzaak
    public final List<zzaas> zzqa() {
        return this.f11283g;
    }

    public final List<zzaae> zzqb() {
        return this.f11282f;
    }

    public final int zzqc() {
        return this.f11287k;
    }

    public final int zzqd() {
        return this.f11288l;
    }
}
