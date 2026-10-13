package a.f.a;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: ResolvableFuture.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class b<V> extends a<V> {
    private b() {
    }

    public static <V> b<V> d() {
        return new b<>();
    }

    @Override // a.f.a.a
    public boolean a(@Nullable V v) {
        return super.a((b<V>) v);
    }

    @Override // a.f.a.a
    public boolean a(Throwable th) {
        return super.a(th);
    }
}
