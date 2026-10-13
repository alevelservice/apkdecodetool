package com.google.android.gms.internal.ads;

import java.io.Closeable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class zf extends xd1 implements Closeable {
    static {
        fe1.a(zf.class);
    }

    public zf(zd1 zd1Var, bh bhVar) {
        a(zd1Var, zd1Var.size(), bhVar);
    }

    @Override // com.google.android.gms.internal.ads.xd1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10320f.close();
    }

    @Override // com.google.android.gms.internal.ads.xd1
    public String toString() {
        String obj = this.f10320f.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
