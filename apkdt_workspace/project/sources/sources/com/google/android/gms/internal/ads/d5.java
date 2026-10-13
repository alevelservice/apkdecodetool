package com.google.android.gms.internal.ads;

import android.location.Location;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class d5 implements com.google.android.gms.ads.mediation.d {

    /* renamed from: a, reason: collision with root package name */
    private final Date f6157a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6158b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<String> f6159c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f6160d;

    /* renamed from: e, reason: collision with root package name */
    private final Location f6161e;

    /* renamed from: f, reason: collision with root package name */
    private final int f6162f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f6163g;

    public d5(@Nullable Date date, int i2, @Nullable Set<String> set, @Nullable Location location, boolean z, int i3, boolean z2, int i4, String str) {
        this.f6157a = date;
        this.f6158b = i2;
        this.f6159c = set;
        this.f6161e = location;
        this.f6160d = z;
        this.f6162f = i3;
        this.f6163g = z2;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final int b() {
        return this.f6162f;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final boolean e() {
        return this.f6163g;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final Date g() {
        return this.f6157a;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final boolean h() {
        return this.f6160d;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final Set<String> i() {
        return this.f6159c;
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final Location k() {
        return this.f6161e;
    }

    @Override // com.google.android.gms.ads.mediation.d
    @Deprecated
    public final int m() {
        return this.f6158b;
    }
}
