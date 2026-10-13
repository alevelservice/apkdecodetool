package androidx.activity;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: OnBackPressedCallback.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private boolean f723a;

    /* renamed from: b, reason: collision with root package name */
    private CopyOnWriteArrayList<a> f724b = new CopyOnWriteArrayList<>();

    public b(boolean z) {
        this.f723a = z;
    }

    @MainThread
    public abstract void a();

    @MainThread
    public final void a(boolean z) {
        this.f723a = z;
    }

    @MainThread
    public final boolean b() {
        return this.f723a;
    }

    @MainThread
    public final void c() {
        Iterator<a> it = this.f724b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull a aVar) {
        this.f724b.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull a aVar) {
        this.f724b.remove(aVar);
    }
}
