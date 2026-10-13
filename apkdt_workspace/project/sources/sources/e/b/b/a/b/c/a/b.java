package e.b.b.a.b.c.a;

import java.util.ArrayList;

/* compiled from: UserInfoManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c, reason: collision with root package name */
    private static b f17077c;

    /* renamed from: b, reason: collision with root package name */
    private final Object f17079b = new Object();

    /* renamed from: a, reason: collision with root package name */
    private ArrayList<a> f17078a = new ArrayList<>();

    private b() {
    }

    public static b a() {
        b bVar;
        synchronized (b.class) {
            if (f17077c == null) {
                f17077c = new b();
            }
            bVar = f17077c;
        }
        return bVar;
    }

    public void a(a aVar) {
        synchronized (this.f17079b) {
            if (aVar != null) {
                if (this.f17078a != null && !this.f17078a.contains(aVar)) {
                    this.f17078a.add(aVar);
                }
            }
        }
    }
}
