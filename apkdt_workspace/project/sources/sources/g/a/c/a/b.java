package g.a.c.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import g.a.c.a.c;
import java.nio.ByteBuffer;

/* compiled from: BasicMessageChannel.java */
/* loaded from: classes2.dex */
public final class b<T> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final g.a.c.a.c f18204a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final String f18205b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final i<T> f18206c;

    /* compiled from: BasicMessageChannel.java */
    /* renamed from: g.a.c.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private final class C0211b implements c.a {

        /* renamed from: a, reason: collision with root package name */
        private final d<T> f18207a;

        /* compiled from: BasicMessageChannel.java */
        /* renamed from: g.a.c.a.b$b$a */
        /* loaded from: classes2.dex */
        class a implements e<T> {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ c.b f18209a;

            a(c.b bVar) {
                this.f18209a = bVar;
            }

            @Override // g.a.c.a.b.e
            public void a(T t) {
                this.f18209a.a(b.this.f18206c.a((i) t));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // g.a.c.a.c.a
        public void a(@Nullable ByteBuffer byteBuffer, @NonNull c.b bVar) {
            try {
                this.f18207a.a(b.this.f18206c.a(byteBuffer), new a(bVar));
            } catch (RuntimeException unused) {
                String str = "BasicMessageChannel#" + b.this.f18205b;
                bVar.a(null);
            }
        }

        private C0211b(@NonNull d<T> dVar) {
            this.f18207a = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BasicMessageChannel.java */
    /* loaded from: classes2.dex */
    public final class c implements c.b {

        /* renamed from: a, reason: collision with root package name */
        private final e<T> f18211a;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // g.a.c.a.c.b
        public void a(@Nullable ByteBuffer byteBuffer) {
            try {
                this.f18211a.a(b.this.f18206c.a(byteBuffer));
            } catch (RuntimeException unused) {
                String str = "BasicMessageChannel#" + b.this.f18205b;
            }
        }

        private c(@NonNull e<T> eVar) {
            this.f18211a = eVar;
        }
    }

    /* compiled from: BasicMessageChannel.java */
    /* loaded from: classes2.dex */
    public interface d<T> {
        void a(@Nullable T t, @NonNull e<T> eVar);
    }

    /* compiled from: BasicMessageChannel.java */
    /* loaded from: classes2.dex */
    public interface e<T> {
        void a(@Nullable T t);
    }

    public b(@NonNull g.a.c.a.c cVar, @NonNull String str, @NonNull i<T> iVar) {
        this.f18204a = cVar;
        this.f18205b = str;
        this.f18206c = iVar;
    }

    public void a(@Nullable T t) {
        a(t, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void a(@Nullable T t, @Nullable e<T> eVar) {
        this.f18204a.send(this.f18205b, this.f18206c.a((i<T>) t), eVar != null ? new c(eVar) : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void a(@Nullable d<T> dVar) {
        this.f18204a.setMessageHandler(this.f18205b, dVar != null ? new C0211b(dVar) : null);
    }
}
