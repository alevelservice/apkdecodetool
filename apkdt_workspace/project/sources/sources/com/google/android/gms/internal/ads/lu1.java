package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class lu1 extends com.google.android.gms.ads.b {

    /* renamed from: a, reason: collision with root package name */
    private final Object f7980a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.b f7981b;

    public final void a(com.google.android.gms.ads.b bVar) {
        synchronized (this.f7980a) {
            this.f7981b = bVar;
        }
    }

    @Override // com.google.android.gms.ads.b
    public void c() {
        synchronized (this.f7980a) {
            if (this.f7981b != null) {
                this.f7981b.c();
            }
        }
    }

    @Override // com.google.android.gms.ads.b
    public void d() {
        synchronized (this.f7980a) {
            if (this.f7981b != null) {
                this.f7981b.d();
            }
        }
    }

    @Override // com.google.android.gms.ads.b
    public void e() {
        synchronized (this.f7980a) {
            if (this.f7981b != null) {
                this.f7981b.e();
            }
        }
    }

    @Override // com.google.android.gms.ads.b
    public void a() {
        synchronized (this.f7980a) {
            if (this.f7981b != null) {
                this.f7981b.a();
            }
        }
    }

    @Override // com.google.android.gms.ads.b
    public void a(int i2) {
        synchronized (this.f7980a) {
            if (this.f7981b != null) {
                this.f7981b.a(i2);
            }
        }
    }
}
