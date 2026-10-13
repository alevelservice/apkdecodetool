package e.f.c.g;

import java.lang.ref.SoftReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* compiled from: OOMSoftReference.java */
/* loaded from: classes.dex */
public class b<T> {

    /* renamed from: a, reason: collision with root package name */
    SoftReference<T> f17169a = null;

    /* renamed from: b, reason: collision with root package name */
    SoftReference<T> f17170b = null;

    /* renamed from: c, reason: collision with root package name */
    SoftReference<T> f17171c = null;

    public void a(@Nonnull T t) {
        this.f17169a = new SoftReference<>(t);
        this.f17170b = new SoftReference<>(t);
        this.f17171c = new SoftReference<>(t);
    }

    @Nullable
    public T b() {
        SoftReference<T> softReference = this.f17169a;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public void a() {
        SoftReference<T> softReference = this.f17169a;
        if (softReference != null) {
            softReference.clear();
            this.f17169a = null;
        }
        SoftReference<T> softReference2 = this.f17170b;
        if (softReference2 != null) {
            softReference2.clear();
            this.f17170b = null;
        }
        SoftReference<T> softReference3 = this.f17171c;
        if (softReference3 != null) {
            softReference3.clear();
            this.f17171c = null;
        }
    }
}
