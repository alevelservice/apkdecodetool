package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentViewLifecycleOwner.java */
/* loaded from: classes.dex */
public class n implements androidx.lifecycle.h {

    /* renamed from: e, reason: collision with root package name */
    private androidx.lifecycle.i f2314e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f2314e == null) {
            this.f2314e = new androidx.lifecycle.i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f2314e != null;
    }

    @Override // androidx.lifecycle.h
    @NonNull
    public androidx.lifecycle.e getLifecycle() {
        a();
        return this.f2314e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull e.a aVar) {
        this.f2314e.a(aVar);
    }
}
