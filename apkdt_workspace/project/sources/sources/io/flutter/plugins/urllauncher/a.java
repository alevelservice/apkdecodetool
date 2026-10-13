package io.flutter.plugins.urllauncher;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.plugins.urllauncher.b;
import java.util.Map;

/* compiled from: MethodCallHandlerImpl.java */
/* loaded from: classes2.dex */
final class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final b f19517e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private k f19518f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f19517e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(g.a.c.a.c cVar) {
        if (this.f19518f != null) {
            a();
        }
        this.f19518f = new k(cVar, "plugins.flutter.io/url_launcher");
        this.f19518f.a(this);
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = (String) jVar.a(HummerConstants.URL);
        String str2 = jVar.f18223a;
        int hashCode = str2.hashCode();
        if (hashCode == -1109843021) {
            if (str2.equals("launch")) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode != -185306205) {
            if (hashCode == -121617663 && str2.equals("closeWebView")) {
                c2 = 2;
            }
            c2 = 65535;
        } else {
            if (str2.equals("canLaunch")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            a(dVar, str);
            return;
        }
        if (c2 == 1) {
            a(jVar, dVar, str);
        } else if (c2 != 2) {
            dVar.a();
        } else {
            a(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        k kVar = this.f19518f;
        if (kVar == null) {
            return;
        }
        kVar.a((k.c) null);
        this.f19518f = null;
    }

    private void a(k.d dVar, String str) {
        dVar.a(Boolean.valueOf(this.f19517e.a(str)));
    }

    private void a(j jVar, k.d dVar, String str) {
        b.a a2 = this.f19517e.a(str, a((Map<String, String>) jVar.a("headers")), ((Boolean) jVar.a("useWebView")).booleanValue(), ((Boolean) jVar.a("enableJavaScript")).booleanValue(), ((Boolean) jVar.a("enableDomStorage")).booleanValue());
        if (a2 == b.a.NO_ACTIVITY) {
            dVar.a("NO_ACTIVITY", "Launching a URL requires a foreground activity.", null);
        } else if (a2 == b.a.ACTIVITY_NOT_FOUND) {
            dVar.a("ACTIVITY_NOT_FOUND", String.format("No Activity found to handle intent { %s }", str), null);
        } else {
            dVar.a(true);
        }
    }

    private void a(k.d dVar) {
        this.f19517e.a();
        dVar.a(null);
    }

    private static Bundle a(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, map.get(str));
        }
        return bundle;
    }
}
