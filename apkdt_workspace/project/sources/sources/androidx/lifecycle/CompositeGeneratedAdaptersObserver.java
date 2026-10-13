package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements f {

    /* renamed from: a, reason: collision with root package name */
    private final c[] f2317a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeGeneratedAdaptersObserver(c[] cVarArr) {
        this.f2317a = cVarArr;
    }

    @Override // androidx.lifecycle.f
    public void a(@NonNull h hVar, @NonNull e.a aVar) {
        l lVar = new l();
        for (c cVar : this.f2317a) {
            cVar.a(hVar, aVar, false, lVar);
        }
        for (c cVar2 : this.f2317a) {
            cVar2.a(hVar, aVar, true, lVar);
        }
    }
}
