package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class wu1 {

    /* renamed from: a, reason: collision with root package name */
    private final zzaje f10208a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f10209b;

    /* renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.b f10210c;

    /* renamed from: d, reason: collision with root package name */
    private st1 f10211d;

    /* renamed from: e, reason: collision with root package name */
    private zzve f10212e;

    /* renamed from: f, reason: collision with root package name */
    private String f10213f;

    /* renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.o.a f10214g;

    /* renamed from: h, reason: collision with root package name */
    private com.google.android.gms.ads.doubleclick.a f10215h;

    /* renamed from: i, reason: collision with root package name */
    private com.google.android.gms.ads.doubleclick.c f10216i;

    /* renamed from: j, reason: collision with root package name */
    private com.google.android.gms.ads.o.c f10217j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f10218k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f10219l;

    public wu1(Context context) {
        this(context, zt1.f10852a, null);
    }

    public final void a(su1 su1Var) {
        try {
            if (this.f10212e == null) {
                if (this.f10213f == null) {
                    b("loadAd");
                }
                zztw j2 = this.f10218k ? zztw.j() : new zztw();
                eu1 b2 = mu1.b();
                Context context = this.f10209b;
                this.f10212e = new gu1(b2, context, j2, this.f10213f, this.f10208a).a(context, false);
                if (this.f10210c != null) {
                    this.f10212e.zza(new zztl(this.f10210c));
                }
                if (this.f10211d != null) {
                    this.f10212e.zza(new zztk(this.f10211d));
                }
                if (this.f10214g != null) {
                    this.f10212e.zza(new zztq(this.f10214g));
                }
                if (this.f10215h != null) {
                    this.f10212e.zza(new zzty(this.f10215h));
                }
                if (this.f10216i != null) {
                    this.f10212e.zza(new zzzs(this.f10216i));
                }
                if (this.f10217j != null) {
                    this.f10212e.zza(new zzapv(this.f10217j));
                }
                this.f10212e.setImmersiveMode(this.f10219l);
            }
            if (this.f10212e.zza(zt1.a(this.f10209b, su1Var))) {
                this.f10208a.zzf(su1Var.m());
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    public final void b(boolean z) {
        this.f10218k = true;
    }

    public final void b() {
        try {
            b("show");
            this.f10212e.showInterstitial();
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    @VisibleForTesting
    private wu1(Context context, zt1 zt1Var, com.google.android.gms.ads.doubleclick.d dVar) {
        this.f10208a = new zzaje();
        this.f10209b = context;
    }

    private final void b(String str) {
        if (this.f10212e != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
        sb.append("The ad unit ID must be set on InterstitialAd before ");
        sb.append(str);
        sb.append(" is called.");
        throw new IllegalStateException(sb.toString());
    }

    public final void a(com.google.android.gms.ads.b bVar) {
        try {
            this.f10210c = bVar;
            if (this.f10212e != null) {
                this.f10212e.zza(bVar != null ? new zztl(bVar) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    public final void a(st1 st1Var) {
        try {
            this.f10211d = st1Var;
            if (this.f10212e != null) {
                this.f10212e.zza(st1Var != null ? new zztk(st1Var) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    public final void a(String str) {
        if (this.f10213f == null) {
            this.f10213f = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    public final void a(com.google.android.gms.ads.o.a aVar) {
        try {
            this.f10214g = aVar;
            if (this.f10212e != null) {
                this.f10212e.zza(aVar != null ? new zztq(aVar) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    public final Bundle a() {
        try {
            if (this.f10212e != null) {
                return this.f10212e.getAdMetadata();
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
        return new Bundle();
    }

    public final void a(com.google.android.gms.ads.o.c cVar) {
        try {
            this.f10217j = cVar;
            if (this.f10212e != null) {
                this.f10212e.zza(cVar != null ? new zzapv(cVar) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }

    public final void a(boolean z) {
        try {
            this.f10219l = z;
            if (this.f10212e != null) {
                this.f10212e.setImmersiveMode(z);
            }
        } catch (RemoteException e2) {
            qd.d("#008 Must be called on the main UI thread.", e2);
        }
    }
}
