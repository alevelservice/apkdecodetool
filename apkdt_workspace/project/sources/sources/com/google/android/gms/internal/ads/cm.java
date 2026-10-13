package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class cm {

    /* renamed from: a, reason: collision with root package name */
    private a f6066a;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract rh a();

        public abstract df b();

        public abstract ps1 c();

        public abstract v8 d();
    }

    public cm(a aVar) {
        this.f6066a = aVar;
    }

    public final v8 a() {
        return this.f6066a.d();
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.r8, com.google.android.gms.internal.ads.w8] */
    public final com.google.android.gms.ads.internal.b b() {
        a aVar = this.f6066a;
        return new com.google.android.gms.ads.internal.b(aVar.a(), aVar.b(), new r8(aVar.d()), aVar.c());
    }
}
