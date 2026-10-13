package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class l extends com.google.android.gms.ads.formats.c {

    /* renamed from: a, reason: collision with root package name */
    private final zzabg f7780a;

    /* renamed from: c, reason: collision with root package name */
    private final j f7782c;

    /* renamed from: b, reason: collision with root package name */
    private final List<a.b> f7781b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f7783d = new com.google.android.gms.ads.j();

    public l(zzabg zzabgVar) {
        zzaas zzaasVar;
        IBinder iBinder;
        this.f7780a = zzabgVar;
        j jVar = null;
        try {
            List images = this.f7780a.getImages();
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
                        this.f7781b.add(new j(zzaasVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
        try {
            zzaas zzqj = this.f7780a.zzqj();
            if (zzqj != null) {
                jVar = new j(zzqj);
            }
        } catch (RemoteException e3) {
            qd.b("", e3);
        }
        this.f7782c = jVar;
        try {
            if (this.f7780a.zzqk() != null) {
                new i(this.f7780a.zzqk());
            }
        } catch (RemoteException e4) {
            qd.b("", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.a
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final IObjectWrapper a() {
        try {
            return this.f7780a.zzqi();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final CharSequence b() {
        try {
            return this.f7780a.getBody();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final CharSequence c() {
        try {
            return this.f7780a.getCallToAction();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final CharSequence d() {
        try {
            return this.f7780a.getHeadline();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final a.b e() {
        return this.f7782c;
    }

    @Override // com.google.android.gms.ads.formats.c
    public final List<a.b> f() {
        return this.f7781b;
    }

    @Override // com.google.android.gms.ads.formats.c
    public final CharSequence g() {
        try {
            return this.f7780a.getPrice();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final Double h() {
        try {
            double starRating = this.f7780a.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final CharSequence i() {
        try {
            return this.f7780a.getStore();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.c
    public final com.google.android.gms.ads.j j() {
        try {
            if (this.f7780a.getVideoController() != null) {
                this.f7783d.a(this.f7780a.getVideoController());
            }
        } catch (RemoteException e2) {
            qd.b("Exception occurred while getting video controller", e2);
        }
        return this.f7783d;
    }
}
