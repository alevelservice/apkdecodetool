package io.flutter.plugins.a;

import g.a.c.a.j;
import g.a.c.a.k;

/* compiled from: ConnectivityMethodChannelHandler.java */
/* loaded from: classes2.dex */
class c implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private a f19338e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f19338e = aVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1340798144:
                if (str.equals("wifiName")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 94627080:
                if (str.equals("check")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1373405384:
                if (str.equals("wifiBSSID")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1756715352:
                if (str.equals("wifiIPAddress")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            dVar.a(this.f19338e.b());
            return;
        }
        if (c2 == 1) {
            dVar.a(this.f19338e.e());
            return;
        }
        if (c2 == 2) {
            dVar.a(this.f19338e.c());
        } else if (c2 != 3) {
            dVar.a();
        } else {
            dVar.a(this.f19338e.d());
        }
    }
}
