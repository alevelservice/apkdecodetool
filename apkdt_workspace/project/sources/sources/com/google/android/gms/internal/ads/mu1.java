package com.google.android.gms.internal.ads;

import java.util.Random;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class mu1 {

    /* renamed from: i, reason: collision with root package name */
    private static mu1 f8237i = new mu1();

    /* renamed from: a, reason: collision with root package name */
    private final gd f8238a;

    /* renamed from: b, reason: collision with root package name */
    private final eu1 f8239b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8240c;

    /* renamed from: d, reason: collision with root package name */
    private final vv1 f8241d;

    /* renamed from: e, reason: collision with root package name */
    private final xv1 f8242e;

    /* renamed from: f, reason: collision with root package name */
    private final wv1 f8243f;

    /* renamed from: g, reason: collision with root package name */
    private final zzawv f8244g;

    /* renamed from: h, reason: collision with root package name */
    private final Random f8245h;

    protected mu1() {
        this(new gd(), new eu1(new ut1(), new vt1(), new zu1(), new q(), new a8(), new h8(), new p6(), new s()), new vv1(), new xv1(), new wv1(), gd.c(), new zzawv(0, 15300000, true), new Random(), new WeakHashMap());
    }

    public static gd a() {
        return f8237i.f8238a;
    }

    public static eu1 b() {
        return f8237i.f8239b;
    }

    public static xv1 c() {
        return f8237i.f8242e;
    }

    public static vv1 d() {
        return f8237i.f8241d;
    }

    public static wv1 e() {
        return f8237i.f8243f;
    }

    public static String f() {
        return f8237i.f8240c;
    }

    public static zzawv g() {
        return f8237i.f8244g;
    }

    public static Random h() {
        return f8237i.f8245h;
    }

    private mu1(gd gdVar, eu1 eu1Var, vv1 vv1Var, xv1 xv1Var, wv1 wv1Var, String str, zzawv zzawvVar, Random random, WeakHashMap<Object, String> weakHashMap) {
        this.f8238a = gdVar;
        this.f8239b = eu1Var;
        this.f8241d = vv1Var;
        this.f8242e = xv1Var;
        this.f8243f = wv1Var;
        this.f8240c = str;
        this.f8244g = zzawvVar;
        this.f8245h = random;
    }
}
