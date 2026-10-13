package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class qg1 {

    /* renamed from: a, reason: collision with root package name */
    private final cf1 f8899a;

    /* renamed from: b, reason: collision with root package name */
    private final String f8900b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8901c;

    /* renamed from: e, reason: collision with root package name */
    private final Class<?>[] f8903e;

    /* renamed from: d, reason: collision with root package name */
    private volatile Method f8902d = null;

    /* renamed from: f, reason: collision with root package name */
    private CountDownLatch f8904f = new CountDownLatch(1);

    public qg1(cf1 cf1Var, String str, String str2, Class<?>... clsArr) {
        this.f8899a = cf1Var;
        this.f8900b = str;
        this.f8901c = str2;
        this.f8903e = clsArr;
        this.f8899a.d().submit(new pg1(this));
    }

    private final String a(byte[] bArr, String str) {
        return new String(this.f8899a.f().a(bArr, str), "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        try {
            Class loadClass = this.f8899a.e().loadClass(a(this.f8899a.g(), this.f8900b));
            if (loadClass == null) {
                return;
            }
            this.f8902d = loadClass.getMethod(a(this.f8899a.g(), this.f8901c), this.f8903e);
            if (this.f8902d == null) {
            }
        } catch (l51 unused) {
        } catch (UnsupportedEncodingException unused2) {
        } catch (ClassNotFoundException unused3) {
        } catch (NoSuchMethodException unused4) {
        } catch (NullPointerException unused5) {
        } finally {
            this.f8904f.countDown();
        }
    }

    public final Method a() {
        if (this.f8902d != null) {
            return this.f8902d;
        }
        try {
            if (this.f8904f.await(2L, TimeUnit.SECONDS)) {
                return this.f8902d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
