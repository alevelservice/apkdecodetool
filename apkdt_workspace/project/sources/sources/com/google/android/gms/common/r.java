package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@CheckReturnValue
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private static volatile zzn f5359a;

    /* renamed from: b, reason: collision with root package name */
    private static final Object f5360b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static Context f5361c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(Context context) {
        synchronized (r.class) {
            if (f5361c != null || context == null) {
                return;
            }
            f5361c = context.getApplicationContext();
        }
    }

    private static u b(final String str, final zzd zzdVar, final boolean z, boolean z2) {
        try {
            if (f5359a == null) {
                m.a(f5361c);
                synchronized (f5360b) {
                    if (f5359a == null) {
                        f5359a = zzm.zzc(DynamiteModule.a(f5361c, DynamiteModule.f5462k, "com.google.android.gms.googlecertificates").a("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            m.a(f5361c);
            try {
                if (f5359a.zza(new zzj(str, zzdVar, z, z2), ObjectWrapper.wrap(f5361c.getPackageManager()))) {
                    return u.c();
                }
                return u.a((Callable<String>) new Callable(z, str, zzdVar) { // from class: com.google.android.gms.common.s

                    /* renamed from: e, reason: collision with root package name */
                    private final boolean f5362e;

                    /* renamed from: f, reason: collision with root package name */
                    private final String f5363f;

                    /* renamed from: g, reason: collision with root package name */
                    private final zzd f5364g;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5362e = z;
                        this.f5363f = str;
                        this.f5364g = zzdVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        String a2;
                        a2 = u.a(this.f5363f, this.f5364g, this.f5362e, !r3 && r.b(r4, r5, true, false).f5415a);
                        return a2;
                    }
                });
            } catch (RemoteException e2) {
                return u.a("module call", e2);
            }
        } catch (DynamiteModule.a e3) {
            String valueOf = String.valueOf(e3.getMessage());
            return u.a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u a(String str, zzd zzdVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return b(str, zzdVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
