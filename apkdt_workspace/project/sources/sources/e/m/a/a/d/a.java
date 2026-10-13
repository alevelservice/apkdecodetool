package e.m.a.a.d;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* compiled from: AndroidLocationEngineImpl.java */
/* loaded from: classes2.dex */
class a implements e<LocationListener> {

    /* renamed from: a, reason: collision with root package name */
    final LocationManager f18032a;

    /* renamed from: b, reason: collision with root package name */
    String f18033b = "passive";

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull Context context) {
        this.f18032a = (LocationManager) context.getSystemService("location");
    }

    @VisibleForTesting
    static Criteria b(int i2) {
        Criteria criteria = new Criteria();
        criteria.setAccuracy(c(i2));
        criteria.setCostAllowed(true);
        criteria.setPowerRequirement(d(i2));
        return criteria;
    }

    private static int c(int i2) {
        return (i2 == 0 || i2 == 1) ? 1 : 2;
    }

    private static int d(int i2) {
        if (i2 != 0) {
            return i2 != 1 ? 1 : 2;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"MissingPermission"})
    public Location a(String str) {
        try {
            return this.f18032a.getLastKnownLocation(str);
        } catch (IllegalArgumentException e2) {
            e2.toString();
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull LocationListener locationListener, @Nullable Looper looper) {
        this.f18033b = a(hVar.e());
        this.f18032a.requestLocationUpdates(this.f18033b, hVar.c(), hVar.a(), locationListener, looper);
    }

    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull PendingIntent pendingIntent) {
        this.f18033b = a(hVar.e());
        this.f18032a.requestLocationUpdates(this.f18033b, hVar.c(), hVar.a(), pendingIntent);
    }

    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull LocationListener locationListener) {
        if (locationListener != null) {
            this.f18032a.removeUpdates(locationListener);
        }
    }

    @Override // e.m.a.a.d.e
    public void a(PendingIntent pendingIntent) {
        if (pendingIntent != null) {
            this.f18032a.removeUpdates(pendingIntent);
        }
    }

    private String a(int i2) {
        String bestProvider = i2 != 3 ? this.f18032a.getBestProvider(b(i2), true) : null;
        return bestProvider != null ? bestProvider : "passive";
    }
}
