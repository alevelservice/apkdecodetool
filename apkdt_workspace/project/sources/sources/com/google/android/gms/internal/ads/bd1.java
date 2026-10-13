package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class bd1 {

    /* renamed from: a, reason: collision with root package name */
    protected volatile int f5767a = -1;

    public final int a() {
        int c2 = c();
        this.f5767a = c2;
        return c2;
    }

    public void a(sc1 sc1Var) {
    }

    @Override // 
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public bd1 clone() {
        return (bd1) super.clone();
    }

    protected int c() {
        return 0;
    }

    public String toString() {
        return ad1.a(this);
    }

    public static final byte[] a(bd1 bd1Var) {
        byte[] bArr = new byte[bd1Var.a()];
        try {
            sc1 a2 = sc1.a(bArr, 0, bArr.length);
            bd1Var.a(a2);
            a2.a();
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }
}
