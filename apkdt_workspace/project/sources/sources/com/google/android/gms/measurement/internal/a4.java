package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a4 {
    private long A;
    private long B;
    private String C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a, reason: collision with root package name */
    private final j4 f12748a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12749b;

    /* renamed from: c, reason: collision with root package name */
    private String f12750c;

    /* renamed from: d, reason: collision with root package name */
    private String f12751d;

    /* renamed from: e, reason: collision with root package name */
    private String f12752e;

    /* renamed from: f, reason: collision with root package name */
    private String f12753f;

    /* renamed from: g, reason: collision with root package name */
    private long f12754g;

    /* renamed from: h, reason: collision with root package name */
    private long f12755h;

    /* renamed from: i, reason: collision with root package name */
    private long f12756i;

    /* renamed from: j, reason: collision with root package name */
    private String f12757j;

    /* renamed from: k, reason: collision with root package name */
    private long f12758k;

    /* renamed from: l, reason: collision with root package name */
    private String f12759l;
    private long m;
    private long n;
    private boolean o;
    private long p;
    private boolean q;
    private boolean r;
    private String s;
    private Boolean t;
    private long u;
    private List<String> v;
    private long w;
    private long x;
    private long y;
    private long z;

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public a4(j4 j4Var, String str) {
        com.google.android.gms.common.internal.m.a(j4Var);
        com.google.android.gms.common.internal.m.b(str);
        this.f12748a = j4Var;
        this.f12749b = str;
        this.f12748a.b().g();
    }

    @WorkerThread
    public final String A() {
        this.f12748a.b().g();
        return this.C;
    }

    @WorkerThread
    public final String B() {
        this.f12748a.b().g();
        String str = this.C;
        h((String) null);
        return str;
    }

    @WorkerThread
    public final long C() {
        this.f12748a.b().g();
        return this.p;
    }

    @WorkerThread
    public final boolean D() {
        this.f12748a.b().g();
        return this.q;
    }

    @WorkerThread
    public final boolean E() {
        this.f12748a.b().g();
        return this.r;
    }

    @WorkerThread
    public final Boolean F() {
        this.f12748a.b().g();
        return this.t;
    }

    @Nullable
    @WorkerThread
    public final List<String> G() {
        this.f12748a.b().g();
        return this.v;
    }

    @WorkerThread
    public final String a() {
        this.f12748a.b().g();
        return this.f12750c;
    }

    @WorkerThread
    public final void b(String str) {
        this.f12748a.b().g();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= !r8.e(this.f12751d, str);
        this.f12751d = str;
    }

    @WorkerThread
    public final String c() {
        this.f12748a.b().g();
        return this.f12751d;
    }

    @WorkerThread
    public final void d(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.f12752e, str);
        this.f12752e = str;
    }

    @WorkerThread
    public final void e() {
        this.f12748a.b().g();
        this.D = false;
    }

    @WorkerThread
    public final String f() {
        this.f12748a.b().g();
        return this.f12749b;
    }

    @WorkerThread
    public final String g() {
        this.f12748a.b().g();
        return this.s;
    }

    @WorkerThread
    public final String h() {
        this.f12748a.b().g();
        return this.f12752e;
    }

    @WorkerThread
    public final long i() {
        this.f12748a.b().g();
        return this.f12755h;
    }

    @WorkerThread
    public final long j() {
        this.f12748a.b().g();
        return this.f12756i;
    }

    @WorkerThread
    public final String k() {
        this.f12748a.b().g();
        return this.f12757j;
    }

    @WorkerThread
    public final long l() {
        this.f12748a.b().g();
        return this.f12758k;
    }

    @WorkerThread
    public final String m() {
        this.f12748a.b().g();
        return this.f12759l;
    }

    @WorkerThread
    public final long n() {
        this.f12748a.b().g();
        return this.m;
    }

    @WorkerThread
    public final long o() {
        this.f12748a.b().g();
        return this.n;
    }

    @WorkerThread
    public final long p() {
        this.f12748a.b().g();
        return this.u;
    }

    @WorkerThread
    public final long q() {
        this.f12748a.b().g();
        return this.f12754g;
    }

    @WorkerThread
    public final long r() {
        this.f12748a.b().g();
        return this.E;
    }

    @WorkerThread
    public final long s() {
        this.f12748a.b().g();
        return this.F;
    }

    @WorkerThread
    public final void t() {
        this.f12748a.b().g();
        long j2 = this.f12754g + 1;
        if (j2 > 2147483647L) {
            this.f12748a.zzab().t().a("Bundle index overflow. appId", f3.a(this.f12749b));
            j2 = 0;
        }
        this.D = true;
        this.f12754g = j2;
    }

    @WorkerThread
    public final long u() {
        this.f12748a.b().g();
        return this.w;
    }

    @WorkerThread
    public final long v() {
        this.f12748a.b().g();
        return this.x;
    }

    @WorkerThread
    public final long w() {
        this.f12748a.b().g();
        return this.y;
    }

    @WorkerThread
    public final long x() {
        this.f12748a.b().g();
        return this.z;
    }

    @WorkerThread
    public final long y() {
        this.f12748a.b().g();
        return this.B;
    }

    @WorkerThread
    public final long z() {
        this.f12748a.b().g();
        return this.A;
    }

    @WorkerThread
    public final void a(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.f12750c, str);
        this.f12750c = str;
    }

    @WorkerThread
    public final void c(String str) {
        this.f12748a.b().g();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= !r8.e(this.s, str);
        this.s = str;
    }

    @WorkerThread
    public final void e(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.f12753f, str);
        this.f12753f = str;
    }

    @WorkerThread
    public final void f(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.f12757j, str);
        this.f12757j = str;
    }

    @WorkerThread
    public final void g(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.f12759l, str);
        this.f12759l = str;
    }

    @WorkerThread
    public final void h(long j2) {
        this.f12748a.b().g();
        this.D |= this.E != j2;
        this.E = j2;
    }

    @WorkerThread
    public final void i(long j2) {
        this.f12748a.b().g();
        this.D |= this.F != j2;
        this.F = j2;
    }

    @WorkerThread
    public final void j(long j2) {
        this.f12748a.b().g();
        this.D |= this.w != j2;
        this.w = j2;
    }

    @WorkerThread
    public final void k(long j2) {
        this.f12748a.b().g();
        this.D |= this.x != j2;
        this.x = j2;
    }

    @WorkerThread
    public final void l(long j2) {
        this.f12748a.b().g();
        this.D |= this.y != j2;
        this.y = j2;
    }

    @WorkerThread
    public final void m(long j2) {
        this.f12748a.b().g();
        this.D |= this.z != j2;
        this.z = j2;
    }

    @WorkerThread
    public final void n(long j2) {
        this.f12748a.b().g();
        this.D |= this.B != j2;
        this.B = j2;
    }

    @WorkerThread
    public final void o(long j2) {
        this.f12748a.b().g();
        this.D |= this.A != j2;
        this.A = j2;
    }

    @WorkerThread
    public final void p(long j2) {
        this.f12748a.b().g();
        this.D |= this.p != j2;
        this.p = j2;
    }

    @WorkerThread
    public final void d(long j2) {
        this.f12748a.b().g();
        this.D |= this.m != j2;
        this.m = j2;
    }

    @WorkerThread
    public final String b() {
        this.f12748a.b().g();
        return this.f12753f;
    }

    @WorkerThread
    public final void a(long j2) {
        this.f12748a.b().g();
        this.D |= this.f12755h != j2;
        this.f12755h = j2;
    }

    @WorkerThread
    public final void e(long j2) {
        this.f12748a.b().g();
        this.D |= this.n != j2;
        this.n = j2;
    }

    @WorkerThread
    public final void f(long j2) {
        this.f12748a.b().g();
        this.D |= this.u != j2;
        this.u = j2;
    }

    @WorkerThread
    public final void g(long j2) {
        com.google.android.gms.common.internal.m.a(j2 >= 0);
        this.f12748a.b().g();
        this.D = (this.f12754g != j2) | this.D;
        this.f12754g = j2;
    }

    @WorkerThread
    public final void h(String str) {
        this.f12748a.b().g();
        this.D |= !r8.e(this.C, str);
        this.C = str;
    }

    @WorkerThread
    public final void b(long j2) {
        this.f12748a.b().g();
        this.D |= this.f12756i != j2;
        this.f12756i = j2;
    }

    @WorkerThread
    public final void c(long j2) {
        this.f12748a.b().g();
        this.D |= this.f12758k != j2;
        this.f12758k = j2;
    }

    @WorkerThread
    public final boolean d() {
        this.f12748a.b().g();
        return this.o;
    }

    @WorkerThread
    public final void a(boolean z) {
        this.f12748a.b().g();
        this.D |= this.o != z;
        this.o = z;
    }

    @WorkerThread
    public final void b(boolean z) {
        this.f12748a.b().g();
        this.D = this.q != z;
        this.q = z;
    }

    @WorkerThread
    public final void c(boolean z) {
        this.f12748a.b().g();
        this.D = this.r != z;
        this.r = z;
    }

    @WorkerThread
    public final void a(Boolean bool) {
        this.f12748a.b().g();
        this.D = !r8.a(this.t, bool);
        this.t = bool;
    }

    @WorkerThread
    public final void a(@Nullable List<String> list) {
        this.f12748a.b().g();
        if (r8.a(this.v, list)) {
            return;
        }
        this.D = true;
        this.v = list != null ? new ArrayList(list) : null;
    }
}
