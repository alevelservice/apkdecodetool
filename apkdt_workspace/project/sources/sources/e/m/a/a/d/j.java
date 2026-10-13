package e.m.a.a.d;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;

/* compiled from: MapboxFusedLocationEngineImpl.java */
/* loaded from: classes2.dex */
class j extends e.m.a.a.d.a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapboxFusedLocationEngineImpl.java */
    /* loaded from: classes2.dex */
    public static final class a implements LocationListener {

        /* renamed from: a, reason: collision with root package name */
        private final d<i> f18050a;

        /* renamed from: b, reason: collision with root package name */
        private Location f18051b;

        a(d<i> dVar) {
            this.f18050a = dVar;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (k.a(location, this.f18051b)) {
                this.f18051b = location;
            }
            d<i> dVar = this.f18050a;
            if (dVar != null) {
                dVar.a((d<i>) i.a(this.f18051b));
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            String str2 = "onProviderDisabled: " + str;
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            String str2 = "onProviderEnabled: " + str;
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i2, Bundle bundle) {
            String str2 = "onStatusChanged: " + str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(@NonNull Context context) {
        super(context);
    }

    @Override // e.m.a.a.d.e
    @NonNull
    public /* bridge */ /* synthetic */ LocationListener b(d dVar) {
        return b((d<i>) dVar);
    }

    @Override // e.m.a.a.d.e
    public void a(@NonNull d<i> dVar) {
        Location a2 = a();
        if (a2 != null) {
            dVar.a((d<i>) i.a(a2));
        } else {
            dVar.a(new Exception("Last location unavailable"));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.m.a.a.d.e
    @NonNull
    public LocationListener b(d<i> dVar) {
        return new a(dVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull LocationListener locationListener, @Nullable Looper looper) {
        super.a(hVar, locationListener, looper);
        if (a(hVar.e())) {
            try {
                this.f18032a.requestLocationUpdates("network", hVar.c(), hVar.a(), locationListener, looper);
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // e.m.a.a.d.a, e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull PendingIntent pendingIntent) {
        super.a(hVar, pendingIntent);
        if (a(hVar.e())) {
            try {
                this.f18032a.requestLocationUpdates("network", hVar.c(), hVar.a(), pendingIntent);
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
        }
    }

    private Location a() {
        Iterator<String> it = this.f18032a.getAllProviders().iterator();
        Location location = null;
        while (it.hasNext()) {
            Location a2 = a(it.next());
            if (a2 != null && k.a(a2, location)) {
                location = a2;
            }
        }
        return location;
    }

    private boolean a(int i2) {
        return (i2 == 0 || i2 == 1) && this.f18033b.equals("gps");
    }
}
