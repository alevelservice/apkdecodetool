package com.google.firebase.r;

import android.content.Context;
import com.google.firebase.components.d;
import com.google.firebase.components.q;

/* compiled from: LibraryVersionComponent.java */
/* loaded from: classes.dex */
public class h {

    /* compiled from: LibraryVersionComponent.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        String a(T t);
    }

    public static com.google.firebase.components.d<?> a(String str, String str2) {
        return com.google.firebase.components.d.a(f.a(str, str2), (Class<f>) f.class);
    }

    public static com.google.firebase.components.d<?> a(String str, a<Context> aVar) {
        d.b b2 = com.google.firebase.components.d.b(f.class);
        b2.a(q.c(Context.class));
        b2.a(g.a(str, aVar));
        return b2.b();
    }
}
