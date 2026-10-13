package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pb {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8666a;

    /* renamed from: b, reason: collision with root package name */
    private String f8667b;

    /* renamed from: c, reason: collision with root package name */
    private String f8668c;

    /* renamed from: d, reason: collision with root package name */
    private String f8669d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private String f8670e;

    /* renamed from: f, reason: collision with root package name */
    private int f8671f;

    /* renamed from: g, reason: collision with root package name */
    private int f8672g;

    /* renamed from: h, reason: collision with root package name */
    private PointF f8673h;

    /* renamed from: i, reason: collision with root package name */
    private PointF f8674i;

    /* renamed from: j, reason: collision with root package name */
    private Handler f8675j;

    /* renamed from: k, reason: collision with root package name */
    private Runnable f8676k;

    public pb(Context context) {
        this.f8671f = 0;
        this.f8676k = new Runnable(this) { // from class: com.google.android.gms.internal.ads.ob

            /* renamed from: e, reason: collision with root package name */
            private final pb f8508e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8508e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8508e.d();
            }
        };
        this.f8666a = context;
        this.f8672g = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.n.q().b();
        this.f8675j = com.google.android.gms.ads.internal.n.q().a();
    }

    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f8671f = 0;
            this.f8673h = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i2 = this.f8671f;
        if (i2 == -1) {
            return;
        }
        boolean z = true;
        if (i2 == 0 && actionMasked == 5) {
            this.f8671f = 5;
            this.f8674i = new PointF(motionEvent.getX(1), motionEvent.getY(1));
            this.f8675j.postDelayed(this.f8676k, ((Long) mu1.e().a(aw1.x2)).longValue());
            return;
        }
        if (this.f8671f == 5) {
            if (pointerCount == 2) {
                if (actionMasked == 2) {
                    boolean z2 = false;
                    for (int i3 = 0; i3 < historySize; i3++) {
                        if (!a(motionEvent.getHistoricalX(0, i3), motionEvent.getHistoricalY(0, i3), motionEvent.getHistoricalX(1, i3), motionEvent.getHistoricalY(1, i3))) {
                            z2 = true;
                        }
                    }
                    if (a(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                        z = z2;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                this.f8671f = -1;
                this.f8675j.removeCallbacks(this.f8676k);
            }
        }
    }

    public final void b(String str) {
        this.f8667b = str;
    }

    public final void c(String str) {
        this.f8670e = str;
    }

    public final void d(String str) {
        this.f8669d = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f8667b);
        sb.append(",DebugSignal: ");
        sb.append(this.f8670e);
        sb.append(",AFMA Version: ");
        sb.append(this.f8669d);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f8668c);
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b() {
        com.google.android.gms.ads.internal.n.m().a(this.f8666a, this.f8668c, this.f8669d, this.f8670e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c() {
        com.google.android.gms.ads.internal.n.m().a(this.f8666a, this.f8668c, this.f8669d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d() {
        this.f8671f = 4;
        a();
    }

    public pb(Context context, String str) {
        this(context);
        this.f8667b = str;
    }

    private final boolean a(float f2, float f3, float f4, float f5) {
        return Math.abs(this.f8673h.x - f2) < ((float) this.f8672g) && Math.abs(this.f8673h.y - f3) < ((float) this.f8672g) && Math.abs(this.f8674i.x - f4) < ((float) this.f8672g) && Math.abs(this.f8674i.y - f5) < ((float) this.f8672g);
    }

    public final void a() {
        try {
            if (!(this.f8666a instanceof Activity)) {
                qd.c("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.n.m().a()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = com.google.android.gms.ads.internal.n.m().b() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int a2 = a((List<String>) arrayList, "Ad Information", true);
            final int a3 = a((List<String>) arrayList, str, true);
            final int a4 = a((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f8666a, com.google.android.gms.ads.internal.n.e().c());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, a2, a3, a4) { // from class: com.google.android.gms.internal.ads.rb

                /* renamed from: e, reason: collision with root package name */
                private final pb f9080e;

                /* renamed from: f, reason: collision with root package name */
                private final int f9081f;

                /* renamed from: g, reason: collision with root package name */
                private final int f9082g;

                /* renamed from: h, reason: collision with root package name */
                private final int f9083h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9080e = this;
                    this.f9081f = a2;
                    this.f9082g = a3;
                    this.f9083h = a4;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f9080e.a(this.f9081f, this.f9082g, this.f9083h, dialogInterface, i2);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e2) {
            na.e("", e2);
        }
    }

    public final void a(String str) {
        this.f8668c = str;
    }

    private static int a(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str, DialogInterface dialogInterface, int i2) {
        com.google.android.gms.ads.internal.n.c();
        wa.a(this.f8666a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void a(int r1, int r2, int r3, android.content.DialogInterface r4, int r5) {
        /*
            r0 = this;
            if (r5 != r1) goto L9b
            android.content.Context r1 = r0.f8666a
            boolean r1 = r1 instanceof android.app.Activity
            if (r1 != 0) goto Le
            java.lang.String r1 = "Can not create dialog without Activity Context"
            com.google.android.gms.internal.ads.qd.c(r1)
            return
        Le:
            java.lang.String r1 = r0.f8667b
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            java.lang.String r2 = "\\+"
            java.lang.String r3 = "%20"
            java.lang.String r1 = r1.replaceAll(r2, r3)
            android.net.Uri$Builder r2 = new android.net.Uri$Builder
            r2.<init>()
            android.net.Uri$Builder r1 = r2.encodedQuery(r1)
            android.net.Uri r1 = r1.build()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.google.android.gms.ads.internal.n.c()
            java.util.Map r1 = com.google.android.gms.internal.ads.wa.a(r1)
            java.util.Set r3 = r1.keySet()
            java.util.Iterator r3 = r3.iterator()
        L3f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L62
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r5 = " = "
            r2.append(r5)
            java.lang.Object r4 = r1.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r4 = "\n\n"
            r2.append(r4)
            goto L3f
        L62:
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = r1.trim()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            goto L73
        L71:
            java.lang.String r1 = "No debug information"
        L73:
            android.app.AlertDialog$Builder r2 = new android.app.AlertDialog$Builder
            android.content.Context r3 = r0.f8666a
            r2.<init>(r3)
            r2.setMessage(r1)
            java.lang.String r3 = "Ad Information"
            r2.setTitle(r3)
            com.google.android.gms.internal.ads.qb r3 = new com.google.android.gms.internal.ads.qb
            r3.<init>(r0, r1)
            java.lang.String r1 = "Share"
            r2.setPositiveButton(r1, r3)
            android.content.DialogInterface$OnClickListener r1 = com.google.android.gms.internal.ads.tb.f9544e
            java.lang.String r3 = "Close"
            r2.setNegativeButton(r3, r1)
            android.app.AlertDialog r1 = r2.create()
            r1.show()
            return
        L9b:
            if (r5 != r2) goto Lad
            java.lang.String r1 = "Debug mode [Creative Preview] selected."
            com.google.android.gms.internal.ads.qd.a(r1)
            com.google.android.gms.internal.ads.tz0 r1 = com.google.android.gms.internal.ads.yd.f10540a
            com.google.android.gms.internal.ads.sb r2 = new com.google.android.gms.internal.ads.sb
            r2.<init>(r0)
            r1.execute(r2)
            return
        Lad:
            if (r5 != r3) goto Lbe
            java.lang.String r1 = "Debug mode [Troubleshooting] selected."
            com.google.android.gms.internal.ads.qd.a(r1)
            com.google.android.gms.internal.ads.tz0 r1 = com.google.android.gms.internal.ads.yd.f10540a
            com.google.android.gms.internal.ads.vb r2 = new com.google.android.gms.internal.ads.vb
            r2.<init>(r0)
            r1.execute(r2)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pb.a(int, int, int, android.content.DialogInterface, int):void");
    }
}
