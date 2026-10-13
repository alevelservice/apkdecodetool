package com.google.android.gms.ads.l;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.e;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@KeepForSdk
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private com.google.android.gms.common.a f4617a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private zze f4618b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f4619c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f4620d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @GuardedBy("mAutoDisconnectTaskLock")
    private b f4621e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private final Context f4622f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f4623g;

    /* renamed from: h, reason: collision with root package name */
    private final long f4624h;

    @KeepForSdkWithMembers
    /* renamed from: com.google.android.gms.ads.l.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0077a {

        /* renamed from: a, reason: collision with root package name */
        private final String f4625a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f4626b;

        public C0077a(String str, boolean z) {
            this.f4625a = str;
            this.f4626b = z;
        }

        public final String a() {
            return this.f4625a;
        }

        public final boolean b() {
            return this.f4626b;
        }

        public final String toString() {
            String str = this.f4625a;
            boolean z = this.f4626b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b extends Thread {

        /* renamed from: e, reason: collision with root package name */
        private WeakReference<a> f4627e;

        /* renamed from: f, reason: collision with root package name */
        private long f4628f;

        /* renamed from: g, reason: collision with root package name */
        CountDownLatch f4629g = new CountDownLatch(1);

        /* renamed from: h, reason: collision with root package name */
        boolean f4630h = false;

        public b(a aVar, long j2) {
            this.f4627e = new WeakReference<>(aVar);
            this.f4628f = j2;
            start();
        }

        private final void a() {
            a aVar = this.f4627e.get();
            if (aVar != null) {
                aVar.a();
                this.f4630h = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f4629g.await(this.f4628f, TimeUnit.MILLISECONDS)) {
                    return;
                }
                a();
            } catch (InterruptedException unused) {
                a();
            }
        }
    }

    @KeepForSdk
    public a(Context context) {
        this(context, 30000L, false, false);
    }

    @VisibleForTesting
    private a(Context context, long j2, boolean z, boolean z2) {
        Context applicationContext;
        this.f4620d = new Object();
        m.a(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4622f = context;
        this.f4619c = false;
        this.f4624h = j2;
        this.f4623g = z2;
    }

    @KeepForSdk
    public static C0077a a(Context context) {
        c cVar = new c(context);
        boolean a2 = cVar.a("gads:ad_id_app_context:enabled", false);
        float a3 = cVar.a("gads:ad_id_app_context:ping_ratio", 0.0f);
        String a4 = cVar.a("gads:ad_id_use_shared_preference:experiment_id", "");
        a aVar = new a(context, -1L, a2, cVar.a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            aVar.b(false);
            C0077a b2 = aVar.b();
            aVar.a(b2, a2, a3, SystemClock.elapsedRealtime() - elapsedRealtime, a4, null);
            return b2;
        } finally {
        }
    }

    private static com.google.android.gms.common.a a(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int a2 = com.google.android.gms.common.d.a().a(context, h.f5182a);
            if (a2 != 0 && a2 != 2) {
                throw new IOException("Google Play services not available");
            }
            String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
            com.google.android.gms.common.a aVar = new com.google.android.gms.common.a();
            Intent intent = new Intent(str);
            intent.setPackage("com.google.android.gms");
            try {
                if (com.google.android.gms.common.stats.a.a().a(context, intent, aVar, 1)) {
                    return aVar;
                }
                throw new IOException("Connection failure");
            } catch (Throwable th) {
                throw new IOException(th);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new e(9);
        }
    }

    @VisibleForTesting
    private static zze a(Context context, com.google.android.gms.common.a aVar) {
        try {
            return zzf.zza(aVar.a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    @KeepForSdk
    public static void a(boolean z) {
    }

    @VisibleForTesting
    private final boolean a(C0077a c0077a, boolean z, float f2, long j2, String str, Throwable th) {
        if (Math.random() > f2) {
            return false;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("app_context", z ? "1" : ZimPlatform.REASON_0);
        if (c0077a != null) {
            hashMap.put("limit_ad_tracking", c0077a.b() ? "1" : ZimPlatform.REASON_0);
        }
        if (c0077a != null && c0077a.a() != null) {
            hashMap.put("ad_id_size", Integer.toString(c0077a.a().length()));
        }
        if (th != null) {
            hashMap.put(HummerConstants.HUMMER_ERROR, th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j2));
        new com.google.android.gms.ads.l.b(this, hashMap).start();
        return true;
    }

    @VisibleForTesting
    private final void b(boolean z) {
        m.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f4619c) {
                a();
            }
            this.f4617a = a(this.f4622f, this.f4623g);
            this.f4618b = a(this.f4622f, this.f4617a);
            this.f4619c = true;
            if (z) {
                d();
            }
        }
    }

    @KeepForSdk
    public static boolean b(Context context) {
        c cVar = new c(context);
        a aVar = new a(context, -1L, cVar.a("gads:ad_id_app_context:enabled", false), cVar.a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            aVar.b(false);
            return aVar.e();
        } finally {
            aVar.a();
        }
    }

    private final void d() {
        synchronized (this.f4620d) {
            if (this.f4621e != null) {
                this.f4621e.f4629g.countDown();
                try {
                    this.f4621e.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f4624h > 0) {
                this.f4621e = new b(this, this.f4624h);
            }
        }
    }

    private final boolean e() {
        boolean zzc;
        m.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f4619c) {
                synchronized (this.f4620d) {
                    if (this.f4621e == null || !this.f4621e.f4630h) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    b(false);
                    if (!this.f4619c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
            m.a(this.f4617a);
            m.a(this.f4618b);
            try {
                zzc = this.f4618b.zzc();
            } catch (RemoteException unused) {
                throw new IOException("Remote exception");
            }
        }
        d();
        return zzc;
    }

    public final void a() {
        m.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f4622f == null || this.f4617a == null) {
                return;
            }
            try {
                if (this.f4619c) {
                    com.google.android.gms.common.stats.a.a().a(this.f4622f, this.f4617a);
                }
            } catch (Throwable unused) {
            }
            this.f4619c = false;
            this.f4618b = null;
            this.f4617a = null;
        }
    }

    @KeepForSdk
    public C0077a b() {
        C0077a c0077a;
        m.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f4619c) {
                synchronized (this.f4620d) {
                    if (this.f4621e == null || !this.f4621e.f4630h) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    b(false);
                    if (!this.f4619c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
            m.a(this.f4617a);
            m.a(this.f4618b);
            try {
                c0077a = new C0077a(this.f4618b.getId(), this.f4618b.zzb(true));
            } catch (RemoteException unused) {
                throw new IOException("Remote exception");
            }
        }
        d();
        return c0077a;
    }

    @KeepForSdk
    public void c() {
        b(true);
    }

    protected void finalize() {
        a();
        super.finalize();
    }
}
