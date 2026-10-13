package io.flutter.plugins.share;

import g.a.c.a.j;
import g.a.c.a.k;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: MethodCallHandler.java */
/* loaded from: classes2.dex */
class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private b f19501e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f19501e = bVar;
    }

    private void a(j jVar) {
        if (!(jVar.f18224b instanceof Map)) {
            throw new IllegalArgumentException("Map argument expected");
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        int hashCode = str.hashCode();
        if (hashCode != -1811378728) {
            if (hashCode == 109400031 && str.equals("share")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("shareFiles")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            a(jVar);
            this.f19501e.a((String) jVar.a("text"), (String) jVar.a("subject"));
            dVar.a(null);
            return;
        }
        if (c2 != 1) {
            dVar.a();
            return;
        }
        a(jVar);
        try {
            this.f19501e.a((List) jVar.a("paths"), (List) jVar.a("mimeTypes"), (String) jVar.a("text"), (String) jVar.a("subject"));
            dVar.a(null);
        } catch (IOException e2) {
            dVar.a(e2.getMessage(), null, null);
        }
    }
}
