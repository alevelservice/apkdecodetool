package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzwk;
import com.google.android.gms.internal.ads.zzxz;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private final Object f4611a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private zzwk f4612b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private a f4613c;

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public static abstract class a {
        public void a() {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }

    public final void a(zzwk zzwkVar) {
        synchronized (this.f4611a) {
            this.f4612b = zzwkVar;
            if (this.f4613c != null) {
                a(this.f4613c);
            }
        }
    }

    public final zzwk a() {
        zzwk zzwkVar;
        synchronized (this.f4611a) {
            zzwkVar = this.f4612b;
        }
        return zzwkVar;
    }

    public final void a(a aVar) {
        m.a(aVar, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f4611a) {
            this.f4613c = aVar;
            if (this.f4612b == null) {
                return;
            }
            try {
                this.f4612b.zza(new zzxz(aVar));
            } catch (RemoteException e2) {
                qd.b("Unable to call setVideoLifecycleCallbacks on video controller.", e2);
            }
        }
    }
}
