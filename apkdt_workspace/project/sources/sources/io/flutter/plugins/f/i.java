package io.flutter.plugins.f;

import io.flutter.embedding.engine.g.a;

/* compiled from: WebViewFlutterPlugin.java */
/* loaded from: classes2.dex */
public class i implements io.flutter.embedding.engine.g.a {

    /* renamed from: e, reason: collision with root package name */
    private b f19404e;

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        g.a.c.a.c b2 = bVar.b();
        bVar.d().k().g().a("plugins.flutter.io/webview", new h(b2, null));
        this.f19404e = new b(b2);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        b bVar2 = this.f19404e;
        if (bVar2 == null) {
            return;
        }
        bVar2.a();
        this.f19404e = null;
    }
}
