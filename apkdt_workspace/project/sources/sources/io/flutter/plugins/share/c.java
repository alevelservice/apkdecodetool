package io.flutter.plugins.share;

import android.app.Activity;
import android.content.Context;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: SharePlugin.java */
/* loaded from: classes2.dex */
public class c implements io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    private a f19504e;

    /* renamed from: f, reason: collision with root package name */
    private b f19505f;

    /* renamed from: g, reason: collision with root package name */
    private k f19506g;

    private void a(Context context, Activity activity, g.a.c.a.c cVar) {
        this.f19506g = new k(cVar, "plugins.flutter.io/share");
        this.f19505f = new b(context, activity);
        this.f19504e = new a(this.f19505f);
        this.f19506g.a(this.f19504e);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f19505f.a(cVar.getActivity());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), null, bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        a();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        this.f19506g.a((k.c) null);
        this.f19506g = null;
        this.f19505f = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private void a() {
        this.f19505f.a((Activity) null);
        this.f19506g.a((k.c) null);
    }
}
