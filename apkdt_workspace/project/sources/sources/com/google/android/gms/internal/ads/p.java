package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class p extends com.google.android.gms.ads.formats.h {

    /* renamed from: a, reason: collision with root package name */
    private final zzacq f8606a;

    /* renamed from: c, reason: collision with root package name */
    private final j f8608c;

    /* renamed from: b, reason: collision with root package name */
    private final List<a.b> f8607b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f8609d = new com.google.android.gms.ads.j();

    /* renamed from: e, reason: collision with root package name */
    private final List<com.google.android.gms.ads.h> f8610e = new ArrayList();

    public p(zzacq zzacqVar) {
        zzaas zzaasVar;
        IBinder iBinder;
        this.f8606a = zzacqVar;
        j jVar = null;
        try {
            List images = this.f8606a.getImages();
            if (images != null) {
                for (Object obj : images) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzaasVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        if (queryLocalInterface instanceof zzaas) {
                            zzaasVar = (zzaas) queryLocalInterface;
                        } else {
                            zzaasVar = new zzaau(iBinder);
                        }
                    }
                    if (zzaasVar != null) {
                        this.f8607b.add(new j(zzaasVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
        try {
            List muteThisAdReasons = this.f8606a.getMuteThisAdReasons();
            if (muteThisAdReasons != null) {
                for (Object obj2 : muteThisAdReasons) {
                    zzwb zzg = obj2 instanceof IBinder ? zzwe.zzg((IBinder) obj2) : null;
                    if (zzg != null) {
                        this.f8610e.add(new pu1(zzg));
                    }
                }
            }
        } catch (RemoteException e3) {
            qd.b("", e3);
        }
        try {
            zzaas zzqj = this.f8606a.zzqj();
            if (zzqj != null) {
                jVar = new j(zzqj);
            }
        } catch (RemoteException e4) {
            qd.b("", e4);
        }
        this.f8608c = jVar;
        try {
            if (this.f8606a.zzqk() != null) {
                new i(this.f8606a.zzqk());
            }
        } catch (RemoteException e5) {
            qd.b("", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final IObjectWrapper k() {
        try {
            return this.f8606a.zzqi();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String a() {
        try {
            return this.f8606a.getAdvertiser();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String b() {
        try {
            return this.f8606a.getBody();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String c() {
        try {
            return this.f8606a.getCallToAction();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String d() {
        try {
            return this.f8606a.getHeadline();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final a.b e() {
        return this.f8608c;
    }

    @Override // com.google.android.gms.ads.formats.h
    public final List<a.b> f() {
        return this.f8607b;
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String g() {
        try {
            return this.f8606a.getPrice();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final Double h() {
        try {
            double starRating = this.f8606a.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final String i() {
        try {
            return this.f8606a.getStore();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.h
    public final com.google.android.gms.ads.j j() {
        try {
            if (this.f8606a.getVideoController() != null) {
                this.f8609d.a(this.f8606a.getVideoController());
            }
        } catch (RemoteException e2) {
            qd.b("Exception occurred while getting video controller", e2);
        }
        return this.f8609d;
    }

    @Override // com.google.android.gms.ads.formats.h
    public final Object l() {
        try {
            IObjectWrapper zzql = this.f8606a.zzql();
            if (zzql != null) {
                return ObjectWrapper.unwrap(zzql);
            }
            return null;
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }
}
