package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class uh extends jh implements ug {

    /* renamed from: h, reason: collision with root package name */
    private mg f9731h;

    /* renamed from: i, reason: collision with root package name */
    private String f9732i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9733j;

    /* renamed from: k, reason: collision with root package name */
    private Exception f9734k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f9735l;

    public uh(tf tfVar, qf qfVar) {
        super(tfVar);
        this.f9731h = new mg(tfVar.getContext(), qfVar);
        this.f9731h.a((ug) this);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void a(int i2) {
        this.f9731h.e().c(i2);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void b(int i2) {
        this.f9731h.e().d(i2);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void c(int i2) {
        this.f9731h.e().a(i2);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void d(int i2) {
        this.f9731h.e().b(i2);
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zza(String str, Exception exc) {
        String str2 = (String) mu1.e().a(aw1.q);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.f9734k = exc;
        qd.c("Precache error", exc);
        c(str);
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzb(final boolean z, final long j2) {
        final tf tfVar = this.f7495g.get();
        if (tfVar != null) {
            yd.f10543d.execute(new Runnable(tfVar, z, j2) { // from class: com.google.android.gms.internal.ads.xh

                /* renamed from: e, reason: collision with root package name */
                private final tf f10352e;

                /* renamed from: f, reason: collision with root package name */
                private final boolean f10353f;

                /* renamed from: g, reason: collision with root package name */
                private final long f10354g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10352e = tfVar;
                    this.f10353f = z;
                    this.f10354g = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10352e.zza(this.f10353f, this.f10354g);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzcy(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzm(int i2, int i3) {
    }

    private final void c(String str) {
        synchronized (this) {
            this.f9733j = true;
            notify();
            a();
        }
        String str2 = this.f9732i;
        if (str2 != null) {
            String b2 = b(str2);
            Exception exc = this.f9734k;
            if (exc != null) {
                a(this.f9732i, b2, "badUrl", a(str, exc));
            } else {
                a(this.f9732i, b2, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jh, com.google.android.gms.common.api.j
    public final void a() {
        mg mgVar = this.f9731h;
        if (mgVar != null) {
            mgVar.a((ug) null);
            this.f9731h.c();
        }
        super.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.jh
    public final String b(String str) {
        String valueOf = String.valueOf(super.b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void b() {
        c((String) null);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final boolean a(String str) {
        return a(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r1v27 */
    @Override // com.google.android.gms.internal.ads.jh
    public final boolean a(String str, String[] strArr) {
        String str2;
        long j2;
        long j3;
        long j4;
        ?? r1;
        long j5;
        this.f9732i = str;
        String b2 = b(str);
        String str3 = HummerConstants.HUMMER_ERROR;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                try {
                    uriArr[i2] = Uri.parse(strArr[i2]);
                } catch (Exception e2) {
                    e = e2;
                    String message = e.getMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb.append("Failed to preload url ");
                    sb.append(str);
                    sb.append(" Exception: ");
                    sb.append(message);
                    qd.d(sb.toString());
                    a();
                    a(str, b2, str3, a(str3, e));
                    return false;
                }
            }
            this.f9731h.a(uriArr, this.f7494f);
            tf tfVar = this.f7495g.get();
            if (tfVar != null) {
                tfVar.zza(b2, this);
            }
            com.google.android.gms.common.util.e j6 = com.google.android.gms.ads.internal.n.j();
            long a2 = j6.a();
            long longValue = ((Long) mu1.e().a(aw1.w)).longValue();
            long longValue2 = ((Long) mu1.e().a(aw1.v)).longValue() * 1000;
            long intValue = ((Integer) mu1.e().a(aw1.u)).intValue();
            long j7 = -1;
            while (true) {
                try {
                    synchronized (this) {
                        try {
                            if (j6.a() - a2 <= longValue2) {
                                if (this.f9733j) {
                                    if (this.f9734k != null) {
                                        throw this.f9734k;
                                    }
                                    throw new IOException("Abort requested before buffering finished. ");
                                }
                                if (!this.f9735l) {
                                    zg1 d2 = this.f9731h.d();
                                    if (d2 != null) {
                                        str2 = str3;
                                        try {
                                            long duration = d2.getDuration();
                                            if (duration > 0) {
                                                long c2 = d2.c();
                                                if (c2 != j7) {
                                                    j2 = intValue;
                                                    j3 = longValue2;
                                                    j5 = longValue;
                                                    a(str, b2, c2, duration, c2 > 0, mg.f(), mg.g());
                                                    j7 = c2;
                                                } else {
                                                    j2 = intValue;
                                                    j3 = longValue2;
                                                    j5 = longValue;
                                                }
                                                if (c2 >= duration) {
                                                    a(str, b2, duration);
                                                } else if (this.f9731h.b() < j2 || c2 <= 0) {
                                                    j4 = j7;
                                                    r1 = j5;
                                                }
                                            } else {
                                                j2 = intValue;
                                                j3 = longValue2;
                                                j4 = j7;
                                                r1 = longValue;
                                            }
                                            try {
                                                try {
                                                    wait(r1);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    str3 = r1;
                                                    throw th;
                                                }
                                            } catch (InterruptedException unused) {
                                                throw new IOException("Wait interrupted.");
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str3 = str2;
                                        }
                                    } else {
                                        throw new IOException("ExoPlayer was released during preloading.");
                                    }
                                }
                            } else {
                                long j8 = longValue2;
                                StringBuilder sb2 = new StringBuilder(47);
                                sb2.append("Timeout reached. Limit: ");
                                sb2.append(j8);
                                sb2.append(" ms");
                                throw new IOException(sb2.toString());
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    longValue = r1;
                    j7 = j4;
                    str3 = str2;
                    intValue = j2;
                    longValue2 = j3;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            return true;
        } catch (Exception e3) {
            e = e3;
        }
    }

    public final mg c() {
        synchronized (this) {
            this.f9735l = true;
            notify();
        }
        this.f9731h.a((ug) null);
        mg mgVar = this.f9731h;
        this.f9731h = null;
        return mgVar;
    }

    private static String a(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }
}
