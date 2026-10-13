package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.databinding.i;

/* compiled from: BaseObservable.java */
/* loaded from: classes.dex */
public class a implements i {

    /* renamed from: e, reason: collision with root package name */
    private transient l f2059e;

    @Override // androidx.databinding.i
    public void addOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            if (this.f2059e == null) {
                this.f2059e = new l();
            }
        }
        this.f2059e.a((l) aVar);
    }

    public void notifyChange() {
        synchronized (this) {
            if (this.f2059e == null) {
                return;
            }
            this.f2059e.a(this, 0, null);
        }
    }

    public void notifyPropertyChanged(int i2) {
        synchronized (this) {
            if (this.f2059e == null) {
                return;
            }
            this.f2059e.a(this, i2, null);
        }
    }

    public void removeOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            if (this.f2059e == null) {
                return;
            }
            this.f2059e.b((l) aVar);
        }
    }
}
