package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.ev;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class by0 implements cz0 {
    protected static volatile cf1 x;

    /* renamed from: e, reason: collision with root package name */
    protected MotionEvent f5880e;
    protected double n;
    private double o;
    private double p;
    protected float q;
    protected float r;
    protected float s;
    protected float t;
    protected DisplayMetrics w;

    /* renamed from: f, reason: collision with root package name */
    protected LinkedList<MotionEvent> f5881f = new LinkedList<>();

    /* renamed from: g, reason: collision with root package name */
    protected long f5882g = 0;

    /* renamed from: h, reason: collision with root package name */
    protected long f5883h = 0;

    /* renamed from: i, reason: collision with root package name */
    protected long f5884i = 0;

    /* renamed from: j, reason: collision with root package name */
    protected long f5885j = 0;

    /* renamed from: k, reason: collision with root package name */
    protected long f5886k = 0;

    /* renamed from: l, reason: collision with root package name */
    protected long f5887l = 0;
    protected long m = 0;
    private boolean u = false;
    protected boolean v = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public by0(Context context) {
        try {
            if (((Boolean) mu1.e().a(aw1.C1)).booleanValue()) {
                nf0.a();
            } else {
                jf1.a(x);
            }
            this.w = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    protected abstract long a(StackTraceElement[] stackTraceElementArr);

    protected abstract ev.b a(Context context, View view, Activity activity);

    protected abstract ev.b a(Context context, yq yqVar);

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context) {
        if (kf1.a()) {
            if (((Boolean) mu1.e().a(aw1.E1)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return a(context, null, dc1.f6198a, null, null, null);
    }

    protected abstract ev.b b(Context context, View view, Activity activity);

    protected abstract lf1 b(MotionEvent motionEvent);

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context, String str, View view) {
        return a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context, String str, View view, Activity activity) {
        return a(context, str, dc1.f6200c, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(MotionEvent motionEvent) {
        boolean z = false;
        if (this.u) {
            this.f5885j = 0L;
            this.f5884i = 0L;
            this.f5883h = 0L;
            this.f5882g = 0L;
            this.f5886k = 0L;
            this.m = 0L;
            this.f5887l = 0L;
            Iterator<MotionEvent> it = this.f5881f.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f5881f.clear();
            this.f5880e = null;
            this.u = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.n = 0.0d;
            this.o = motionEvent.getRawX();
            this.p = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d2 = this.o;
            Double.isNaN(rawX);
            double d3 = rawX - d2;
            double d4 = this.p;
            Double.isNaN(rawY);
            double d5 = rawY - d4;
            this.n += Math.sqrt((d3 * d3) + (d5 * d5));
            this.o = rawX;
            this.p = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    this.f5880e = MotionEvent.obtain(motionEvent);
                    this.f5881f.add(this.f5880e);
                    if (this.f5881f.size() > 6) {
                        this.f5881f.remove().recycle();
                    }
                    this.f5884i++;
                    this.f5886k = a(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.f5883h += motionEvent.getHistorySize() + 1;
                    lf1 b2 = b(motionEvent);
                    if ((b2 == null || b2.f7870d == null || b2.f7873g == null) ? false : true) {
                        this.f5887l += b2.f7870d.longValue() + b2.f7873g.longValue();
                    }
                    if (this.w != null && b2 != null && b2.f7871e != null && b2.f7874h != null) {
                        z = true;
                    }
                    if (z) {
                        this.m += b2.f7871e.longValue() + b2.f7874h.longValue();
                    }
                } else if (action2 == 3) {
                    this.f5885j++;
                }
            } catch (bf1 unused) {
            }
        } else {
            this.q = motionEvent.getX();
            this.r = motionEvent.getY();
            this.s = motionEvent.getRawX();
            this.t = motionEvent.getRawY();
            this.f5882g++;
        }
        this.v = true;
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(int i2, int i3, int i4) {
        MotionEvent motionEvent = this.f5880e;
        if (motionEvent != null) {
            motionEvent.recycle();
        }
        DisplayMetrics displayMetrics = this.w;
        if (displayMetrics != null) {
            float f2 = displayMetrics.density;
            this.f5880e = MotionEvent.obtain(0L, i4, 1, i2 * f2, i3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f5880e = null;
        }
        this.v = false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(13:5|6|7|(4:9|(1:11)(1:88)|12|(1:14)(1:87))(1:89)|15|16|17|(1:19)(2:68|(1:70)(1:71))|(1:22)|24|(3:29|30|(1:32)(2:33|(1:48)(4:36|(1:38)(2:41|(1:43)(2:44|(1:46)(1:47)))|39|40)))|26|27)|92|7|(0)(0)|15|16|17|(0)(0)|(1:22)|24|(0)|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0093, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0096, code lost:
    
        if (r9 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x009c, code lost:
    
        if (r23 == com.google.android.gms.internal.ads.dc1.f6200c) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x009e, code lost:
    
        r13 = 1003;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00b6, code lost:
    
        r10.a(r13, -1, java.lang.System.currentTimeMillis() - r7, r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00a5, code lost:
    
        if (r23 == com.google.android.gms.internal.ads.dc1.f6199b) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00a7, code lost:
    
        r13 = 1009;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00ae, code lost:
    
        if (r23 == com.google.android.gms.internal.ads.dc1.f6198a) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00b0, code lost:
    
        r13 = 1001;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00b5, code lost:
    
        r13 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e A[Catch: Exception -> 0x0093, TryCatch #1 {Exception -> 0x0093, blocks: (B:17:0x005a, B:19:0x005e, B:22:0x0085, B:68:0x006a, B:70:0x006e, B:71:0x0078), top: B:16:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x006a A[Catch: Exception -> 0x0093, TryCatch #1 {Exception -> 0x0093, blocks: (B:17:0x005a, B:19:0x005e, B:22:0x0085, B:68:0x006a, B:70:0x006e, B:71:0x0078), top: B:16:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String a(android.content.Context r21, java.lang.String r22, int r23, android.view.View r24, android.app.Activity r25, byte[] r26) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.by0.a(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }
}
