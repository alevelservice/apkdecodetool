package io.flutter.plugins.e;

import android.content.Context;
import g.a.c.a.c;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: SharedPreferencesPlugin.java */
/* loaded from: classes2.dex */
public class b implements io.flutter.embedding.engine.g.a {

    /* renamed from: e, reason: collision with root package name */
    private k f19365e;

    private void a(c cVar, Context context) {
        this.f19365e = new k(cVar, "plugins.flutter.io/shared_preferences");
        this.f19365e.a(new a(context));
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.b(), bVar.a());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        a();
    }

    private void a() {
        this.f19365e.a((k.c) null);
        this.f19365e = null;
    }
}
