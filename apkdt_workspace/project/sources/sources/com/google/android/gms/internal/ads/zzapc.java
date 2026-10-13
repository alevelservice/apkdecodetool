package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzapc extends zzaph {

    /* renamed from: e, reason: collision with root package name */
    private final String f10974e;

    /* renamed from: f, reason: collision with root package name */
    private final int f10975f;

    public zzapc(String str, int i2) {
        this.f10974e = str;
        this.f10975f = i2;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzapc)) {
            zzapc zzapcVar = (zzapc) obj;
            if (com.google.android.gms.common.internal.k.a(this.f10974e, zzapcVar.f10974e) && com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f10975f), Integer.valueOf(zzapcVar.f10975f))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final int getAmount() {
        return this.f10975f;
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final String getType() {
        return this.f10974e;
    }
}
