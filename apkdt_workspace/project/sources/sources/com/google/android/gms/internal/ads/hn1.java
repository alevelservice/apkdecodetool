package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hn1 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7127a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7128b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7129c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7130d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7131e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f7132f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7133g;

    /* renamed from: h, reason: collision with root package name */
    public final int f7134h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f7135i;

    public hn1() {
        this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && hn1.class == obj.getClass()) {
            hn1 hn1Var = (hn1) obj;
            if (this.f7127a == hn1Var.f7127a && this.f7128b == hn1Var.f7128b && this.f7129c == hn1Var.f7129c && this.f7131e == hn1Var.f7131e && this.f7132f == hn1Var.f7132f && this.f7135i == hn1Var.f7135i && this.f7133g == hn1Var.f7133g && this.f7134h == hn1Var.f7134h && this.f7130d == hn1Var.f7130d && TextUtils.equals(null, null) && TextUtils.equals(null, null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = null;
        return (((((((((((((((((((str.hashCode() * 31) + str.hashCode()) * 31 * 31) + (this.f7127a ? 1 : 0)) * 31) + this.f7128b) * 31) + this.f7129c) * 31) + this.f7130d) * 31) + (this.f7131e ? 1 : 0)) * 31) + (this.f7132f ? 1 : 0)) * 31) + (this.f7135i ? 1 : 0)) * 31) + this.f7133g) * 31) + this.f7134h;
    }

    private hn1(String str, String str2, boolean z, boolean z2, int i2, int i3, int i4, boolean z3, boolean z4, int i5, int i6, boolean z5) {
        this.f7127a = true;
        this.f7128b = Integer.MAX_VALUE;
        this.f7129c = Integer.MAX_VALUE;
        this.f7130d = Integer.MAX_VALUE;
        this.f7131e = true;
        this.f7132f = true;
        this.f7133g = Integer.MAX_VALUE;
        this.f7134h = Integer.MAX_VALUE;
        this.f7135i = true;
    }
}
