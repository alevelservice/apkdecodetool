package com.google.firebase.crashlytics.d.l;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: ByteString.java */
/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f14639a;

    /* renamed from: b, reason: collision with root package name */
    private volatile int f14640b = 0;

    static {
        new a(new byte[0]);
    }

    private a(byte[] bArr) {
        this.f14639a = bArr;
    }

    public static a a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return new a(bArr2);
    }

    public int b() {
        return this.f14639a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        byte[] bArr = this.f14639a;
        int length = bArr.length;
        byte[] bArr2 = ((a) obj).f14639a;
        if (length != bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.f14640b;
        if (i2 == 0) {
            byte[] bArr = this.f14639a;
            int length = bArr.length;
            for (byte b2 : bArr) {
                length = (length * 31) + b2;
            }
            i2 = length == 0 ? 1 : length;
            this.f14640b = i2;
        }
        return i2;
    }

    public static a a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static a a(String str) {
        try {
            return new a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported.", e2);
        }
    }

    public void a(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.f14639a, i2, bArr, i3, i4);
    }

    public InputStream a() {
        return new ByteArrayInputStream(this.f14639a);
    }
}
