package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m50<T> implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<T> f8023a;

    /* renamed from: b, reason: collision with root package name */
    private final String f8024b;

    /* renamed from: c, reason: collision with root package name */
    private final o0<T> f8025c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ y40 f8026d;

    private m50(y40 y40Var, WeakReference<T> weakReference, String str, o0<T> o0Var) {
        this.f8026d = y40Var;
        this.f8023a = weakReference;
        this.f8024b = str;
        this.f8025c = o0Var;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        T t = this.f8023a.get();
        if (t == null) {
            this.f8026d.b(this.f8024b, this);
        } else {
            this.f8025c.a(t, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m50(y40 y40Var, WeakReference weakReference, String str, o0 o0Var, d50 d50Var) {
        this(y40Var, weakReference, str, o0Var);
    }
}
