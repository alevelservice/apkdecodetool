package androidx.transition;

import android.os.IBinder;

/* compiled from: WindowIdApi14.java */
/* loaded from: classes.dex */
class c0 implements e0 {

    /* renamed from: a, reason: collision with root package name */
    private final IBinder f2961a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(IBinder iBinder) {
        this.f2961a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof c0) && ((c0) obj).f2961a.equals(this.f2961a);
    }

    public int hashCode() {
        return this.f2961a.hashCode();
    }
}
