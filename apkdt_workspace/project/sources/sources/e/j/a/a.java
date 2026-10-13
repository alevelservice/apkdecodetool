package e.j.a;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;

/* compiled from: LaunchReviewPlugin.java */
/* loaded from: classes2.dex */
public class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final m.d f17997e;

    private a(m.d dVar) {
        this.f17997e = dVar;
    }

    public static void a(m.d dVar) {
        new k(dVar.d(), "launch_review").a(new a(dVar));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("launch")) {
            String str = (String) jVar.a("android_id");
            if (str == null) {
                str = this.f17997e.b().getPackageName();
            }
            try {
                this.f17997e.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
            } catch (ActivityNotFoundException unused) {
                this.f17997e.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + str)));
            }
            dVar.a(null);
            return;
        }
        dVar.a();
    }
}
