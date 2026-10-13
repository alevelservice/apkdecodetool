package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bo1 {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f5821a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5822b;

    /* renamed from: c, reason: collision with root package name */
    public final long f5823c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5824d;

    /* renamed from: e, reason: collision with root package name */
    public final long f5825e;

    /* renamed from: f, reason: collision with root package name */
    public final String f5826f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5827g;

    public bo1(Uri uri) {
        this(uri, 0);
    }

    public final boolean a(int i2) {
        return (this.f5827g & 1) == 1;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f5821a);
        String arrays = Arrays.toString(this.f5822b);
        long j2 = this.f5823c;
        long j3 = this.f5824d;
        long j4 = this.f5825e;
        String str = this.f5826f;
        int i2 = this.f5827g;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 93 + String.valueOf(arrays).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", ");
        sb.append(j4);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    private bo1(Uri uri, int i2) {
        this(uri, 0L, -1L, null, 0);
    }

    public bo1(Uri uri, long j2, long j3, String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    private bo1(Uri uri, long j2, long j3, String str, int i2) {
        this(uri, 0L, 0L, -1L, null, 0);
    }

    private bo1(Uri uri, long j2, long j3, long j4, String str, int i2) {
        this(uri, null, j2, j3, j4, str, i2);
    }

    public bo1(Uri uri, byte[] bArr, long j2, long j3, long j4, String str, int i2) {
        boolean z = true;
        no1.a(j2 >= 0);
        no1.a(j3 >= 0);
        if (j4 <= 0 && j4 != -1) {
            z = false;
        }
        no1.a(z);
        this.f5821a = uri;
        this.f5822b = bArr;
        this.f5823c = j2;
        this.f5824d = j3;
        this.f5825e = j4;
        this.f5826f = str;
        this.f5827g = i2;
    }
}
