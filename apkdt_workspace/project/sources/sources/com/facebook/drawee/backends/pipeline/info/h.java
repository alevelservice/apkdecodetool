package com.facebook.drawee.backends.pipeline.info;

import javax.annotation.Nullable;

/* compiled from: ImagePerfState.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private String f3554a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private String f3555b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private e.f.i.i.b f3556c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private Object f3557d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private e.f.i.g.f f3558e;
    private boolean n;

    @Nullable
    private String u;

    /* renamed from: f, reason: collision with root package name */
    private long f3559f = -1;

    /* renamed from: g, reason: collision with root package name */
    private long f3560g = -1;

    /* renamed from: h, reason: collision with root package name */
    private long f3561h = -1;

    /* renamed from: i, reason: collision with root package name */
    private long f3562i = -1;

    /* renamed from: j, reason: collision with root package name */
    private long f3563j = -1;

    /* renamed from: k, reason: collision with root package name */
    private long f3564k = -1;

    /* renamed from: l, reason: collision with root package name */
    private long f3565l = -1;
    private int m = -1;
    private int o = -1;
    private int p = -1;
    private int q = -1;
    private int r = -1;
    private long s = -1;
    private long t = -1;

    public void a(int i2) {
        this.q = i2;
    }

    public void b() {
        this.f3555b = null;
        this.f3556c = null;
        this.f3557d = null;
        this.f3558e = null;
        this.f3559f = -1L;
        this.f3561h = -1L;
        this.f3562i = -1L;
        this.f3563j = -1L;
        this.f3564k = -1L;
        this.f3565l = -1L;
        this.m = 1;
        this.n = false;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = -1L;
        this.t = -1L;
        this.u = null;
    }

    public void c(long j2) {
        this.f3561h = j2;
    }

    public void d(long j2) {
        this.f3560g = j2;
    }

    public void e(long j2) {
        this.f3559f = j2;
    }

    public void f(long j2) {
        this.f3565l = j2;
    }

    public void g(long j2) {
        this.f3564k = j2;
    }

    public void h(long j2) {
        this.t = j2;
    }

    public void i(long j2) {
        this.s = j2;
    }

    public int a() {
        return this.q;
    }

    public void c(int i2) {
        this.p = i2;
    }

    public void d(int i2) {
        this.o = i2;
    }

    public void a(@Nullable String str) {
        this.f3554a = str;
    }

    public e c() {
        return new e(this.f3554a, this.f3555b, this.f3556c, this.f3557d, this.f3558e, this.f3559f, this.f3560g, this.f3561h, this.f3562i, this.f3563j, this.f3564k, this.f3565l, this.m, this.n, this.o, this.p, this.r, this.s, this.t, this.u);
    }

    public void a(@Nullable e.f.i.i.b bVar) {
        this.f3556c = bVar;
    }

    public void a(@Nullable Object obj) {
        this.f3557d = obj;
    }

    public void a(long j2) {
        this.f3563j = j2;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public void a(@Nullable e.f.i.g.f fVar) {
        this.f3558e = fVar;
    }

    public void b(@Nullable String str) {
        this.f3555b = str;
    }

    public void b(long j2) {
        this.f3562i = j2;
    }

    public void b(int i2) {
        this.m = i2;
    }

    public void b(boolean z) {
        this.r = z ? 1 : 2;
    }
}
