package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ys0 {

    /* renamed from: a */
    private zztp f10644a;

    /* renamed from: b */
    private zztw f10645b;

    /* renamed from: c */
    private zzvs f10646c;

    /* renamed from: d */
    private String f10647d;

    /* renamed from: e */
    private zzyc f10648e;

    /* renamed from: f */
    private boolean f10649f;

    /* renamed from: g */
    private ArrayList<String> f10650g;

    /* renamed from: h */
    private ArrayList<String> f10651h;

    /* renamed from: i */
    private zzaai f10652i;

    /* renamed from: j */
    private zztx f10653j;

    /* renamed from: k */
    private PublisherAdViewOptions f10654k;

    /* renamed from: l */
    @Nullable
    private zzvm f10655l;
    private zzafj n;
    private int m = 1;
    public final Set<String> o = new HashSet();

    public static /* synthetic */ ArrayList e(ys0 ys0Var) {
        return ys0Var.f10651h;
    }

    public static /* synthetic */ zztx f(ys0 ys0Var) {
        return ys0Var.f10653j;
    }

    public static /* synthetic */ int g(ys0 ys0Var) {
        return ys0Var.m;
    }

    public static /* synthetic */ PublisherAdViewOptions h(ys0 ys0Var) {
        return ys0Var.f10654k;
    }

    public static /* synthetic */ zzvm i(ys0 ys0Var) {
        return ys0Var.f10655l;
    }

    public static /* synthetic */ zzafj j(ys0 ys0Var) {
        return ys0Var.n;
    }

    public static /* synthetic */ zztp k(ys0 ys0Var) {
        return ys0Var.f10644a;
    }

    public static /* synthetic */ boolean l(ys0 ys0Var) {
        return ys0Var.f10649f;
    }

    public static /* synthetic */ zzyc m(ys0 ys0Var) {
        return ys0Var.f10648e;
    }

    public static /* synthetic */ zzaai n(ys0 ys0Var) {
        return ys0Var.f10652i;
    }

    public final ys0 a(zztp zztpVar) {
        this.f10644a = zztpVar;
        return this;
    }

    public final String b() {
        return this.f10647d;
    }

    public final ws0 c() {
        com.google.android.gms.common.internal.m.a(this.f10647d, (Object) "ad unit must not be null");
        com.google.android.gms.common.internal.m.a(this.f10645b, "ad size must not be null");
        com.google.android.gms.common.internal.m.a(this.f10644a, "ad request must not be null");
        return new ws0(this);
    }

    public final zztw d() {
        return this.f10645b;
    }

    public static /* synthetic */ ArrayList d(ys0 ys0Var) {
        return ys0Var.f10650g;
    }

    public final zztp a() {
        return this.f10644a;
    }

    public final ys0 b(ArrayList<String> arrayList) {
        this.f10651h = arrayList;
        return this;
    }

    public static /* synthetic */ String b(ys0 ys0Var) {
        return ys0Var.f10647d;
    }

    public final ys0 a(zztw zztwVar) {
        this.f10645b = zztwVar;
        return this;
    }

    public final ys0 a(zzvs zzvsVar) {
        this.f10646c = zzvsVar;
        return this;
    }

    public static /* synthetic */ zzvs c(ys0 ys0Var) {
        return ys0Var.f10646c;
    }

    public final ys0 a(String str) {
        this.f10647d = str;
        return this;
    }

    public final ys0 a(zzyc zzycVar) {
        this.f10648e = zzycVar;
        return this;
    }

    public final ys0 a(boolean z) {
        this.f10649f = z;
        return this;
    }

    public final ys0 a(int i2) {
        this.m = i2;
        return this;
    }

    public final ys0 a(ArrayList<String> arrayList) {
        this.f10650g = arrayList;
        return this;
    }

    public final ys0 a(zzaai zzaaiVar) {
        this.f10652i = zzaaiVar;
        return this;
    }

    public final ys0 a(zztx zztxVar) {
        this.f10653j = zztxVar;
        return this;
    }

    public final ys0 a(zzafj zzafjVar) {
        this.n = zzafjVar;
        this.f10648e = new zzyc(false, true, false);
        return this;
    }

    public final ys0 a(PublisherAdViewOptions publisherAdViewOptions) {
        this.f10654k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f10649f = publisherAdViewOptions.j();
            this.f10655l = publisherAdViewOptions.k();
        }
        return this;
    }

    public static /* synthetic */ zztw a(ys0 ys0Var) {
        return ys0Var.f10645b;
    }
}
