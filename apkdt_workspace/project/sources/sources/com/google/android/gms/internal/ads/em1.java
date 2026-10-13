package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class em1 {

    /* renamed from: a, reason: collision with root package name */
    private final pj1[] f6464a;

    /* renamed from: b, reason: collision with root package name */
    private final rj1 f6465b;

    /* renamed from: c, reason: collision with root package name */
    private pj1 f6466c;

    public em1(pj1[] pj1VarArr, rj1 rj1Var) {
        this.f6464a = pj1VarArr;
        this.f6465b = rj1Var;
    }

    public final pj1 a(sj1 sj1Var, Uri uri) {
        pj1 pj1Var = this.f6466c;
        if (pj1Var != null) {
            return pj1Var;
        }
        pj1[] pj1VarArr = this.f6464a;
        int length = pj1VarArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            pj1 pj1Var2 = pj1VarArr[i2];
            try {
            } catch (EOFException unused) {
            } finally {
                sj1Var.b();
            }
            if (pj1Var2.a(sj1Var)) {
                this.f6466c = pj1Var2;
                break;
            }
            i2++;
        }
        pj1 pj1Var3 = this.f6466c;
        if (pj1Var3 != null) {
            pj1Var3.a(this.f6465b);
            return this.f6466c;
        }
        String a2 = cp1.a(this.f6464a);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(a2);
        sb.append(") could read the stream.");
        throw new en1(sb.toString(), uri);
    }

    public final void a() {
        pj1 pj1Var = this.f6466c;
        if (pj1Var != null) {
            pj1Var.a();
            this.f6466c = null;
        }
    }
}
