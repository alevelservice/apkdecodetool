package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.a;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements f {

    /* renamed from: a, reason: collision with root package name */
    private final Object f2339a;

    /* renamed from: b, reason: collision with root package name */
    private final a.C0041a f2340b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2339a = obj;
        this.f2340b = a.f2342c.a(this.f2339a.getClass());
    }

    @Override // androidx.lifecycle.f
    public void a(@NonNull h hVar, @NonNull e.a aVar) {
        this.f2340b.a(hVar, aVar, this.f2339a);
    }
}
