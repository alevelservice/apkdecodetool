package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* loaded from: classes.dex */
public class u4 {

    /* renamed from: e, reason: collision with root package name */
    protected volatile int f11575e = -1;

    public static final void a(u4 u4Var, byte[] bArr, int i2, int i3) {
        try {
            n4 a2 = n4.a(bArr, 0, i3);
            u4Var.a(a2);
            a2.a();
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public final int a() {
        int b2 = b();
        this.f11575e = b2;
        return b2;
    }

    public void a(n4 n4Var) {
    }

    protected int b() {
        return 0;
    }

    @Override // 
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public u4 clone() {
        return (u4) super.clone();
    }

    public String toString() {
        return v4.a(this);
    }
}
