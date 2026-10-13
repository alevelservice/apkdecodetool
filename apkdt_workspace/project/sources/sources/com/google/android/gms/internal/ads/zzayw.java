package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class zzayw extends zzaya implements TextureView.SurfaceTextureListener, ug {

    /* renamed from: e, reason: collision with root package name */
    private final tf f11021e;

    /* renamed from: f, reason: collision with root package name */
    private final sf f11022f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f11023g;

    /* renamed from: h, reason: collision with root package name */
    private final qf f11024h;

    /* renamed from: i, reason: collision with root package name */
    private cf f11025i;

    /* renamed from: j, reason: collision with root package name */
    private Surface f11026j;

    /* renamed from: k, reason: collision with root package name */
    private mg f11027k;

    /* renamed from: l, reason: collision with root package name */
    private String f11028l;
    private String[] m;
    private boolean n;
    private int o;
    private rf p;
    private final boolean q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private int w;
    private float x;

    public zzayw(Context context, sf sfVar, tf tfVar, boolean z, boolean z2, qf qfVar) {
        super(context);
        this.o = 1;
        this.f11023g = z2;
        this.f11021e = tfVar;
        this.f11022f = sfVar;
        this.q = z;
        this.f11024h = qfVar;
        setSurfaceTextureListener(this);
        this.f11022f.a(this);
    }

    private final mg a() {
        return new mg(this.f11021e.getContext(), this.f11024h);
    }

    private final String b() {
        return com.google.android.gms.ads.internal.n.c().a(this.f11021e.getContext(), this.f11021e.zzxp().f11000e);
    }

    private final boolean c() {
        return (this.f11027k == null || this.n) ? false : true;
    }

    private final boolean d() {
        return c() && this.o != 1;
    }

    private final void e() {
        String str;
        if (this.f11027k != null || (str = this.f11028l) == null || this.f11026j == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            jh zzez = this.f11021e.zzez(this.f11028l);
            if (zzez instanceof uh) {
                this.f11027k = ((uh) zzez).c();
            } else if (zzez instanceof vh) {
                vh vhVar = (vh) zzez;
                String b2 = b();
                ByteBuffer c2 = vhVar.c();
                boolean e2 = vhVar.e();
                String d2 = vhVar.d();
                if (d2 == null) {
                    qd.d("Stream cache URL is null.");
                    return;
                } else {
                    this.f11027k = a();
                    this.f11027k.a(new Uri[]{Uri.parse(d2)}, b2, c2, e2);
                }
            } else {
                String valueOf = String.valueOf(this.f11028l);
                qd.d(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            }
        } else {
            this.f11027k = a();
            String b3 = b();
            Uri[] uriArr = new Uri[this.m.length];
            int i2 = 0;
            while (true) {
                String[] strArr = this.m;
                if (i2 >= strArr.length) {
                    break;
                }
                uriArr[i2] = Uri.parse(strArr[i2]);
                i2++;
            }
            this.f11027k.a(uriArr, b3);
        }
        this.f11027k.a((ug) this);
        a(this.f11026j, false);
        this.o = this.f11027k.d().getPlaybackState();
        if (this.o == 3) {
            f();
        }
    }

    private final void f() {
        if (this.r) {
            return;
        }
        this.r = true;
        wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.yf

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f10550e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10550e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10550e.zzyj();
            }
        });
        zzwq();
        this.f11022f.b();
        if (this.s) {
            play();
        }
    }

    private final void g() {
        a(this.t, this.u);
    }

    private final void h() {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.b(true);
        }
    }

    private final void i() {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.b(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getCurrentPosition() {
        if (d()) {
            return (int) this.f11027k.d().b();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getDuration() {
        if (d()) {
            return (int) this.f11027k.d().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getVideoHeight() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getVideoWidth() {
        return this.t;
    }

    @Override // android.view.View
    protected final void onMeasure(int i2, int i3) {
        int i4;
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = this.x;
        if (f2 != 0.0f && this.p == null) {
            float f3 = measuredWidth;
            float f4 = f3 / measuredHeight;
            if (f2 > f4) {
                measuredHeight = (int) (f3 / f2);
            }
            float f5 = this.x;
            if (f5 < f4) {
                measuredWidth = (int) (measuredHeight * f5);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        rf rfVar = this.p;
        if (rfVar != null) {
            rfVar.a(measuredWidth, measuredHeight);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i5 = this.v;
            if (((i5 > 0 && i5 != measuredWidth) || ((i4 = this.w) > 0 && i4 != measuredHeight)) && this.f11023g && c()) {
                zg1 d2 = this.f11027k.d();
                if (d2.b() > 0 && !d2.d()) {
                    a(0.0f, true);
                    d2.a(true);
                    long b2 = d2.b();
                    long a2 = com.google.android.gms.ads.internal.n.j().a();
                    while (c() && d2.b() == b2 && com.google.android.gms.ads.internal.n.j().a() - a2 <= 250) {
                    }
                    d2.a(false);
                    zzwq();
                }
            }
            this.v = measuredWidth;
            this.w = measuredHeight;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        if (this.q) {
            this.p = new rf(getContext());
            this.p.a(surfaceTexture, i2, i3);
            this.p.start();
            SurfaceTexture b2 = this.p.b();
            if (b2 != null) {
                surfaceTexture = b2;
            } else {
                this.p.a();
                this.p = null;
            }
        }
        this.f11026j = new Surface(surfaceTexture);
        if (this.f11027k == null) {
            e();
        } else {
            a(this.f11026j, true);
            if (!this.f11024h.f8880a) {
                h();
            }
        }
        if (this.t != 0 && this.u != 0) {
            g();
        } else {
            a(i2, i3);
        }
        wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cg

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f6005e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6005e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6005e.zzyf();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        rf rfVar = this.p;
        if (rfVar != null) {
            rfVar.a();
            this.p = null;
        }
        if (this.f11027k != null) {
            i();
            Surface surface = this.f11026j;
            if (surface != null) {
                surface.release();
            }
            this.f11026j = null;
            a((Surface) null, true);
        }
        wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.eg

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f6415e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6415e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6415e.zzye();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i2, final int i3) {
        rf rfVar = this.p;
        if (rfVar != null) {
            rfVar.a(i2, i3);
        }
        wa.f10063h.post(new Runnable(this, i2, i3) { // from class: com.google.android.gms.internal.ads.fg

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f6637e;

            /* renamed from: f, reason: collision with root package name */
            private final int f6638f;

            /* renamed from: g, reason: collision with root package name */
            private final int f6639g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6637e = this;
                this.f6638f = i2;
                this.f6639g = i3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6637e.zzo(this.f6638f, this.f6639g);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11022f.b(this);
        this.zzdxk.a(surfaceTexture, this.f11025i);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i2);
        na.e(sb.toString());
        wa.f10063h.post(new Runnable(this, i2) { // from class: com.google.android.gms.internal.ads.hg

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f7061e;

            /* renamed from: f, reason: collision with root package name */
            private final int f7062f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7061e = this;
                this.f7062f = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7061e.zzcz(this.f7062f);
            }
        });
        super.onWindowVisibilityChanged(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void pause() {
        if (d()) {
            if (this.f11024h.f8880a) {
                i();
            }
            this.f11027k.d().a(false);
            this.f11022f.d();
            this.zzdxl.c();
            wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.dg

                /* renamed from: e, reason: collision with root package name */
                private final zzayw f6215e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6215e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6215e.zzyg();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void play() {
        if (d()) {
            if (this.f11024h.f8880a) {
                h();
            }
            this.f11027k.d().a(true);
            this.f11022f.c();
            this.zzdxl.b();
            this.zzdxk.a();
            wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ag

                /* renamed from: e, reason: collision with root package name */
                private final zzayw f5568e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5568e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5568e.zzyh();
                }
            });
            return;
        }
        this.s = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void seekTo(int i2) {
        if (d()) {
            this.f11027k.d().seekTo(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void setVideoPath(String str) {
        if (str != null) {
            this.f11028l = str;
            this.m = new String[]{str};
            e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void stop() {
        if (c()) {
            this.f11027k.d().stop();
            if (this.f11027k != null) {
                a((Surface) null, true);
                mg mgVar = this.f11027k;
                if (mgVar != null) {
                    mgVar.a((ug) null);
                    this.f11027k.c();
                    this.f11027k = null;
                }
                this.o = 1;
                this.n = false;
                this.r = false;
                this.s = false;
            }
        }
        this.f11022f.d();
        this.zzdxl.c();
        this.f11022f.a();
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zza(cf cfVar) {
        this.f11025i = cfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.f11028l = str;
            this.m = (String[]) Arrays.copyOf(strArr, strArr.length);
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(boolean z, long j2) {
        this.f11021e.zza(z, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzct(int i2) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.e().c(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzcu(int i2) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.e().d(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzcv(int i2) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.e().a(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzcw(int i2) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.e().b(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzcx(int i2) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.a(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzcy(int i2) {
        if (this.o != i2) {
            this.o = i2;
            if (i2 == 3) {
                f();
                return;
            }
            if (i2 != 4) {
                return;
            }
            if (this.f11024h.f8880a) {
                i();
            }
            this.f11022f.d();
            this.zzdxl.c();
            wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.xf

                /* renamed from: e, reason: collision with root package name */
                private final zzayw f10333e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10333e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10333e.zzyi();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzcz(int i2) {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.onWindowVisibilityChanged(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzfa(String str) {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzn("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzm(int i2, int i3) {
        this.t = i2;
        this.u = i3;
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(int i2, int i3) {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzj(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final String zzwm() {
        String str = this.q ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzaya, com.google.android.gms.internal.ads.wf
    public final void zzwq() {
        a(this.zzdxl.a(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzye() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzwu();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzyf() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzwr();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzyg() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.onPaused();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzyh() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzws();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzyi() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzwt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzyj() {
        cf cfVar = this.f11025i;
        if (cfVar != null) {
            cfVar.zzei();
        }
    }

    private final void a(Surface surface, boolean z) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.a(surface, z);
        } else {
            qd.d("Trying to set surface before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zza(float f2, float f3) {
        rf rfVar = this.p;
        if (rfVar != null) {
            rfVar.a(f2, f3);
        }
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        final String sb2 = sb.toString();
        String valueOf = String.valueOf(sb2);
        qd.d(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.n = true;
        if (this.f11024h.f8880a) {
            i();
        }
        wa.f10063h.post(new Runnable(this, sb2) { // from class: com.google.android.gms.internal.ads.bg

            /* renamed from: e, reason: collision with root package name */
            private final zzayw f5771e;

            /* renamed from: f, reason: collision with root package name */
            private final String f5772f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5771e = this;
                this.f5772f = sb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5771e.zzfa(this.f5772f);
            }
        });
    }

    private final void a(float f2, boolean z) {
        mg mgVar = this.f11027k;
        if (mgVar != null) {
            mgVar.a(f2, z);
        } else {
            qd.d("Trying to set volume before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ug
    public final void zzb(final boolean z, final long j2) {
        if (this.f11021e != null) {
            yd.f10543d.execute(new Runnable(this, z, j2) { // from class: com.google.android.gms.internal.ads.gg

                /* renamed from: e, reason: collision with root package name */
                private final zzayw f6868e;

                /* renamed from: f, reason: collision with root package name */
                private final boolean f6869f;

                /* renamed from: g, reason: collision with root package name */
                private final long f6870g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6868e = this;
                    this.f6869f = z;
                    this.f6870g = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6868e.zzc(this.f6869f, this.f6870g);
                }
            });
        }
    }

    private final void a(int i2, int i3) {
        float f2 = i3 > 0 ? i2 / i3 : 1.0f;
        if (this.x != f2) {
            this.x = f2;
            requestLayout();
        }
    }
}
