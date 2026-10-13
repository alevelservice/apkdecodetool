package e.f.i.j;

import javax.annotation.Nullable;

/* compiled from: FrescoSystrace.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private static volatile d f17640a;

    /* compiled from: FrescoSystrace.java */
    /* renamed from: e.f.i.j.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0197b {
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes.dex */
    private static final class c implements InterfaceC0197b {
        private c() {
        }
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes.dex */
    public interface d {
        void a();

        void a(String str);

        boolean isTracing();
    }

    static {
        new c();
        f17640a = null;
    }

    private b() {
    }

    public static void a(String str) {
        b().a(str);
    }

    private static d b() {
        if (f17640a == null) {
            synchronized (b.class) {
                if (f17640a == null) {
                    f17640a = new e.f.i.j.a();
                }
            }
        }
        return f17640a;
    }

    public static boolean c() {
        return b().isTracing();
    }

    public static void a() {
        b().a();
    }
}
