package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class c5 implements tn1 {

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f5922c = w1.f10014a;

    /* renamed from: a, reason: collision with root package name */
    private final x2 f5923a;

    /* renamed from: b, reason: collision with root package name */
    private final y4 f5924b;

    public c5(x2 x2Var) {
        this(x2Var, new y4(4096));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0202 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.tn1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.uo1 a(com.google.android.gms.internal.ads.uq1<?> r22) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.c5.a(com.google.android.gms.internal.ads.uq1):com.google.android.gms.internal.ads.uo1");
    }

    private c5(x2 x2Var, y4 y4Var) {
        this.f5923a = x2Var;
        this.f5924b = y4Var;
    }

    private static void a(String str, uq1<?> uq1Var, r0 r0Var) {
        t j2 = uq1Var.j();
        int i2 = uq1Var.i();
        try {
            j2.a(r0Var);
            uq1Var.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(i2)));
        } catch (r0 e2) {
            uq1Var.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(i2)));
            throw e2;
        }
    }

    private final byte[] a(InputStream inputStream, int i2) {
        bd bdVar = new bd(this.f5924b, i2);
        try {
            if (inputStream != null) {
                byte[] a2 = this.f5924b.a(1024);
                while (true) {
                    int read = inputStream.read(a2);
                    if (read == -1) {
                        break;
                    }
                    bdVar.write(a2, 0, read);
                }
                byte[] byteArray = bdVar.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        w1.c("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f5924b.a(a2);
                bdVar.close();
                return byteArray;
            }
            throw new o();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    w1.c("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f5924b.a((byte[]) null);
            bdVar.close();
            throw th;
        }
    }
}
