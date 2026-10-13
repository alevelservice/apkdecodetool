package e.d.a;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.l.a;
import com.google.android.gms.common.e;
import com.google.android.gms.common.f;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* compiled from: PluginHardwarePlugin.java */
/* loaded from: classes.dex */
public class d implements k.c, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: f, reason: collision with root package name */
    private static k f17084f;

    /* renamed from: e, reason: collision with root package name */
    private Activity f17085e;

    private String a(String str) {
        return str != null ? str : "";
    }

    private void a(Context context, g.a.c.a.c cVar) {
        f17084f = new k(cVar, "com.intercept.plugin_hardware/plugin_hardware");
        f17084f.a(this);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f17085e = cVar.getActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f17085e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f17084f;
        if (kVar != null) {
            kVar.a((k.c) null);
            f17084f = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        int hashCode = str.hashCode();
        if (hashCode == -600325233) {
            if (str.equals("getAndroidHardwareInfo")) {
                c2 = 2;
            }
            c2 = 65535;
        } else if (hashCode != 1324669685) {
            if (hashCode == 1385449135 && str.equals("getPlatformVersion")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str.equals("getSimSerial")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            dVar.a(c.f(this.f17085e));
            return;
        }
        if (c2 == 1) {
            dVar.a("");
        } else if (c2 != 2) {
            dVar.a();
        } else {
            a(this.f17085e, dVar);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private void a(final Context context, final k.d dVar) {
        g.c.a.b.d.a(new Callable() { // from class: e.d.a.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d.a(context);
            }
        }).b(g.c.a.i.b.a()).a(g.c.a.a.b.b.b()).a(new g.c.a.e.d() { // from class: e.d.a.b
            @Override // g.c.a.e.d
            public final void a(Object obj) {
                d.this.a(context, dVar, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String a(Context context) {
        try {
            if (com.google.android.gms.common.c.a().b(context) != 0) {
                return "";
            }
            a.C0077a a2 = com.google.android.gms.ads.l.a.a(context);
            return a2.b() ? "did not found GAID... sorry" : a2.a();
        } catch (e e2) {
            e2.printStackTrace();
            return "";
        } catch (f e3) {
            e3.printStackTrace();
            return "";
        } catch (IOException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public /* synthetic */ void a(Context context, k.d dVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("localIPAddress", a(c.a()));
        hashMap.put("batteryStatus", a(c.a(context)));
        hashMap.put("carrierName", a(c.c(context)));
        hashMap.put("imsiNumber", a(c.f(context)));
        hashMap.put("bundleIdentifier", a(c.b(context)));
        hashMap.put("networkMode", a(c.e(context)));
        hashMap.put("advertisementId", a(str));
        hashMap.put("wifiStrength", a(c.i(context)));
        hashMap.put("imeiNumber", a(c.d(context)));
        dVar.a(hashMap);
    }
}
