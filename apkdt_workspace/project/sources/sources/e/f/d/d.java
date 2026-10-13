package e.f.d;

import com.facebook.common.internal.j;

/* compiled from: DataSources.java */
/* loaded from: classes.dex */
public class d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: DataSources.java */
    /* loaded from: classes.dex */
    static class a<T> implements j<c<T>> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Throwable f17215a;

        a(Throwable th) {
            this.f17215a = th;
        }

        @Override // com.facebook.common.internal.j
        public c<T> get() {
            return d.b(this.f17215a);
        }
    }

    public static <T> j<c<T>> a(Throwable th) {
        return new a(th);
    }

    public static <T> c<T> b(Throwable th) {
        h i2 = h.i();
        i2.a(th);
        return i2;
    }
}
