package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* renamed from: com.google.android.gms.internal.ads.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7276a;

    /* renamed from: b, reason: collision with root package name */
    private final tf f7277b;

    /* renamed from: c, reason: collision with root package name */
    private final ViewGroup f7278c;

    /* renamed from: d, reason: collision with root package name */
    private zzayc f7279d;

    public Cif(Context context, ViewGroup viewGroup, fi fiVar) {
        this(context, viewGroup, fiVar, null);
    }

    public final void a(int i2, int i3, int i4, int i5) {
        com.google.android.gms.common.internal.m.a("The underlay may only be modified from the UI thread.");
        zzayc zzaycVar = this.f7279d;
        if (zzaycVar != null) {
            zzaycVar.zzd(i2, i3, i4, i5);
        }
    }

    public final void b() {
        com.google.android.gms.common.internal.m.a("onPause must be called from the UI thread.");
        zzayc zzaycVar = this.f7279d;
        if (zzaycVar != null) {
            zzaycVar.pause();
        }
    }

    public final zzayc c() {
        com.google.android.gms.common.internal.m.a("getAdVideoUnderlay must be called from the UI thread.");
        return this.f7279d;
    }

    @VisibleForTesting
    private Cif(Context context, ViewGroup viewGroup, tf tfVar, zzayc zzaycVar) {
        this.f7276a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f7278c = viewGroup;
        this.f7277b = tfVar;
        this.f7279d = null;
    }

    public final void a(int i2, int i3, int i4, int i5, int i6, boolean z, qf qfVar) {
        if (this.f7279d != null) {
            return;
        }
        kw1.a(this.f7277b.zzxo().a(), this.f7277b.zzxk(), "vpr2");
        Context context = this.f7276a;
        tf tfVar = this.f7277b;
        this.f7279d = new zzayc(context, tfVar, i6, z, tfVar.zzxo().a(), qfVar);
        this.f7278c.addView(this.f7279d, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f7279d.zzd(i2, i3, i4, i5);
        this.f7277b.zzao(false);
    }

    public final void a() {
        com.google.android.gms.common.internal.m.a("onDestroy must be called from the UI thread.");
        zzayc zzaycVar = this.f7279d;
        if (zzaycVar != null) {
            zzaycVar.destroy();
            this.f7278c.removeView(this.f7279d);
            this.f7279d = null;
        }
    }
}
