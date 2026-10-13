package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class zzaxr extends zzaya implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> s = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private final sf f11005e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f11006f;

    /* renamed from: g, reason: collision with root package name */
    private int f11007g;

    /* renamed from: h, reason: collision with root package name */
    private int f11008h;

    /* renamed from: i, reason: collision with root package name */
    private MediaPlayer f11009i;

    /* renamed from: j, reason: collision with root package name */
    private Uri f11010j;

    /* renamed from: k, reason: collision with root package name */
    private int f11011k;

    /* renamed from: l, reason: collision with root package name */
    private int f11012l;
    private int m;
    private int n;
    private rf o;
    private boolean p;
    private int q;
    private cf r;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            s.put(-1004, "MEDIA_ERROR_IO");
            s.put(-1007, "MEDIA_ERROR_MALFORMED");
            s.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            s.put(-110, "MEDIA_ERROR_TIMED_OUT");
            s.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        s.put(100, "MEDIA_ERROR_SERVER_DIED");
        s.put(1, "MEDIA_ERROR_UNKNOWN");
        s.put(1, "MEDIA_INFO_UNKNOWN");
        s.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        s.put(701, "MEDIA_INFO_BUFFERING_START");
        s.put(702, "MEDIA_INFO_BUFFERING_END");
        s.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        s.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        s.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            s.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            s.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzaxr(Context context, boolean z, boolean z2, qf qfVar, sf sfVar) {
        super(context);
        this.f11007g = 0;
        this.f11008h = 0;
        setSurfaceTextureListener(this);
        this.f11005e = sfVar;
        this.p = z;
        this.f11006f = z2;
        this.f11005e.a(this);
    }

    private final void a() {
        na.e("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f11010j == null || surfaceTexture == null) {
            return;
        }
        a(false);
        try {
            com.google.android.gms.ads.internal.n.s();
            this.f11009i = new MediaPlayer();
            this.f11009i.setOnBufferingUpdateListener(this);
            this.f11009i.setOnCompletionListener(this);
            this.f11009i.setOnErrorListener(this);
            this.f11009i.setOnInfoListener(this);
            this.f11009i.setOnPreparedListener(this);
            this.f11009i.setOnVideoSizeChangedListener(this);
            if (this.p) {
                this.o = new rf(getContext());
                this.o.a(surfaceTexture, getWidth(), getHeight());
                this.o.start();
                SurfaceTexture b2 = this.o.b();
                if (b2 != null) {
                    surfaceTexture = b2;
                } else {
                    this.o.a();
                    this.o = null;
                }
            }
            this.f11009i.setDataSource(getContext(), this.f11010j);
            com.google.android.gms.ads.internal.n.t();
            this.f11009i.setSurface(new Surface(surfaceTexture));
            this.f11009i.setAudioStreamType(3);
            this.f11009i.setScreenOnWhilePlaying(true);
            this.f11009i.prepareAsync();
            a(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e2) {
            String valueOf = String.valueOf(this.f11010j);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(valueOf);
            qd.c(sb.toString(), e2);
            onError(this.f11009i, 1, 0);
        }
    }

    private final void b() {
        if (this.f11006f && c() && this.f11009i.getCurrentPosition() > 0 && this.f11008h != 3) {
            na.e("AdMediaPlayerView nudging MediaPlayer");
            a(0.0f);
            this.f11009i.start();
            int currentPosition = this.f11009i.getCurrentPosition();
            long a2 = com.google.android.gms.ads.internal.n.j().a();
            while (c() && this.f11009i.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.n.j().a() - a2 <= 250) {
            }
            this.f11009i.pause();
            zzwq();
        }
    }

    private final boolean c() {
        int i2;
        return (this.f11009i == null || (i2 = this.f11007g) == -1 || i2 == 0 || i2 == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getCurrentPosition() {
        if (c()) {
            return this.f11009i.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getDuration() {
        if (c()) {
            return this.f11009i.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        na.e("AdMediaPlayerView completion");
        a(5);
        this.f11008h = 5;
        wa.f10063h.post(new te(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        String str = s.get(Integer.valueOf(i2));
        String str2 = s.get(Integer.valueOf(i3));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        qd.d(sb.toString());
        a(-1);
        this.f11008h = -1;
        wa.f10063h.post(new we(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        String str = s.get(Integer.valueOf(i2));
        String str2 = s.get(Integer.valueOf(i3));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        na.e(sb.toString());
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f11011k
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)
            int r1 = r5.f11012l
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)
            int r2 = r5.f11011k
            if (r2 <= 0) goto L88
            int r2 = r5.f11012l
            if (r2 <= 0) goto L88
            com.google.android.gms.internal.ads.rf r2 = r5.o
            if (r2 != 0) goto L88
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L48
            if (r1 != r2) goto L48
            int r0 = r5.f11011k
            int r1 = r0 * r7
            int r2 = r5.f11012l
            int r3 = r6 * r2
            if (r1 >= r3) goto L3d
            int r0 = r0 * r7
            int r0 = r0 / r2
            r1 = r7
            goto L88
        L3d:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L69
            int r2 = r2 * r6
            int r1 = r2 / r0
            goto L89
        L48:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L5a
            int r0 = r5.f11012l
            int r0 = r0 * r6
            int r2 = r5.f11011k
            int r0 = r0 / r2
            if (r1 != r3) goto L58
            if (r0 <= r7) goto L58
            goto L67
        L58:
            r1 = r0
            goto L89
        L5a:
            if (r1 != r2) goto L6b
            int r1 = r5.f11011k
            int r1 = r1 * r7
            int r2 = r5.f11012l
            int r1 = r1 / r2
            if (r0 != r3) goto L68
            if (r1 <= r6) goto L68
        L67:
            goto L69
        L68:
            r6 = r1
        L69:
            r1 = r7
            goto L89
        L6b:
            int r2 = r5.f11011k
            int r4 = r5.f11012l
            if (r1 != r3) goto L78
            if (r4 <= r7) goto L78
            int r2 = r2 * r7
            int r2 = r2 / r4
            r1 = r7
            goto L79
        L78:
            r1 = r4
        L79:
            if (r0 != r3) goto L86
            if (r2 <= r6) goto L86
            int r7 = r5.f11012l
            int r7 = r7 * r6
            int r0 = r5.f11011k
            int r1 = r7 / r0
            goto L89
        L86:
            r6 = r2
            goto L89
        L88:
            r6 = r0
        L89:
            r5.setMeasuredDimension(r6, r1)
            com.google.android.gms.internal.ads.rf r7 = r5.o
            if (r7 == 0) goto L93
            r7.a(r6, r1)
        L93:
            int r7 = android.os.Build.VERSION.SDK_INT
            r0 = 16
            if (r7 != r0) goto Lac
            int r7 = r5.m
            if (r7 <= 0) goto L9f
            if (r7 != r6) goto La5
        L9f:
            int r7 = r5.n
            if (r7 <= 0) goto La8
            if (r7 == r1) goto La8
        La5:
            r5.b()
        La8:
            r5.m = r6
            r5.n = r1
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxr.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        na.e("AdMediaPlayerView prepared");
        a(2);
        this.f11005e.b();
        wa.f10063h.post(new ue(this));
        this.f11011k = mediaPlayer.getVideoWidth();
        this.f11012l = mediaPlayer.getVideoHeight();
        int i2 = this.q;
        if (i2 != 0) {
            seekTo(i2);
        }
        b();
        int i3 = this.f11011k;
        int i4 = this.f11012l;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i3);
        sb.append(" x ");
        sb.append(i4);
        qd.c(sb.toString());
        if (this.f11008h == 3) {
            play();
        }
        zzwq();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        na.e("AdMediaPlayerView surface created");
        a();
        wa.f10063h.post(new ve(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        na.e("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null && this.q == 0) {
            this.q = mediaPlayer.getCurrentPosition();
        }
        rf rfVar = this.o;
        if (rfVar != null) {
            rfVar.a();
        }
        wa.f10063h.post(new xe(this));
        a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        na.e("AdMediaPlayerView surface changed");
        boolean z = this.f11008h == 3;
        boolean z2 = this.f11011k == i2 && this.f11012l == i3;
        if (this.f11009i != null && z && z2) {
            int i4 = this.q;
            if (i4 != 0) {
                seekTo(i4);
            }
            play();
        }
        rf rfVar = this.o;
        if (rfVar != null) {
            rfVar.a(i2, i3);
        }
        wa.f10063h.post(new ye(this, i2, i3));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11005e.b(this);
        this.zzdxk.a(surfaceTexture, this.r);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        na.e(sb.toString());
        this.f11011k = mediaPlayer.getVideoWidth();
        this.f11012l = mediaPlayer.getVideoHeight();
        if (this.f11011k == 0 || this.f11012l == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i2) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i2);
        na.e(sb.toString());
        wa.f10063h.post(new Runnable(this, i2) { // from class: com.google.android.gms.internal.ads.se

            /* renamed from: e, reason: collision with root package name */
            private final zzaxr f9318e;

            /* renamed from: f, reason: collision with root package name */
            private final int f9319f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9318e = this;
                this.f9319f = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9318e.zzcs(this.f9319f);
            }
        });
        super.onWindowVisibilityChanged(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void pause() {
        na.e("AdMediaPlayerView pause");
        if (c() && this.f11009i.isPlaying()) {
            this.f11009i.pause();
            a(4);
            wa.f10063h.post(new ze(this));
        }
        this.f11008h = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void play() {
        na.e("AdMediaPlayerView play");
        if (c()) {
            this.f11009i.start();
            a(3);
            this.zzdxk.a();
            wa.f10063h.post(new af(this));
        }
        this.f11008h = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void seekTo(int i2) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i2);
        na.e(sb.toString());
        if (c()) {
            this.f11009i.seekTo(i2);
            this.q = 0;
        } else {
            this.q = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzrl a2 = zzrl.a(parse);
        if (a2 == null || a2.f11225e != null) {
            if (a2 != null) {
                parse = Uri.parse(a2.f11225e);
            }
            this.f11010j = parse;
            this.q = 0;
            a();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void stop() {
        na.e("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f11009i.release();
            this.f11009i = null;
            a(0);
            this.f11008h = 0;
        }
        this.f11005e.a();
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzaxr.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zza(cf cfVar) {
        this.r = cfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzcs(int i2) {
        cf cfVar = this.r;
        if (cfVar != null) {
            cfVar.onWindowVisibilityChanged(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final String zzwm() {
        String str = this.p ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzaya, com.google.android.gms.internal.ads.wf
    public final void zzwq() {
        a(this.zzdxl.a());
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zza(float f2, float f3) {
        rf rfVar = this.o;
        if (rfVar != null) {
            rfVar.a(f2, f3);
        }
    }

    private final void a(boolean z) {
        na.e("AdMediaPlayerView release");
        rf rfVar = this.o;
        if (rfVar != null) {
            rfVar.a();
            this.o = null;
        }
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f11009i.release();
            this.f11009i = null;
            a(0);
            if (z) {
                this.f11008h = 0;
                this.f11008h = 0;
            }
        }
    }

    private final void a(float f2) {
        MediaPlayer mediaPlayer = this.f11009i;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f2, f2);
            } catch (IllegalStateException unused) {
            }
        } else {
            qd.d("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    private final void a(int i2) {
        if (i2 == 3) {
            this.f11005e.c();
            this.zzdxl.b();
        } else if (this.f11007g == 3) {
            this.f11005e.d();
            this.zzdxl.c();
        }
        this.f11007g = i2;
    }
}
