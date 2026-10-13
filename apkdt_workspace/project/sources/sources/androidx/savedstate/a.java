package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;

/* compiled from: SavedStateRegistryController.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final b f2815a;

    /* renamed from: b, reason: collision with root package name */
    private final SavedStateRegistry f2816b = new SavedStateRegistry();

    private a(b bVar) {
        this.f2815a = bVar;
    }

    @NonNull
    public SavedStateRegistry a() {
        return this.f2816b;
    }

    @MainThread
    public void b(@NonNull Bundle bundle) {
        this.f2816b.a(bundle);
    }

    @MainThread
    public void a(@Nullable Bundle bundle) {
        e lifecycle = this.f2815a.getLifecycle();
        if (lifecycle.a() == e.b.INITIALIZED) {
            lifecycle.a(new Recreator(this.f2815a));
            this.f2816b.a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    @NonNull
    public static a a(@NonNull b bVar) {
        return new a(bVar);
    }
}
