package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;

/* compiled from: ViewModelProvider.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private final a f2365a;

    /* renamed from: b, reason: collision with root package name */
    private final r f2366b;

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public interface a {
        @NonNull
        <T extends p> T a(@NonNull Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static abstract class b implements a {
        b() {
        }

        @Override // androidx.lifecycle.q.a
        @NonNull
        public <T extends p> T a(@NonNull Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        @NonNull
        public abstract <T extends p> T a(@NonNull String str, @NonNull Class<T> cls);
    }

    public q(@NonNull r rVar, @NonNull a aVar) {
        this.f2365a = aVar;
        this.f2366b = rVar;
    }

    @NonNull
    @MainThread
    public <T extends p> T a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @NonNull
    @MainThread
    public <T extends p> T a(@NonNull String str, @NonNull Class<T> cls) {
        T t;
        T t2 = (T) this.f2366b.a(str);
        if (cls.isInstance(t2)) {
            return t2;
        }
        a aVar = this.f2365a;
        if (aVar instanceof b) {
            t = (T) ((b) aVar).a(str, cls);
        } else {
            t = (T) aVar.a(cls);
        }
        this.f2366b.a(str, t);
        return t;
    }
}
