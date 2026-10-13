package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;

/* compiled from: TwilightManager.java */
/* loaded from: classes.dex */
class j {

    /* renamed from: d, reason: collision with root package name */
    private static j f860d;

    /* renamed from: a, reason: collision with root package name */
    private final Context f861a;

    /* renamed from: b, reason: collision with root package name */
    private final LocationManager f862b;

    /* renamed from: c, reason: collision with root package name */
    private final a f863c = new a();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TwilightManager.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f864a;

        /* renamed from: b, reason: collision with root package name */
        long f865b;

        /* renamed from: c, reason: collision with root package name */
        long f866c;

        /* renamed from: d, reason: collision with root package name */
        long f867d;

        /* renamed from: e, reason: collision with root package name */
        long f868e;

        /* renamed from: f, reason: collision with root package name */
        long f869f;

        a() {
        }
    }

    @VisibleForTesting
    j(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.f861a = context;
        this.f862b = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(@NonNull Context context) {
        if (f860d == null) {
            Context applicationContext = context.getApplicationContext();
            f860d = new j(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f860d;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location a2 = PermissionChecker.b(this.f861a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        Location a3 = PermissionChecker.b(this.f861a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? a("gps") : null;
        return (a3 == null || a2 == null) ? a3 != null ? a3 : a2 : a3.getTime() > a2.getTime() ? a3 : a2;
    }

    private boolean c() {
        return this.f863c.f869f > System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        a aVar = this.f863c;
        if (c()) {
            return aVar.f864a;
        }
        Location b2 = b();
        if (b2 != null) {
            a(b2);
            return aVar.f864a;
        }
        int i2 = Calendar.getInstance().get(11);
        return i2 < 6 || i2 >= 22;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private Location a(String str) {
        try {
            if (this.f862b.isProviderEnabled(str)) {
                return this.f862b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(@NonNull Location location) {
        long j2;
        a aVar = this.f863c;
        long currentTimeMillis = System.currentTimeMillis();
        i a2 = i.a();
        a2.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = a2.f857a;
        a2.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = a2.f859c == 1;
        long j4 = a2.f858b;
        long j5 = a2.f857a;
        boolean z2 = z;
        a2.a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = a2.f858b;
        if (j4 == -1 || j5 == -1) {
            j2 = 43200000 + currentTimeMillis;
        } else {
            j2 = (currentTimeMillis > j5 ? 0 + j6 : currentTimeMillis > j4 ? 0 + j5 : 0 + j4) + 60000;
        }
        aVar.f864a = z2;
        aVar.f865b = j3;
        aVar.f866c = j4;
        aVar.f867d = j5;
        aVar.f868e = j6;
        aVar.f869f = j2;
    }
}
