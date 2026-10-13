package g.a;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.f.c;

/* compiled from: FlutterInjector.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    private static a f18199c;

    /* renamed from: a, reason: collision with root package name */
    private boolean f18200a;

    /* renamed from: b, reason: collision with root package name */
    private c f18201b;

    /* compiled from: FlutterInjector.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private boolean f18202a = true;

        /* renamed from: b, reason: collision with root package name */
        private c f18203b;

        private void b() {
            if (this.f18203b == null) {
                this.f18203b = new c();
            }
        }

        public a a() {
            b();
            System.out.println("should load native is " + this.f18202a);
            return new a(this.f18202a, this.f18203b);
        }
    }

    public static a c() {
        if (f18199c == null) {
            f18199c = new b().a();
        }
        return f18199c;
    }

    @NonNull
    public c a() {
        return this.f18201b;
    }

    public boolean b() {
        return this.f18200a;
    }

    private a(boolean z, @NonNull c cVar) {
        this.f18200a = z;
        this.f18201b = cVar;
    }
}
