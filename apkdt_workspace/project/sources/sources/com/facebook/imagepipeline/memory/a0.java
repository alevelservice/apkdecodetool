package com.facebook.imagepipeline.memory;

/* compiled from: NoOpPoolStatsTracker.java */
/* loaded from: classes.dex */
public class a0 implements g0 {

    /* renamed from: a, reason: collision with root package name */
    private static a0 f3797a;

    private a0() {
    }

    public static synchronized a0 c() {
        a0 a0Var;
        synchronized (a0.class) {
            if (f3797a == null) {
                f3797a = new a0();
            }
            a0Var = f3797a;
        }
        return a0Var;
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void a() {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void a(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void a(a aVar) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void b() {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void b(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void c(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void d(int i2) {
    }
}
