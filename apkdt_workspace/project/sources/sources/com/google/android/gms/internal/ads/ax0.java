package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.wo;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ax0 {

    /* renamed from: c, reason: collision with root package name */
    private static final ConditionVariable f5677c = new ConditionVariable();

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    protected static volatile ps1 f5678d = null;

    /* renamed from: e, reason: collision with root package name */
    private static volatile Random f5679e = null;

    /* renamed from: a, reason: collision with root package name */
    private cf1 f5680a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    protected volatile Boolean f5681b;

    public ax0(cf1 cf1Var) {
        this.f5680a = cf1Var;
        cf1Var.d().execute(new ew0(this));
    }

    private static Random b() {
        if (f5679e == null) {
            synchronized (ax0.class) {
                if (f5679e == null) {
                    f5679e = new Random();
                }
            }
        }
        return f5679e;
    }

    public final void a(int i2, int i3, long j2) {
        a(i2, i3, j2, null, null);
    }

    public final void a(int i2, int i3, long j2, String str) {
        a(i2, -1, j2, str, null);
    }

    public final void a(int i2, int i3, long j2, String str, Exception exc) {
        try {
            f5677c.block();
            if (!this.f5681b.booleanValue() || f5678d == null) {
                return;
            }
            wo.a k2 = wo.k();
            k2.a(this.f5680a.f5992a.getPackageName());
            k2.a(j2);
            if (str != null) {
                k2.d(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                f71.a(exc, new PrintWriter(stringWriter));
                k2.b(stringWriter.toString());
                k2.c(exc.getClass().getName());
            }
            xs1 a2 = f5678d.a(((wo) ((e91) k2.s())).e());
            a2.b(i2);
            if (i3 != -1) {
                a2.a(i3);
            }
            a2.a();
        } catch (Exception unused) {
        }
    }

    public static int a() {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                return ThreadLocalRandom.current().nextInt();
            }
            return b().nextInt();
        } catch (RuntimeException unused) {
            return b().nextInt();
        }
    }
}
