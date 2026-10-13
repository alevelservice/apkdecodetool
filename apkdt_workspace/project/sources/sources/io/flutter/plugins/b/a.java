package io.flutter.plugins.b;

import android.content.Context;
import g.a.c.a.c;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: DeviceInfoPlugin.java */
/* loaded from: classes2.dex */
public class a implements io.flutter.embedding.engine.g.a {

    /* renamed from: e, reason: collision with root package name */
    k f19341e;

    private void a(c cVar, Context context) {
        this.f19341e = new k(cVar, "plugins.flutter.io/device_info");
        this.f19341e.a(new b(context.getContentResolver(), context.getPackageManager()));
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
        this.f19341e.a((k.c) null);
        this.f19341e = null;
    }
}
