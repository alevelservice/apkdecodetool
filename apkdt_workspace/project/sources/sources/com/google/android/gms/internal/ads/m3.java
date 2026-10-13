package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m3 extends ke<h2> {

    /* renamed from: d, reason: collision with root package name */
    private dc<h2> f8008d;

    /* renamed from: c, reason: collision with root package name */
    private final Object f8007c = new Object();

    /* renamed from: e, reason: collision with root package name */
    private boolean f8009e = false;

    /* renamed from: f, reason: collision with root package name */
    private int f8010f = 0;

    public m3(dc<h2> dcVar) {
        this.f8008d = dcVar;
    }

    private final void f() {
        synchronized (this.f8007c) {
            com.google.android.gms.common.internal.m.b(this.f8010f >= 0);
            if (this.f8009e && this.f8010f == 0) {
                na.e("No reference is left (including root). Cleaning up engine.");
                a(new n3(this), new ie());
            } else {
                na.e("There are still references to the engine. Not destroying.");
            }
        }
    }

    public final i3 c() {
        i3 i3Var = new i3(this);
        synchronized (this.f8007c) {
            a(new l3(this, i3Var), new o3(this, i3Var));
            com.google.android.gms.common.internal.m.b(this.f8010f >= 0);
            this.f8010f++;
        }
        return i3Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        synchronized (this.f8007c) {
            com.google.android.gms.common.internal.m.b(this.f8010f > 0);
            na.e("Releasing 1 reference for JS Engine");
            this.f8010f--;
            f();
        }
    }

    public final void e() {
        synchronized (this.f8007c) {
            com.google.android.gms.common.internal.m.b(this.f8010f >= 0);
            na.e("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f8009e = true;
            f();
        }
    }
}
