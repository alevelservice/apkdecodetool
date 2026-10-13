package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class s<A extends a.b, ResultT> {

    /* renamed from: a, reason: collision with root package name */
    private final Feature[] f5130a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f5131b;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class a<A extends a.b, ResultT> {

        /* renamed from: a, reason: collision with root package name */
        private o<A, e.i.b.b.d.i<ResultT>> f5132a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f5133b;

        /* renamed from: c, reason: collision with root package name */
        private Feature[] f5134c;

        private a() {
            this.f5133b = true;
        }

        @KeepForSdk
        public a<A, ResultT> a(o<A, e.i.b.b.d.i<ResultT>> oVar) {
            this.f5132a = oVar;
            return this;
        }

        @KeepForSdk
        public a<A, ResultT> a(Feature... featureArr) {
            this.f5134c = featureArr;
            return this;
        }

        @KeepForSdk
        public s<A, ResultT> a() {
            com.google.android.gms.common.internal.m.a(this.f5132a != null, "execute parameter required");
            return new w0(this, this.f5134c, this.f5133b);
        }
    }

    @KeepForSdk
    @Deprecated
    public s() {
        this.f5130a = null;
        this.f5131b = false;
    }

    @KeepForSdk
    public static <A extends a.b, ResultT> a<A, ResultT> c() {
        return new a<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public abstract void a(A a2, e.i.b.b.d.i<ResultT> iVar);

    @KeepForSdk
    public boolean a() {
        return this.f5131b;
    }

    @Nullable
    public final Feature[] b() {
        return this.f5130a;
    }

    @KeepForSdk
    private s(Feature[] featureArr, boolean z) {
        this.f5130a = featureArr;
        this.f5131b = z;
    }
}
