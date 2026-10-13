package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
final class f7 {

    /* renamed from: a, reason: collision with root package name */
    long f6581a;

    /* renamed from: b, reason: collision with root package name */
    final String f6582b;

    /* renamed from: c, reason: collision with root package name */
    final String f6583c;

    /* renamed from: d, reason: collision with root package name */
    final long f6584d;

    /* renamed from: e, reason: collision with root package name */
    final long f6585e;

    /* renamed from: f, reason: collision with root package name */
    final long f6586f;

    /* renamed from: g, reason: collision with root package name */
    final long f6587g;

    /* renamed from: h, reason: collision with root package name */
    final List<wk1> f6588h;

    private f7(String str, String str2, long j2, long j3, long j4, long j5, List<wk1> list) {
        this.f6582b = str;
        this.f6583c = "".equals(str2) ? null : str2;
        this.f6584d = j2;
        this.f6585e = j3;
        this.f6586f = j4;
        this.f6587g = j5;
        this.f6588h = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f7 a(q6 q6Var) {
        if (n5.b((InputStream) q6Var) == 538247942) {
            return new f7(n5.a(q6Var), n5.a(q6Var), n5.c(q6Var), n5.c(q6Var), n5.c(q6Var), n5.c(q6Var), n5.b(q6Var));
        }
        throw new IOException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f7(java.lang.String r14, com.google.android.gms.internal.ads.zw0 r15) {
        /*
            r13 = this;
            java.lang.String r2 = r15.f10857b
            long r3 = r15.f10858c
            long r5 = r15.f10859d
            long r7 = r15.f10860e
            long r9 = r15.f10861f
            java.util.List<com.google.android.gms.internal.ads.wk1> r0 = r15.f10863h
            if (r0 == 0) goto L10
        Le:
            r11 = r0
            goto L44
        L10:
            java.util.Map<java.lang.String, java.lang.String> r15 = r15.f10862g
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r15.size()
            r0.<init>(r1)
            java.util.Set r15 = r15.entrySet()
            java.util.Iterator r15 = r15.iterator()
        L23:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r15.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            com.google.android.gms.internal.ads.wk1 r11 = new com.google.android.gms.internal.ads.wk1
            java.lang.Object r12 = r1.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r11.<init>(r12, r1)
            r0.add(r11)
            goto L23
        L44:
            r0 = r13
            r1 = r14
            r0.<init>(r1, r2, r3, r5, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.f7.<init>(java.lang.String, com.google.android.gms.internal.ads.zw0):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(OutputStream outputStream) {
        try {
            n5.a(outputStream, 538247942);
            n5.a(outputStream, this.f6582b);
            n5.a(outputStream, this.f6583c == null ? "" : this.f6583c);
            n5.a(outputStream, this.f6584d);
            n5.a(outputStream, this.f6585e);
            n5.a(outputStream, this.f6586f);
            n5.a(outputStream, this.f6587g);
            List<wk1> list = this.f6588h;
            if (list != null) {
                n5.a(outputStream, list.size());
                for (wk1 wk1Var : list) {
                    n5.a(outputStream, wk1Var.a());
                    n5.a(outputStream, wk1Var.b());
                }
            } else {
                n5.a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e2) {
            w1.a("%s", e2.toString());
            return false;
        }
    }
}
