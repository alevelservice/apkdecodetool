package l.a;

import java.util.ArrayList;
import org.jetbrains.annotations.NonNls;

/* compiled from: Timber.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final b[] f20158a = new b[0];

    /* renamed from: b, reason: collision with root package name */
    static volatile b[] f20159b;

    /* renamed from: c, reason: collision with root package name */
    private static final b f20160c;

    /* compiled from: Timber.java */
    /* renamed from: l.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0264a extends b {
        C0264a() {
        }

        @Override // l.a.a.b
        public void a(String str, Object... objArr) {
            for (b bVar : a.f20159b) {
                bVar.a(str, objArr);
            }
        }
    }

    /* compiled from: Timber.java */
    /* loaded from: classes2.dex */
    public static abstract class b {
        public b() {
            new ThreadLocal();
        }

        public abstract void a(String str, Object... objArr);
    }

    static {
        new ArrayList();
        f20159b = f20158a;
        f20160c = new C0264a();
    }

    public static void a(@NonNls String str, Object... objArr) {
        f20160c.a(str, objArr);
    }
}
