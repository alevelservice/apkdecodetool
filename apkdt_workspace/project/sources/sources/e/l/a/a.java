package e.l.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.f;
import com.google.android.gms.location.g;
import com.google.android.gms.location.j;
import e.i.b.b.d.h;
import g.a.c.a.d;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import java.util.HashMap;

/* compiled from: LocationPlugin.java */
/* loaded from: classes2.dex */
public class a implements io.flutter.embedding.engine.g.a, k.c, d.InterfaceC0212d, m.a, m.e, io.flutter.embedding.engine.g.c.a {
    private static LocationRequest v = null;
    private static long w = 5000;
    private static long x = w / 2;
    private static Integer y = 100;
    private static float z = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    private k f18001e;

    /* renamed from: f, reason: collision with root package name */
    private g.a.c.a.d f18002f;

    /* renamed from: g, reason: collision with root package name */
    private io.flutter.embedding.engine.g.c.c f18003g;

    /* renamed from: h, reason: collision with root package name */
    private FusedLocationProviderClient f18004h;

    /* renamed from: i, reason: collision with root package name */
    private j f18005i;

    /* renamed from: j, reason: collision with root package name */
    private LocationSettingsRequest f18006j;

    /* renamed from: k, reason: collision with root package name */
    private com.google.android.gms.location.d f18007k;

    /* renamed from: l, reason: collision with root package name */
    @TargetApi(24)
    private OnNmeaMessageListener f18008l;
    private Double m;
    private d.b n;
    private k.d o;
    private int p;
    private Activity q;
    private LocationManager s;
    private boolean r = false;
    private HashMap<Integer, Integer> t = new HashMap<>();
    private boolean u = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationPlugin.java */
    /* renamed from: e.l.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0204a extends com.google.android.gms.location.d {
        C0204a() {
        }

        @Override // com.google.android.gms.location.d
        public void a(LocationResult locationResult) {
            super.a(locationResult);
            Location j2 = locationResult.j();
            HashMap hashMap = new HashMap();
            hashMap.put("latitude", Double.valueOf(j2.getLatitude()));
            hashMap.put("longitude", Double.valueOf(j2.getLongitude()));
            hashMap.put("accuracy", Double.valueOf(j2.getAccuracy()));
            if (a.this.m != null && Build.VERSION.SDK_INT >= 24) {
                hashMap.put("altitude", a.this.m);
            } else {
                hashMap.put("altitude", Double.valueOf(j2.getAltitude()));
            }
            hashMap.put("speed", Double.valueOf(j2.getSpeed()));
            if (Build.VERSION.SDK_INT >= 26) {
                hashMap.put("speed_accuracy", Double.valueOf(j2.getSpeedAccuracyMetersPerSecond()));
            }
            hashMap.put("heading", Double.valueOf(j2.getBearing()));
            hashMap.put("time", Double.valueOf(j2.getTime()));
            if (a.this.o != null) {
                a.this.o.a(hashMap);
                a.this.o = null;
            }
            if (a.this.n != null) {
                a.this.n.a(hashMap);
            } else {
                a.this.f18004h.a(a.this.f18007k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationPlugin.java */
    /* loaded from: classes2.dex */
    public class b implements OnNmeaMessageListener {
        b() {
        }

        @Override // android.location.OnNmeaMessageListener
        public void onNmeaMessage(String str, long j2) {
            if (str.startsWith("$")) {
                String[] split = str.split(",");
                if (!split[0].startsWith("$GPGGA") || split.length < 9 || split[9].isEmpty()) {
                    return;
                }
                a.this.m = Double.valueOf(Double.parseDouble(split[9]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationPlugin.java */
    /* loaded from: classes2.dex */
    public class c implements e.i.b.b.d.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f18011a;

        c(k.d dVar) {
            this.f18011a = dVar;
        }

        @Override // e.i.b.b.d.d
        public void a(@NonNull Exception exc) {
            int statusCode = ((com.google.android.gms.common.api.b) exc).getStatusCode();
            if (statusCode != 6) {
                if (statusCode != 8502) {
                    return;
                }
                this.f18011a.a("SERVICE_STATUS_DISABLED", "Failed to get location. Location services disabled", null);
            } else {
                try {
                    a.this.u = true;
                    ((com.google.android.gms.common.api.k) exc).startResolutionForResult(a.this.q, 4097);
                } catch (IntentSender.SendIntentException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationPlugin.java */
    /* loaded from: classes2.dex */
    public class d implements e.i.b.b.d.d {
        d() {
        }

        @Override // e.i.b.b.d.d
        public void a(@NonNull Exception exc) {
            if (((com.google.android.gms.common.api.b) exc).getStatusCode() != 6) {
                return;
            }
            try {
                ((com.google.android.gms.common.api.k) exc).startResolutionForResult(a.this.q, 1);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationPlugin.java */
    /* loaded from: classes2.dex */
    public class e implements e.i.b.b.d.e<g> {
        e() {
        }

        @Override // e.i.b.b.d.e
        public void a(g gVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                if (a.this.d()) {
                    a.this.s.addNmeaListener(a.this.f18008l, new Handler(Looper.getMainLooper()));
                } else if (a.this.i()) {
                    if (a.this.o != null) {
                        a.this.o.a("PERMISSION_DENIED", "Location permission denied", null);
                    } else if (a.this.n != null) {
                        a.this.n.a("PERMISSION_DENIED", "Location permission denied", null);
                        a.this.n = null;
                    }
                } else {
                    a.this.h();
                }
            }
            a.this.f18004h.a(a.v, a.this.f18007k, Looper.myLooper());
        }
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 != 1) {
            if (i2 != 4097) {
                return false;
            }
            if (this.u) {
                if (i3 == -1) {
                    this.o.a(1);
                } else {
                    this.o.a(0);
                }
                this.u = false;
            }
        } else if (i3 == -1) {
            a();
        } else {
            k.d dVar = this.o;
            if (dVar != null) {
                dVar.a("PERMISSION_DENIED", "Location permission denied", null);
            }
        }
        return true;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.q = cVar.getActivity();
        this.f18003g = cVar;
        g();
        cVar.a((m.a) this);
        cVar.a((m.e) this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        io.flutter.embedding.engine.g.c.c cVar = this.f18003g;
        if (cVar != null) {
            cVar.b((m.a) this);
            this.f18003g.b((m.e) this);
        }
        this.f18003g = null;
        this.q = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = this.f18001e;
        if (kVar != null) {
            kVar.a((k.c) null);
            this.f18001e = null;
        }
        g.a.c.a.d dVar = this.f18002f;
        if (dVar != null) {
            dVar.a((d.InterfaceC0212d) null);
            this.f18002f = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -316023509:
                if (str.equals("getLocation")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 128007462:
                if (str.equals("requestService")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 171850761:
                if (str.equals("hasPermission")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 646862540:
                if (str.equals("serviceEnabled")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 746581438:
                if (str.equals("requestPermission")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1149076467:
                if (str.equals("changeSettings")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            try {
                y = this.t.get(jVar.a("accuracy"));
                w = new Long(((Integer) jVar.a("interval")).intValue()).longValue();
                x = w / 2;
                z = new Float(((Double) jVar.a("distanceFilter")).doubleValue()).floatValue();
                e();
                f();
                c();
                dVar.a(1);
                return;
            } catch (Exception e2) {
                dVar.a("CHANGE_SETTINGS_ERROR", "An unexcepted error happened during location settings change:" + e2.getMessage(), null);
                return;
            }
        }
        if (c2 == 1) {
            this.o = dVar;
            if (!d()) {
                h();
                return;
            } else {
                a();
                return;
            }
        }
        if (c2 == 2) {
            if (Build.VERSION.SDK_INT < 23) {
                dVar.a(1);
                return;
            } else if (d()) {
                dVar.a(1);
                return;
            } else {
                dVar.a(0);
                return;
            }
        }
        if (c2 == 3) {
            if (Build.VERSION.SDK_INT < 23) {
                dVar.a(1);
                return;
            }
            this.r = true;
            this.o = dVar;
            h();
            return;
        }
        if (c2 == 4) {
            a(dVar);
        } else if (c2 != 5) {
            dVar.a();
        } else {
            b(dVar);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 34 || strArr.length != 1 || !strArr[0].equals("android.permission.ACCESS_FINE_LOCATION")) {
            return false;
        }
        if (this.r) {
            this.r = false;
            if (iArr[0] == 0) {
                this.o.a(1);
            } else {
                this.o.a(0);
            }
            this.o = null;
        }
        if (iArr[0] == 0) {
            if (this.o != null) {
                a();
            } else if (this.n != null) {
                a();
            }
        } else if (!i()) {
            k.d dVar = this.o;
            if (dVar != null) {
                dVar.a("PERMISSION_DENIED_NEVER_ASK", "Location permission denied forever- please open app settings", null);
            } else {
                d.b bVar = this.n;
                if (bVar != null) {
                    bVar.a("PERMISSION_DENIED_NEVER_ASK", "Location permission denied forever - please open app settings", null);
                    this.n = null;
                }
            }
        } else {
            k.d dVar2 = this.o;
            if (dVar2 != null) {
                dVar2.a("PERMISSION_DENIED", "Location permission denied", null);
            } else {
                d.b bVar2 = this.n;
                if (bVar2 != null) {
                    bVar2.a("PERMISSION_DENIED", "Location permission denied", null);
                    this.n = null;
                }
            }
        }
        return true;
    }

    private void c() {
        LocationSettingsRequest.a aVar = new LocationSettingsRequest.a();
        aVar.a(v);
        this.f18006j = aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        this.p = androidx.core.content.a.a(this.q, "android.permission.ACCESS_FINE_LOCATION");
        return this.p == 0;
    }

    private void e() {
        this.f18007k = new C0204a();
        if (Build.VERSION.SDK_INT >= 24) {
            this.f18008l = new b();
        }
    }

    private void f() {
        v = LocationRequest.k();
        v.j(w);
        v.i(x);
        v.m(y.intValue());
        v.a(z);
    }

    private void g() {
        this.f18004h = f.a(this.q);
        this.f18005i = f.b(this.q);
        this.s = (LocationManager) this.q.getSystemService("location");
        this.t.put(0, 105);
        this.t.put(1, 104);
        this.t.put(2, 102);
        this.t.put(3, 100);
        this.t.put(4, 100);
        e();
        f();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        androidx.core.app.a.a(this.q, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return androidx.core.app.a.a(this.q, "android.permission.ACCESS_FINE_LOCATION");
    }

    public void b(k.d dVar) {
        if (a((k.d) null)) {
            dVar.a(1);
        } else {
            this.o = dVar;
            this.f18005i.a(this.f18006j).a(this.q, new c(dVar));
        }
    }

    private void a(Context context, g.a.c.a.c cVar) {
        this.f18001e = new k(cVar, "lyokone/location");
        this.f18001e.a(this);
        this.f18002f = new g.a.c.a.d(cVar, "lyokone/locationstream");
        this.f18002f.a(this);
    }

    public boolean a(k.d dVar) {
        try {
            boolean isProviderEnabled = this.s.isProviderEnabled("gps");
            boolean isProviderEnabled2 = this.s.isProviderEnabled("network");
            if (isProviderEnabled || isProviderEnabled2) {
                if (dVar != null) {
                    dVar.a(1);
                }
                return true;
            }
            if (dVar != null) {
                dVar.a(0);
            }
            return false;
        } catch (Exception unused) {
            dVar.a("SERVICE_STATUS_ERROR", "Location service status couldn't be determined", null);
            return false;
        }
    }

    public void a() {
        h<g> a2 = this.f18005i.a(this.f18006j);
        a2.a(this.q, new e());
        a2.a(this.q, new d());
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj, d.b bVar) {
        this.n = bVar;
        if (!d()) {
            h();
            if (this.p == -1) {
                this.o.a("PERMISSION_DENIED", "The user explicitly denied the use of location services for this app or location services are currently disabled in Settings.", null);
            }
        }
        a();
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj) {
        this.f18004h.a(this.f18007k);
        this.n = null;
    }
}
