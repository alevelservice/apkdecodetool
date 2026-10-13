package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x10 {

    /* renamed from: h, reason: collision with root package name */
    public static final x10 f10241h = new z10().a();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final zzabt f10242a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final zzabs f10243b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final zzacf f10244c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final zzace f10245d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final zzafp f10246e;

    /* renamed from: f, reason: collision with root package name */
    private final a.e.g<String, zzabz> f10247f;

    /* renamed from: g, reason: collision with root package name */
    private final a.e.g<String, zzaby> f10248g;

    private x10(z10 z10Var) {
        this.f10242a = z10Var.f10669a;
        this.f10243b = z10Var.f10670b;
        this.f10244c = z10Var.f10671c;
        this.f10247f = new a.e.g<>(z10Var.f10674f);
        this.f10248g = new a.e.g<>(z10Var.f10675g);
        this.f10245d = z10Var.f10672d;
        this.f10246e = z10Var.f10673e;
    }

    @Nullable
    public final zzabt a() {
        return this.f10242a;
    }

    @Nullable
    public final zzabs b() {
        return this.f10243b;
    }

    @Nullable
    public final zzacf c() {
        return this.f10244c;
    }

    @Nullable
    public final zzace d() {
        return this.f10245d;
    }

    @Nullable
    public final zzafp e() {
        return this.f10246e;
    }

    public final ArrayList<String> f() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f10244c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f10242a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f10243b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f10247f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f10246e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> g() {
        ArrayList<String> arrayList = new ArrayList<>(this.f10247f.size());
        for (int i2 = 0; i2 < this.f10247f.size(); i2++) {
            arrayList.add(this.f10247f.b(i2));
        }
        return arrayList;
    }

    @Nullable
    public final zzabz a(String str) {
        return this.f10247f.get(str);
    }

    @Nullable
    public final zzaby b(String str) {
        return this.f10248g.get(str);
    }
}
