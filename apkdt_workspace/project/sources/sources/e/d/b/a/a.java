package e.d.b.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import g.a.c.a.c;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: CreateContactPlugin.java */
/* loaded from: classes.dex */
public class a implements k.c, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: f, reason: collision with root package name */
    private static k f17086f;

    /* renamed from: e, reason: collision with root package name */
    private Activity f17087e;

    private void a(Context context, c cVar) {
        f17086f = new k(cVar, "create_contact");
        f17086f.a(this);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f17087e = cVar.getActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f17087e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f17086f;
        if (kVar != null) {
            kVar.a((k.c) null);
            f17086f = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("getContactList")) {
            Intent intent = new Intent("android.intent.action.INSERT");
            intent.setType("vnd.android.cursor.dir/contact");
            this.f17087e.startActivity(intent);
            dVar.a("SUCCESS");
            return;
        }
        dVar.a();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }
}
