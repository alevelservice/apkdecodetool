package b.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: InstallReferrerPlugin.java */
/* loaded from: classes.dex */
public class c implements k.c, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: f, reason: collision with root package name */
    private static k f3100f;

    /* renamed from: e, reason: collision with root package name */
    private Activity f3101e;

    private void a(Context context, g.a.c.a.c cVar) {
        f3100f = new k(cVar, "install_referrer");
        f3100f.a(this);
    }

    private boolean b() {
        return a().getBoolean("first_launch", true);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f3101e = cVar.getActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f3101e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f3100f;
        if (kVar != null) {
            kVar.a((k.c) null);
            f3100f = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("isFirstLaunch")) {
            try {
                boolean b2 = b();
                System.out.println("referrer -> isFirstLaunch -> first launch : " + b2);
                dVar.a(Boolean.valueOf(b2));
                return;
            } catch (Exception e2) {
                dVar.a("install_ref_error", "Exception occurred", e2);
                return;
            }
        }
        if (jVar.f18223a.equals("getReferralData")) {
            try {
                if (b()) {
                    System.out.println("referrer -> getReferralData -> first launch : true");
                    new a().a(this.f3101e.getApplicationContext(), new b(a(), dVar));
                } else {
                    System.out.println("referrer -> getReferralData -> first launch : false");
                    dVar.a("first_launch: false");
                }
                return;
            } catch (Exception e3) {
                dVar.a("install_ref_error", "Exception occurred", e3);
                return;
            }
        }
        dVar.a();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private SharedPreferences a() {
        return this.f3101e.getApplicationContext().getSharedPreferences("InstallReferrerPref", 0);
    }
}
