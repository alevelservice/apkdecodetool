package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c20 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5902a;

    /* renamed from: b, reason: collision with root package name */
    private final pa f5903b;

    /* renamed from: c, reason: collision with root package name */
    private final ws0 f5904c;

    /* renamed from: d, reason: collision with root package name */
    private final q10 f5905d;

    /* renamed from: e, reason: collision with root package name */
    private final l10 f5906e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final k20 f5907f;

    /* renamed from: g, reason: collision with root package name */
    private final Executor f5908g;

    /* renamed from: h, reason: collision with root package name */
    private final Executor f5909h;

    /* renamed from: i, reason: collision with root package name */
    private final zzaai f5910i;

    /* renamed from: j, reason: collision with root package name */
    private final j10 f5911j;

    public c20(Context context, pa paVar, ws0 ws0Var, q10 q10Var, l10 l10Var, @Nullable k20 k20Var, Executor executor, Executor executor2, j10 j10Var) {
        this.f5902a = context;
        this.f5903b = paVar;
        this.f5904c = ws0Var;
        this.f5910i = ws0Var.f10200i;
        this.f5905d = q10Var;
        this.f5906e = l10Var;
        this.f5907f = k20Var;
        this.f5908g = executor;
        this.f5909h = executor2;
        this.f5911j = j10Var;
    }

    public final void a(final t20 t20Var) {
        this.f5908g.execute(new Runnable(this, t20Var) { // from class: com.google.android.gms.internal.ads.f20

            /* renamed from: e, reason: collision with root package name */
            private final c20 f6555e;

            /* renamed from: f, reason: collision with root package name */
            private final t20 f6556f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6555e = this;
                this.f6556f = t20Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6555e.c(this.f6556f);
            }
        });
    }

    public final void b(@Nullable t20 t20Var) {
        if (t20Var == null || this.f5907f == null || t20Var.zzaio() == null) {
            return;
        }
        if (!((Boolean) mu1.e().a(aw1.A3)).booleanValue() || this.f5905d.c()) {
            try {
                t20Var.zzaio().addView(this.f5907f.a());
            } catch (ri e2) {
                na.e("web view can not be obtained", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c(t20 t20Var) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        IObjectWrapper zzqf;
        Drawable drawable;
        int i2 = 0;
        if (this.f5905d.e() || this.f5905d.d()) {
            String[] strArr = {"1098", "3011"};
            for (int i3 = 0; i3 < 2; i3++) {
                View zzfw = t20Var.zzfw(strArr[i3]);
                if (zzfw != null && (zzfw instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzfw;
                    break;
                }
            }
        }
        viewGroup = null;
        boolean z = viewGroup != null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f5906e.p() != null) {
            view = this.f5906e.p();
            zzaai zzaaiVar = this.f5910i;
            if (zzaaiVar != null && !z) {
                a(layoutParams, zzaaiVar.f10888i);
                view.setLayoutParams(layoutParams);
            }
        } else if (this.f5906e.A() instanceof zzzz) {
            zzzz zzzzVar = (zzzz) this.f5906e.A();
            if (!z) {
                a(layoutParams, zzzzVar.zzqd());
            }
            View zzaacVar = new zzaac(this.f5902a, zzzzVar, layoutParams);
            zzaacVar.setContentDescription((CharSequence) mu1.e().a(aw1.T1));
            view = zzaacVar;
        } else {
            view = null;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(t20Var.zzaer().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(view);
                FrameLayout zzaio = t20Var.zzaio();
                if (zzaio != null) {
                    zzaio.addView(adChoicesView);
                }
            }
            t20Var.zza(t20Var.zzain(), view, true);
        }
        if (!((Boolean) mu1.e().a(aw1.z3)).booleanValue()) {
            b(t20Var);
        }
        String[] strArr2 = zzbun.zzflv;
        int length = strArr2.length;
        while (true) {
            if (i2 >= length) {
                viewGroup2 = null;
                break;
            }
            View zzfw2 = t20Var.zzfw(strArr2[i2]);
            if (zzfw2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzfw2;
                break;
            }
            i2++;
        }
        this.f5909h.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.e20

            /* renamed from: e, reason: collision with root package name */
            private final c20 f6332e;

            /* renamed from: f, reason: collision with root package name */
            private final ViewGroup f6333f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6332e = this;
                this.f6333f = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6332e.b(this.f6333f);
            }
        });
        if (viewGroup2 != null) {
            if (a(viewGroup2)) {
                if (this.f5906e.t() != null) {
                    this.f5906e.t().zza(new h20(this, t20Var, viewGroup2));
                    return;
                }
                return;
            }
            viewGroup2.removeAllViews();
            View zzaer = t20Var.zzaer();
            Context context = zzaer != null ? zzaer.getContext() : null;
            if (context != null) {
                if (((Boolean) mu1.e().a(aw1.S1)).booleanValue()) {
                    zzaan a2 = this.f5911j.a();
                    if (a2 == null) {
                        return;
                    }
                    try {
                        zzqf = a2.zzqh();
                    } catch (RemoteException unused) {
                        qd.d("Could not get main image drawable");
                        return;
                    }
                } else {
                    zzaas q = this.f5906e.q();
                    if (q == null) {
                        return;
                    }
                    try {
                        zzqf = q.zzqf();
                    } catch (RemoteException unused2) {
                        qd.d("Could not get drawable from image");
                        return;
                    }
                }
                if (zzqf == null || (drawable = (Drawable) ObjectWrapper.unwrap(zzqf)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context);
                imageView.setImageDrawable(drawable);
                IObjectWrapper zzaiq = t20Var != null ? t20Var.zzaiq() : null;
                if (zzaiq != null) {
                    if (((Boolean) mu1.e().a(aw1.B3)).booleanValue()) {
                        imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzaiq));
                        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        viewGroup2.addView(imageView);
                    }
                }
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            }
        }
    }

    private static void a(RelativeLayout.LayoutParams layoutParams, int i2) {
        if (i2 == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i2 == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i2 != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.f5906e.s() != null) {
            if (2 != this.f5906e.o() && 1 != this.f5906e.o()) {
                if (6 == this.f5906e.o()) {
                    this.f5903b.a(this.f5904c.f10197f, "2", z);
                    this.f5903b.a(this.f5904c.f10197f, "1", z);
                    return;
                }
                return;
            }
            this.f5903b.a(this.f5904c.f10197f, String.valueOf(this.f5906e.o()), z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(t20 t20Var, String[] strArr) {
        Map<String, WeakReference<View>> zzail = t20Var.zzail();
        if (zzail == null) {
            return false;
        }
        for (String str : strArr) {
            if (zzail.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(@NonNull ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        View s = this.f5906e.s();
        if (s == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (s.getParent() instanceof ViewGroup) {
            ((ViewGroup) s.getParent()).removeView(s);
        }
        if (((Boolean) mu1.e().a(aw1.V1)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(s, layoutParams);
        return true;
    }
}
