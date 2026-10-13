package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzayc extends FrameLayout implements cf {

    /* renamed from: e, reason: collision with root package name */
    private final tf f11013e;

    /* renamed from: f, reason: collision with root package name */
    private final FrameLayout f11014f;

    /* renamed from: g, reason: collision with root package name */
    private final pw1 f11015g;

    /* renamed from: h, reason: collision with root package name */
    private final vf f11016h;

    /* renamed from: i, reason: collision with root package name */
    private final long f11017i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private zzaya f11018j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f11019k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f11020l;
    private boolean m;
    private boolean n;
    private long o;
    private long p;
    private String q;
    private String[] r;
    private Bitmap s;
    private ImageView t;
    private boolean u;

    public zzayc(Context context, tf tfVar, int i2, boolean z, pw1 pw1Var, qf qfVar) {
        super(context);
        this.f11013e = tfVar;
        this.f11015g = pw1Var;
        this.f11014f = new FrameLayout(context);
        addView(this.f11014f, new FrameLayout.LayoutParams(-1, -1));
        com.google.android.gms.common.internal.m.a(tfVar.zzxm());
        this.f11018j = tfVar.zzxm().f4521b.a(context, tfVar, i2, z, pw1Var, qfVar);
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar != null) {
            this.f11014f.addView(zzayaVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) mu1.e().a(aw1.B)).booleanValue()) {
                zzwy();
            }
        }
        this.t = new ImageView(context);
        this.f11017i = ((Long) mu1.e().a(aw1.F)).longValue();
        this.n = ((Boolean) mu1.e().a(aw1.D)).booleanValue();
        pw1 pw1Var2 = this.f11015g;
        if (pw1Var2 != null) {
            pw1Var2.a("spinner_used", this.n ? "1" : ZimPlatform.REASON_0);
        }
        this.f11016h = new vf(this);
        zzaya zzayaVar2 = this.f11018j;
        if (zzayaVar2 != null) {
            zzayaVar2.zza(this);
        }
        if (this.f11018j == null) {
            zzn("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    private final boolean a() {
        return this.t.getParent() != null;
    }

    private final void b() {
        if (this.f11013e.zzxl() == null || !this.f11020l || this.m) {
            return;
        }
        this.f11013e.zzxl().getWindow().clearFlags(128);
        this.f11020l = false;
    }

    public static void zza(tf tfVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        tfVar.zza("onVideoEvent", hashMap);
    }

    public final void destroy() {
        this.f11016h.a();
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar != null) {
            zzayaVar.stop();
        }
        b();
    }

    public final void finalize() {
        try {
            this.f11016h.a();
            if (this.f11018j != null) {
                zzaya zzayaVar = this.f11018j;
                tz0 tz0Var = yd.f10543d;
                zzayaVar.getClass();
                tz0Var.execute(ff.a(zzayaVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void onPaused() {
        a("pause", new String[0]);
        b();
        this.f11019k = false;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f11016h.b();
        } else {
            this.f11016h.a();
            this.p = this.o;
        }
        wa.f10063h.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.ef

            /* renamed from: e, reason: collision with root package name */
            private final zzayc f6409e;

            /* renamed from: f, reason: collision with root package name */
            private final boolean f6410f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6409e = this;
                this.f6410f = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6409e.zzan(this.f6410f);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.cf
    public final void onWindowVisibilityChanged(int i2) {
        boolean z;
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            this.f11016h.b();
            z = true;
        } else {
            this.f11016h.a();
            this.p = this.o;
            z = false;
        }
        wa.f10063h.post(new jf(this, z));
    }

    public final void pause() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.pause();
    }

    public final void play() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.play();
    }

    public final void seekTo(int i2) {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.seekTo(i2);
    }

    public final void setVolume(float f2) {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.zzdxl.a(f2);
        zzayaVar.zzwq();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzan(boolean z) {
        a("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzc(String str, String[] strArr) {
        this.q = str;
        this.r = strArr;
    }

    public final void zzct(int i2) {
        this.f11018j.zzct(i2);
    }

    public final void zzcu(int i2) {
        this.f11018j.zzcu(i2);
    }

    public final void zzcv(int i2) {
        this.f11018j.zzcv(i2);
    }

    public final void zzcw(int i2) {
        this.f11018j.zzcw(i2);
    }

    public final void zzcx(int i2) {
        this.f11018j.zzcx(i2);
    }

    public final void zzd(int i2, int i3, int i4, int i5) {
        if (i4 == 0 || i5 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i5);
        layoutParams.setMargins(i2, i3, 0, 0);
        this.f11014f.setLayoutParams(layoutParams);
        requestLayout();
    }

    @TargetApi(14)
    public final void zze(MotionEvent motionEvent) {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzei() {
        if (this.f11018j != null && this.p == 0) {
            a("canplaythrough", "duration", String.valueOf(r0.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.f11018j.getVideoWidth()), "videoHeight", String.valueOf(this.f11018j.getVideoHeight()));
        }
    }

    public final void zzhh() {
        if (this.f11018j == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.q)) {
            this.f11018j.zzb(this.q, this.r);
        } else {
            a("no_src", new String[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzj(int i2, int i3) {
        if (this.n) {
            int max = Math.max(i2 / ((Integer) mu1.e().a(aw1.E)).intValue(), 1);
            int max2 = Math.max(i3 / ((Integer) mu1.e().a(aw1.E)).intValue(), 1);
            Bitmap bitmap = this.s;
            if (bitmap != null && bitmap.getWidth() == max && this.s.getHeight() == max2) {
                return;
            }
            this.s = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.u = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzn(String str, @Nullable String str2) {
        a(HummerConstants.HUMMER_ERROR, "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzwr() {
        this.f11016h.b();
        wa.f10063h.post(new hf(this));
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzws() {
        if (this.f11013e.zzxl() != null && !this.f11020l) {
            this.m = (this.f11013e.zzxl().getWindow().getAttributes().flags & 128) != 0;
            if (!this.m) {
                this.f11013e.zzxl().getWindow().addFlags(128);
                this.f11020l = true;
            }
        }
        this.f11019k = true;
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzwt() {
        a("ended", new String[0]);
        b();
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzwu() {
        if (this.u && this.s != null && !a()) {
            this.t.setImageBitmap(this.s);
            this.t.invalidate();
            this.f11014f.addView(this.t, new FrameLayout.LayoutParams(-1, -1));
            this.f11014f.bringChildToFront(this.t);
        }
        this.f11016h.a();
        this.p = this.o;
        wa.f10063h.post(new gf(this));
    }

    @Override // com.google.android.gms.internal.ads.cf
    public final void zzwv() {
        if (this.f11019k && a()) {
            this.f11014f.removeView(this.t);
        }
        if (this.s != null) {
            long c2 = com.google.android.gms.ads.internal.n.j().c();
            if (this.f11018j.getBitmap(this.s) != null) {
                this.u = true;
            }
            long c3 = com.google.android.gms.ads.internal.n.j().c() - c2;
            if (na.a()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(c3);
                sb.append("ms");
                na.e(sb.toString());
            }
            if (c3 > this.f11017i) {
                qd.d("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.n = false;
                this.s = null;
                pw1 pw1Var = this.f11015g;
                if (pw1Var != null) {
                    pw1Var.a("spinner_jank", Long.toString(c3));
                }
            }
        }
    }

    public final void zzww() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.zzdxl.a(true);
        zzayaVar.zzwq();
    }

    public final void zzwx() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        zzayaVar.zzdxl.a(false);
        zzayaVar.zzwq();
    }

    @TargetApi(14)
    public final void zzwy() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        TextView textView = new TextView(zzayaVar.getContext());
        String valueOf = String.valueOf(this.f11018j.zzwm());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f11014f.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f11014f.bringChildToFront(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzwz() {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar == null) {
            return;
        }
        long currentPosition = zzayaVar.getCurrentPosition();
        if (this.o == currentPosition || currentPosition <= 0) {
            return;
        }
        a("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
        this.o = currentPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.f11013e.zza("onVideoEvent", hashMap);
    }

    public static void zza(tf tfVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        tfVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(tf tfVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put(HummerConstants.HUMMER_ERROR, str);
        tfVar.zza("onVideoEvent", hashMap);
    }

    public final void zza(float f2, float f3) {
        zzaya zzayaVar = this.f11018j;
        if (zzayaVar != null) {
            zzayaVar.zza(f2, f3);
        }
    }
}
