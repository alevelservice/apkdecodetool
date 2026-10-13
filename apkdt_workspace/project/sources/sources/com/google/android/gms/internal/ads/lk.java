package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class lk {

    /* renamed from: a, reason: collision with root package name */
    private final zzawv f7911a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f7912b;

    /* renamed from: c, reason: collision with root package name */
    private final WeakReference<Context> f7913c;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private zzawv f7914a;

        /* renamed from: b, reason: collision with root package name */
        private Context f7915b;

        /* renamed from: c, reason: collision with root package name */
        private WeakReference<Context> f7916c;

        public final a a(zzawv zzawvVar) {
            this.f7914a = zzawvVar;
            return this;
        }

        public final a a(Context context) {
            this.f7916c = new WeakReference<>(context);
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f7915b = context;
            return this;
        }
    }

    private lk(a aVar) {
        this.f7911a = aVar.f7914a;
        this.f7912b = aVar.f7915b;
        this.f7913c = aVar.f7916c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context a() {
        return this.f7912b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final WeakReference<Context> b() {
        return this.f7913c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzawv c() {
        return this.f7911a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return com.google.android.gms.ads.internal.n.c().a(this.f7912b, this.f7911a.f11000e);
    }
}
