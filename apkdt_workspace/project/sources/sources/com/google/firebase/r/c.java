package com.google.firebase.r;

import com.google.firebase.components.d;
import com.google.firebase.components.q;
import java.util.Iterator;
import java.util.Set;

/* compiled from: DefaultUserAgentPublisher.java */
/* loaded from: classes.dex */
public class c implements i {

    /* renamed from: a, reason: collision with root package name */
    private final String f15296a;

    /* renamed from: b, reason: collision with root package name */
    private final d f15297b;

    c(Set<f> set, d dVar) {
        this.f15296a = a(set);
        this.f15297b = dVar;
    }

    public static com.google.firebase.components.d<i> b() {
        d.b a2 = com.google.firebase.components.d.a(i.class);
        a2.a(q.d(f.class));
        a2.a(b.a());
        return a2.b();
    }

    @Override // com.google.firebase.r.i
    public String a() {
        if (this.f15297b.a().isEmpty()) {
            return this.f15296a;
        }
        return this.f15296a + ' ' + a(this.f15297b.a());
    }

    private static String a(Set<f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb.append(next.a());
            sb.append('/');
            sb.append(next.b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ i a(com.google.firebase.components.e eVar) {
        return new c(eVar.d(f.class), d.b());
    }
}
