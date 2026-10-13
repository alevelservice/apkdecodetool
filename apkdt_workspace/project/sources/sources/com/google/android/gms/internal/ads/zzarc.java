package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzarc extends zzaqe {

    /* renamed from: e, reason: collision with root package name */
    private final String f10985e;

    /* renamed from: f, reason: collision with root package name */
    private final int f10986f;

    public zzarc(@Nullable zzaqd zzaqdVar) {
        this(zzaqdVar != null ? zzaqdVar.f10979e : "", zzaqdVar != null ? zzaqdVar.f10980f : 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaqf
    public final int getAmount() {
        return this.f10986f;
    }

    @Override // com.google.android.gms.internal.ads.zzaqf
    public final String getType() {
        return this.f10985e;
    }

    public zzarc(@Nullable com.google.android.gms.ads.p.b bVar) {
        this(bVar != null ? bVar.getType() : "", bVar != null ? bVar.getAmount() : 1);
    }

    public zzarc(String str, int i2) {
        this.f10985e = str;
        this.f10986f = i2;
    }
}
