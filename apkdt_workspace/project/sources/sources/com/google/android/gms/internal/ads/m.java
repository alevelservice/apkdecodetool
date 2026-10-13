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
public final class m extends com.google.android.gms.ads.formats.d {

    /* renamed from: a, reason: collision with root package name */
    private final zzabk f7996a;

    /* renamed from: c, reason: collision with root package name */
    private final j f7998c;

    /* renamed from: b, reason: collision with root package name */
    private final List<a.b> f7997b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f7999d = new com.google.android.gms.ads.j();

    public m(zzabk zzabkVar) {
        zzaas zzaasVar;
        IBinder iBinder;
        this.f7996a = zzabkVar;
        j jVar = null;
        try {
            List images = this.f7996a.getImages();
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
                        this.f7997b.add(new j(zzaasVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
        try {
            zzaas zzqm = this.f7996a.zzqm();
            if (zzqm != null) {
                jVar = new j(zzqm);
            }
        } catch (RemoteException e3) {
            qd.b("", e3);
        }
        this.f7998c = jVar;
        try {
            if (this.f7996a.zzqk() != null) {
                new i(this.f7996a.zzqk());
            }
        } catch (RemoteException e4) {
            qd.b("", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.a
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final IObjectWrapper a() {
        try {
            return this.f7996a.zzqi();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.d
    public final CharSequence b() {
        try {
            return this.f7996a.getAdvertiser();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.d
    public final CharSequence c() {
        try {
            return this.f7996a.getBody();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.d
    public final CharSequence d() {
        try {
            return this.f7996a.getCallToAction();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.d
    public final CharSequence e() {
        try {
            return this.f7996a.getHeadline();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.d
    public final List<a.b> f() {
        return this.f7997b;
    }

    @Override // com.google.android.gms.ads.formats.d
    public final a.b g() {
        return this.f7998c;
    }

    @Override // com.google.android.gms.ads.formats.d
    public final com.google.android.gms.ads.j h() {
        try {
            if (this.f7996a.getVideoController() != null) {
                this.f7999d.a(this.f7996a.getVideoController());
            }
        } catch (RemoteException e2) {
            qd.b("Exception occurred while getting video controller", e2);
        }
        return this.f7999d;
    }
}
