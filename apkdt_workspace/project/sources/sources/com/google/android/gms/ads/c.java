package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.d;
import com.google.android.gms.ads.formats.e;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.su1;
import com.google.android.gms.internal.ads.zt1;
import com.google.android.gms.internal.ads.zzaai;
import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzacx;
import com.google.android.gms.internal.ads.zzacy;
import com.google.android.gms.internal.ads.zzada;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzaje;
import com.google.android.gms.internal.ads.zztl;
import com.google.android.gms.internal.ads.zzuw;
import com.google.android.gms.internal.ads.zzux;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4466a;

    /* renamed from: b, reason: collision with root package name */
    private final zzuw f4467b;

    c(Context context, zzuw zzuwVar) {
        this(context, zzuwVar, zt1.f10852a);
    }

    private final void a(su1 su1Var) {
        try {
            this.f4467b.zzb(zt1.a(this.f4466a, su1Var));
        } catch (RemoteException e2) {
            qd.b("Failed to load ad.", e2);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final Context f4468a;

        /* renamed from: b, reason: collision with root package name */
        private final zzux f4469b;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Context context, String str) {
            this(context, mu1.b().a(context, str, new zzaje()));
            m.a(context, "context cannot be null");
        }

        @Deprecated
        public a a(d.a aVar) {
            try {
                this.f4469b.zza(new zzacy(aVar));
            } catch (RemoteException e2) {
                qd.c("Failed to add content ad listener", e2);
            }
            return this;
        }

        @Deprecated
        public a a(c.a aVar) {
            try {
                this.f4469b.zza(new zzacv(aVar));
            } catch (RemoteException e2) {
                qd.c("Failed to add app install ad listener", e2);
            }
            return this;
        }

        private a(Context context, zzux zzuxVar) {
            this.f4468a = context;
            this.f4469b = zzuxVar;
        }

        public a a(h.b bVar) {
            try {
                this.f4469b.zza(new zzadb(bVar));
            } catch (RemoteException e2) {
                qd.c("Failed to add google native ad listener", e2);
            }
            return this;
        }

        public a a(String str, e.b bVar, e.a aVar) {
            try {
                this.f4469b.zza(str, new zzada(bVar), aVar == null ? null : new zzacx(aVar));
            } catch (RemoteException e2) {
                qd.c("Failed to add custom template ad listener", e2);
            }
            return this;
        }

        public a a(b bVar) {
            try {
                this.f4469b.zzb(new zztl(bVar));
            } catch (RemoteException e2) {
                qd.c("Failed to set AdListener.", e2);
            }
            return this;
        }

        public a a(NativeAdOptions nativeAdOptions) {
            try {
                this.f4469b.zza(new zzaai(nativeAdOptions));
            } catch (RemoteException e2) {
                qd.c("Failed to specify native ad options", e2);
            }
            return this;
        }

        public c a() {
            try {
                return new c(this.f4468a, this.f4469b.zzon());
            } catch (RemoteException e2) {
                qd.b("Failed to build AdLoader.", e2);
                return null;
            }
        }
    }

    private c(Context context, zzuw zzuwVar, zt1 zt1Var) {
        this.f4466a = context;
        this.f4467b = zzuwVar;
    }

    @RequiresPermission("android.permission.INTERNET")
    public void a(AdRequest adRequest) {
        a(adRequest.a());
    }
}
