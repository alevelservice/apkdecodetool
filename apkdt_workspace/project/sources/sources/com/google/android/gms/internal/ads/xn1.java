package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xn1 implements wn1 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f10398a;

    /* renamed from: b, reason: collision with root package name */
    private Uri f10399b;

    /* renamed from: c, reason: collision with root package name */
    private int f10400c;

    /* renamed from: d, reason: collision with root package name */
    private int f10401d;

    public xn1(byte[] bArr) {
        no1.a(bArr);
        no1.a(bArr.length > 0);
        this.f10398a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final long a(bo1 bo1Var) {
        this.f10399b = bo1Var.f5821a;
        long j2 = bo1Var.f5824d;
        this.f10400c = (int) j2;
        long j3 = bo1Var.f5825e;
        if (j3 == -1) {
            j3 = this.f10398a.length - j2;
        }
        this.f10401d = (int) j3;
        int i2 = this.f10401d;
        if (i2 > 0 && this.f10400c + i2 <= this.f10398a.length) {
            return i2;
        }
        int i3 = this.f10400c;
        long j4 = bo1Var.f5825e;
        int length = this.f10398a.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i3);
        sb.append(", ");
        sb.append(j4);
        sb.append("], length: ");
        sb.append(length);
        throw new IOException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final void close() {
        this.f10399b = null;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final Uri getUri() {
        return this.f10399b;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final int a(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.f10401d;
        if (i4 == 0) {
            return -1;
        }
        int min = Math.min(i3, i4);
        System.arraycopy(this.f10398a, this.f10400c, bArr, i2, min);
        this.f10400c += min;
        this.f10401d -= min;
        return min;
    }
}
