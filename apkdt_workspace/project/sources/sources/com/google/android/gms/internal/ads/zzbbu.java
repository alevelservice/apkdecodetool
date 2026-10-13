package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbbu extends zzwj {

    /* renamed from: e, reason: collision with root package name */
    private final tf f11032e;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f11034g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f11035h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("lock")
    private int f11036i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("lock")
    private zzwl f11037j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f11038k;

    @GuardedBy("lock")
    private float m;

    @GuardedBy("lock")
    private float n;

    @GuardedBy("lock")
    private float o;

    @GuardedBy("lock")
    private boolean p;

    @GuardedBy("lock")
    private boolean q;

    /* renamed from: f, reason: collision with root package name */
    private final Object f11033f = new Object();

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f11039l = true;

    public zzbbu(tf tfVar, float f2, boolean z, boolean z2) {
        this.f11032e = tfVar;
        this.m = f2;
        this.f11034g = z;
        this.f11035h = z2;
    }

    private final void a(String str, @Nullable Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        yd.f10543d.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.yi

            /* renamed from: e, reason: collision with root package name */
            private final zzbbu f10566e;

            /* renamed from: f, reason: collision with root package name */
            private final Map f10567f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10566e = this;
                this.f10567f = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10566e.zzj(this.f10567f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float getAspectRatio() {
        float f2;
        synchronized (this.f11033f) {
            f2 = this.o;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final int getPlaybackState() {
        int i2;
        synchronized (this.f11033f) {
            i2 = this.f11036i;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isClickToExpandEnabled() {
        boolean z;
        boolean isCustomControlsEnabled = isCustomControlsEnabled();
        synchronized (this.f11033f) {
            if (!isCustomControlsEnabled) {
                try {
                    z = this.q && this.f11035h;
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.f11033f) {
            z = this.f11034g && this.p;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isMuted() {
        boolean z;
        synchronized (this.f11033f) {
            z = this.f11039l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void mute(boolean z) {
        a(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void pause() {
        a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void play() {
        a("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void stop() {
        a("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzwl zzwlVar) {
        synchronized (this.f11033f) {
            this.f11037j = zzwlVar;
        }
    }

    public final void zzaal() {
        boolean z;
        int i2;
        synchronized (this.f11033f) {
            z = this.f11039l;
            i2 = this.f11036i;
            this.f11036i = 3;
        }
        a(i2, 3, z, z);
    }

    public final void zzb(zzyc zzycVar) {
        boolean z = zzycVar.f11274e;
        boolean z2 = zzycVar.f11275f;
        boolean z3 = zzycVar.f11276g;
        synchronized (this.f11033f) {
            this.p = z2;
            this.q = z3;
        }
        a("initialState", com.google.android.gms.common.util.f.a("muteStart", z ? "1" : ZimPlatform.REASON_0, "customControlsRequested", z2 ? "1" : ZimPlatform.REASON_0, "clickToExpandRequested", z3 ? "1" : ZimPlatform.REASON_0));
    }

    public final void zze(float f2) {
        synchronized (this.f11033f) {
            this.n = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(Map map) {
        this.f11032e.zza("pubVideoCmd", (Map<String, ?>) map);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzot() {
        float f2;
        synchronized (this.f11033f) {
            f2 = this.m;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzou() {
        float f2;
        synchronized (this.f11033f) {
            f2 = this.n;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final zzwl zzov() {
        zzwl zzwlVar;
        synchronized (this.f11033f) {
            zzwlVar = this.f11037j;
        }
        return zzwlVar;
    }

    private final void a(final int i2, final int i3, final boolean z, final boolean z2) {
        yd.f10543d.execute(new Runnable(this, i2, i3, z, z2) { // from class: com.google.android.gms.internal.ads.xi

            /* renamed from: e, reason: collision with root package name */
            private final zzbbu f10362e;

            /* renamed from: f, reason: collision with root package name */
            private final int f10363f;

            /* renamed from: g, reason: collision with root package name */
            private final int f10364g;

            /* renamed from: h, reason: collision with root package name */
            private final boolean f10365h;

            /* renamed from: i, reason: collision with root package name */
            private final boolean f10366i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10362e = this;
                this.f10363f = i2;
                this.f10364g = i3;
                this.f10365h = z;
                this.f10366i = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10362e.zzb(this.f10363f, this.f10364g, this.f10365h, this.f10366i);
            }
        });
    }

    public final void zza(float f2, float f3, int i2, boolean z, float f4) {
        boolean z2;
        int i3;
        synchronized (this.f11033f) {
            this.m = f3;
            this.n = f2;
            z2 = this.f11039l;
            this.f11039l = z;
            i3 = this.f11036i;
            this.f11036i = i2;
            float f5 = this.o;
            this.o = f4;
            if (Math.abs(this.o - f5) > 1.0E-4f) {
                this.f11032e.getView().invalidate();
            }
        }
        a(i3, i2, z2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(int i2, int i3, boolean z, boolean z2) {
        synchronized (this.f11033f) {
            boolean z3 = i2 != i3;
            boolean z4 = !this.f11038k && i3 == 1;
            boolean z5 = z3 && i3 == 1;
            boolean z6 = z3 && i3 == 2;
            boolean z7 = z3 && i3 == 3;
            boolean z8 = z != z2;
            this.f11038k = this.f11038k || z4;
            if (z4) {
                try {
                    if (this.f11037j != null) {
                        this.f11037j.onVideoStart();
                    }
                } catch (RemoteException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
            if (z5 && this.f11037j != null) {
                this.f11037j.onVideoPlay();
            }
            if (z6 && this.f11037j != null) {
                this.f11037j.onVideoPause();
            }
            if (z7) {
                if (this.f11037j != null) {
                    this.f11037j.onVideoEnd();
                }
                this.f11032e.zzxs();
            }
            if (z8 && this.f11037j != null) {
                this.f11037j.onVideoMute(z2);
            }
        }
    }
}
