package e.m.a.a.d;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GoogleLocationEngineImpl.java */
/* loaded from: classes2.dex */
public class b implements e<com.google.android.gms.location.d> {

    /* renamed from: a, reason: collision with root package name */
    private final FusedLocationProviderClient f18034a;

    /* compiled from: GoogleLocationEngineImpl.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    static final class a implements e.i.b.b.d.e<Location>, e.i.b.b.d.d {

        /* renamed from: a, reason: collision with root package name */
        private final d<i> f18035a;

        a(d<i> dVar) {
            this.f18035a = dVar;
        }

        @Override // e.i.b.b.d.e
        public void a(Location location) {
            this.f18035a.a((d<i>) (location != null ? i.a(location) : i.a((List<Location>) Collections.emptyList())));
        }

        @Override // e.i.b.b.d.d
        public void a(@NonNull Exception exc) {
            this.f18035a.a(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GoogleLocationEngineImpl.java */
    /* renamed from: e.m.a.a.d.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0206b extends com.google.android.gms.location.d {

        /* renamed from: a, reason: collision with root package name */
        private final d<i> f18036a;

        C0206b(d<i> dVar) {
            this.f18036a = dVar;
        }

        @Override // com.google.android.gms.location.d
        public void a(LocationResult locationResult) {
            super.a(locationResult);
            List<Location> k2 = locationResult.k();
            if (!k2.isEmpty()) {
                this.f18036a.a((d<i>) i.a(k2));
            } else {
                this.f18036a.a(new Exception("Unavailable location"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull Context context) {
        this.f18034a = com.google.android.gms.location.f.a(context);
    }

    private static int a(int i2) {
        if (i2 == 0) {
            return 100;
        }
        if (i2 != 1) {
            return i2 != 2 ? 105 : 104;
        }
        return 102;
    }

    @Override // e.m.a.a.d.e
    @NonNull
    public /* bridge */ /* synthetic */ com.google.android.gms.location.d b(d dVar) {
        return b((d<i>) dVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.m.a.a.d.e
    @NonNull
    public com.google.android.gms.location.d b(d<i> dVar) {
        return new C0206b(dVar);
    }

    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull d<i> dVar) {
        a aVar = new a(dVar);
        e.i.b.b.d.h<Location> h2 = this.f18034a.h();
        h2.a((e.i.b.b.d.e<? super Location>) aVar);
        h2.a((e.i.b.b.d.d) aVar);
    }

    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull com.google.android.gms.location.d dVar, @Nullable Looper looper) {
        this.f18034a.a(a(hVar), dVar, looper);
    }

    @Override // e.m.a.a.d.e
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull h hVar, @NonNull PendingIntent pendingIntent) {
        this.f18034a.a(a(hVar), pendingIntent);
    }

    @Override // e.m.a.a.d.e
    public void a(@NonNull com.google.android.gms.location.d dVar) {
        if (dVar != null) {
            this.f18034a.a(dVar);
        }
    }

    @Override // e.m.a.a.d.e
    public void a(PendingIntent pendingIntent) {
        if (pendingIntent != null) {
            this.f18034a.a(pendingIntent);
        }
    }

    private static LocationRequest a(h hVar) {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.j(hVar.c());
        locationRequest.i(hVar.b());
        locationRequest.a(hVar.a());
        locationRequest.k(hVar.d());
        locationRequest.m(a(hVar.e()));
        return locationRequest;
    }
}
