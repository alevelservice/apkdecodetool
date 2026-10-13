package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l6 extends k6 implements o0<fi> {

    /* renamed from: c, reason: collision with root package name */
    private final fi f7814c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f7815d;

    /* renamed from: e, reason: collision with root package name */
    private final WindowManager f7816e;

    /* renamed from: f, reason: collision with root package name */
    private final lv1 f7817f;

    /* renamed from: g, reason: collision with root package name */
    private DisplayMetrics f7818g;

    /* renamed from: h, reason: collision with root package name */
    private float f7819h;

    /* renamed from: i, reason: collision with root package name */
    private int f7820i;

    /* renamed from: j, reason: collision with root package name */
    private int f7821j;

    /* renamed from: k, reason: collision with root package name */
    private int f7822k;

    /* renamed from: l, reason: collision with root package name */
    private int f7823l;
    private int m;
    private int n;
    private int o;

    public l6(fi fiVar, Context context, lv1 lv1Var) {
        super(fiVar);
        this.f7820i = -1;
        this.f7821j = -1;
        this.f7823l = -1;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.f7814c = fiVar;
        this.f7815d = context;
        this.f7817f = lv1Var;
        this.f7816e = (WindowManager) context.getSystemService("window");
    }

    public final void a(int i2, int i3) {
        int i4 = this.f7815d instanceof Activity ? com.google.android.gms.ads.internal.n.c().b((Activity) this.f7815d)[0] : 0;
        if (this.f7814c.zzyw() == null || !this.f7814c.zzyw().b()) {
            int width = this.f7814c.getWidth();
            int height = this.f7814c.getHeight();
            if (((Boolean) mu1.e().a(aw1.P)).booleanValue()) {
                if (width == 0 && this.f7814c.zzyw() != null) {
                    width = this.f7814c.zzyw().f9745c;
                }
                if (height == 0 && this.f7814c.zzyw() != null) {
                    height = this.f7814c.zzyw().f9744b;
                }
            }
            this.n = mu1.a().a(this.f7815d, width);
            this.o = mu1.a().a(this.f7815d, height);
        }
        b(i2, i3 - i4, this.n, this.o);
        this.f7814c.zzyy().a(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        this.f7818g = new DisplayMetrics();
        Display defaultDisplay = this.f7816e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f7818g);
        this.f7819h = this.f7818g.density;
        this.f7822k = defaultDisplay.getRotation();
        mu1.a();
        DisplayMetrics displayMetrics = this.f7818g;
        this.f7820i = gd.b(displayMetrics, displayMetrics.widthPixels);
        mu1.a();
        DisplayMetrics displayMetrics2 = this.f7818g;
        this.f7821j = gd.b(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzxl = this.f7814c.zzxl();
        if (zzxl != null && zzxl.getWindow() != null) {
            com.google.android.gms.ads.internal.n.c();
            int[] c2 = wa.c(zzxl);
            mu1.a();
            this.f7823l = gd.b(this.f7818g, c2[0]);
            mu1.a();
            this.m = gd.b(this.f7818g, c2[1]);
        } else {
            this.f7823l = this.f7820i;
            this.m = this.f7821j;
        }
        if (this.f7814c.zzyw().b()) {
            this.n = this.f7820i;
            this.o = this.f7821j;
        } else {
            this.f7814c.measure(0, 0);
        }
        a(this.f7820i, this.f7821j, this.f7823l, this.m, this.f7819h, this.f7822k);
        i6 i6Var = new i6();
        i6Var.c(this.f7817f.a());
        i6Var.b(this.f7817f.b());
        i6Var.d(this.f7817f.d());
        i6Var.e(this.f7817f.c());
        i6Var.a(true);
        this.f7814c.zza("onDeviceFeaturesReceived", new g6(i6Var).a());
        int[] iArr = new int[2];
        this.f7814c.getLocationOnScreen(iArr);
        a(mu1.a().a(this.f7815d, iArr[0]), mu1.a().a(this.f7815d, iArr[1]));
        if (qd.a(2)) {
            qd.c("Dispatching Ready Event.");
        }
        b(this.f7814c.zzxp().f11000e);
    }
}
