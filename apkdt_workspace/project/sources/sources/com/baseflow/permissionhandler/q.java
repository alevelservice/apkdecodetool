package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baseflow.permissionhandler.r;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;

/* compiled from: PermissionHandlerPlugin.java */
/* loaded from: classes.dex */
public final class q implements io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    private g.a.c.a.k f3387e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private p f3388f;

    private void a(Context context, g.a.c.a.c cVar) {
        this.f3387e = new g.a.c.a.k(cVar, "flutter.baseflow.com/permissions/methods");
        this.f3388f = new p(context, new n(), new r(), new t());
        this.f3387e.a(this.f3388f);
    }

    private void b() {
        p pVar = this.f3388f;
        if (pVar != null) {
            pVar.a((Activity) null);
            this.f3388f.a((r.a) null);
            this.f3388f.a((r.d) null);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(@NonNull final io.flutter.embedding.engine.g.c.c cVar) {
        Activity activity = cVar.getActivity();
        cVar.getClass();
        r.a aVar = new r.a() { // from class: com.baseflow.permissionhandler.l
            @Override // com.baseflow.permissionhandler.r.a
            public final void a(m.a aVar2) {
                io.flutter.embedding.engine.g.c.c.this.a(aVar2);
            }
        };
        cVar.getClass();
        a(activity, aVar, new r.d() { // from class: com.baseflow.permissionhandler.k
            @Override // com.baseflow.permissionhandler.r.d
            public final void a(m.e eVar) {
                io.flutter.embedding.engine.g.c.c.this.a(eVar);
            }
        });
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NonNull a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        b();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        a();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(@NonNull io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private void a() {
        this.f3387e.a((k.c) null);
        this.f3387e = null;
        this.f3388f = null;
    }

    private void a(Activity activity, r.a aVar, r.d dVar) {
        p pVar = this.f3388f;
        if (pVar != null) {
            pVar.a(activity);
            this.f3388f.a(aVar);
            this.f3388f.a(dVar);
        }
    }
}
