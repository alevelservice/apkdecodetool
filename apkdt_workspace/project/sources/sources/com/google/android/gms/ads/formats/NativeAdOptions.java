package com.google.android.gms.ads.formats;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class NativeAdOptions {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f4490a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4491b;

    /* renamed from: c, reason: collision with root package name */
    private final int f4492c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f4493d;

    /* renamed from: e, reason: collision with root package name */
    private final int f4494e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.android.gms.ads.k f4495f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f4496g;

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public @interface AdChoicesPlacement {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public @interface NativeMediaAspectRatio {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e, reason: collision with root package name */
        private com.google.android.gms.ads.k f4501e;

        /* renamed from: a, reason: collision with root package name */
        private boolean f4497a = false;

        /* renamed from: b, reason: collision with root package name */
        private int f4498b = -1;

        /* renamed from: c, reason: collision with root package name */
        private int f4499c = 0;

        /* renamed from: d, reason: collision with root package name */
        private boolean f4500d = false;

        /* renamed from: f, reason: collision with root package name */
        private int f4502f = 1;

        /* renamed from: g, reason: collision with root package name */
        private boolean f4503g = false;

        public final a a(boolean z) {
            this.f4500d = z;
            return this;
        }

        public final a b(boolean z) {
            this.f4497a = z;
            return this;
        }

        public final a a(@AdChoicesPlacement int i2) {
            this.f4502f = i2;
            return this;
        }

        @Deprecated
        public final a b(int i2) {
            this.f4498b = i2;
            return this;
        }

        public final a a(com.google.android.gms.ads.k kVar) {
            this.f4501e = kVar;
            return this;
        }

        public final NativeAdOptions a() {
            return new NativeAdOptions(this);
        }
    }

    private NativeAdOptions(a aVar) {
        this.f4490a = aVar.f4497a;
        this.f4491b = aVar.f4498b;
        this.f4492c = aVar.f4499c;
        this.f4493d = aVar.f4500d;
        this.f4494e = aVar.f4502f;
        this.f4495f = aVar.f4501e;
        this.f4496g = aVar.f4503g;
    }

    public final int a() {
        return this.f4494e;
    }

    @Deprecated
    public final int b() {
        return this.f4491b;
    }

    public final int c() {
        return this.f4492c;
    }

    @Nullable
    public final com.google.android.gms.ads.k d() {
        return this.f4495f;
    }

    public final boolean e() {
        return this.f4493d;
    }

    public final boolean f() {
        return this.f4490a;
    }

    public final boolean g() {
        return this.f4496g;
    }
}
