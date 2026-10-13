package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements f {

    /* renamed from: a, reason: collision with root package name */
    private final c f2341a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleGeneratedAdapterObserver(c cVar) {
        this.f2341a = cVar;
    }

    @Override // androidx.lifecycle.f
    public void a(@NonNull h hVar, @NonNull e.a aVar) {
        this.f2341a.a(hVar, aVar, false, null);
        this.f2341a.a(hVar, aVar, true, null);
    }
}
