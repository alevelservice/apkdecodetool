package com.mapbox.mapboxsdk.location;

import android.location.Location;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.r;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LocationAnimatorCoordinator.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.w f15809b;

    /* renamed from: c, reason: collision with root package name */
    private Location f15810c;

    /* renamed from: g, reason: collision with root package name */
    private float f15814g;

    /* renamed from: h, reason: collision with root package name */
    private final s f15815h;

    /* renamed from: i, reason: collision with root package name */
    private final t f15816i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15817j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15818k;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final SparseArray<r> f15808a = new SparseArray<>();

    /* renamed from: d, reason: collision with root package name */
    private float f15811d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    private float f15812e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    private long f15813f = -1;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    int f15819l = Integer.MAX_VALUE;

    @VisibleForTesting
    final SparseArray<r.b> m = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull t tVar, @NonNull s sVar) {
        this.f15809b = wVar;
        this.f15815h = sVar;
        this.f15816i = tVar;
    }

    private float a(boolean z, float f2) {
        if (z) {
            return 0.0f;
        }
        return f2;
    }

    private void b(LatLng[] latLngArr, Float[] fArr) {
        a(0, latLngArr);
        a(2, fArr);
    }

    private boolean c(@NonNull CameraPosition cameraPosition, boolean z) {
        b(cameraPosition, z);
        return b(cameraPosition);
    }

    private float f() {
        r rVar = this.f15808a.get(6);
        if (rVar != null) {
            return ((Float) rVar.getAnimatedValue()).floatValue();
        }
        return this.f15811d;
    }

    private float g() {
        u uVar = (u) this.f15808a.get(3);
        if (uVar != null) {
            return ((Float) uVar.getAnimatedValue()).floatValue();
        }
        return this.f15812e;
    }

    private float h() {
        u uVar = (u) this.f15808a.get(2);
        if (uVar != null) {
            return ((Float) uVar.getAnimatedValue()).floatValue();
        }
        return this.f15810c.getBearing();
    }

    private LatLng i() {
        r rVar = this.f15808a.get(0);
        if (rVar != null) {
            return (LatLng) rVar.getAnimatedValue();
        }
        return new LatLng(this.f15810c);
    }

    private void j() {
        r rVar = this.f15808a.get(9);
        if (rVar != null) {
            rVar.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Set<a> set) {
        r rVar;
        this.m.clear();
        for (a aVar : set) {
            this.m.append(aVar.a(), aVar.b());
        }
        for (int i2 = 0; i2 < this.f15808a.size(); i2++) {
            int keyAt = this.f15808a.keyAt(i2);
            if (this.m.get(keyAt) == null && (rVar = this.f15808a.get(keyAt)) != null) {
                rVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        v vVar = (v) this.f15808a.get(0);
        u uVar = (u) this.f15808a.get(2);
        u uVar2 = (u) this.f15808a.get(3);
        u uVar3 = (u) this.f15808a.get(6);
        if (vVar != null && uVar != null) {
            a(0, (LatLng) vVar.getAnimatedValue(), vVar.a());
            a(2, ((Float) uVar.getAnimatedValue()).floatValue(), uVar.a().floatValue());
            a(vVar.getDuration() - vVar.getCurrentPlayTime(), 0, 2);
        }
        if (uVar2 != null) {
            a(3, g(), uVar2.a().floatValue());
            a(this.f15817j ? 500L : 0L, 3);
        }
        if (uVar3 != null) {
            a(this.f15811d, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        b(9);
    }

    private boolean b(@NonNull CameraPosition cameraPosition) {
        v vVar = (v) this.f15808a.get(1);
        if (vVar == null) {
            return false;
        }
        LatLng a2 = vVar.a();
        LatLng latLng = cameraPosition.target;
        a(1, latLng, a2);
        return g0.a(this.f15809b, latLng, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        b(7);
    }

    private void b(@NonNull CameraPosition cameraPosition, boolean z) {
        u uVar = (u) this.f15808a.get(4);
        if (uVar == null) {
            return;
        }
        float a2 = a(z, uVar.a().floatValue());
        float f2 = (float) cameraPosition.bearing;
        a(4, f2, g0.a(a2, f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Location location, @NonNull CameraPosition cameraPosition, boolean z) {
        a(new Location[]{location}, cameraPosition, z, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull @Size(min = 1) Location[] locationArr, @NonNull CameraPosition cameraPosition, boolean z, boolean z2) {
        boolean z3 = true;
        Location location = locationArr[locationArr.length - 1];
        if (this.f15810c == null) {
            this.f15810c = location;
            this.f15813f = SystemClock.elapsedRealtime() - 750;
        }
        LatLng i2 = i();
        float h2 = h();
        LatLng latLng = cameraPosition.target;
        float a2 = g0.a((float) cameraPosition.bearing);
        LatLng[] a3 = a(i2, locationArr);
        Float[] a4 = a(Float.valueOf(h2), locationArr);
        b(a3, a4);
        a3[0] = latLng;
        if (z) {
            a4 = new Float[]{Float.valueOf(a2), Float.valueOf(0.0f)};
        } else {
            a4[0] = Float.valueOf(a2);
        }
        a(a3, a4);
        LatLng latLng2 = new LatLng(location);
        if (!g0.a(this.f15809b, latLng, latLng2) && !g0.a(this.f15809b, i2, latLng2)) {
            z3 = false;
        }
        long j2 = 0;
        if (!z3) {
            long j3 = this.f15813f;
            this.f15813f = SystemClock.elapsedRealtime();
            if (j3 != 0) {
                if (z2) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis > location.getTime()) {
                        Logger.e("LocationAnimatorCoordinator", "Lookahead enabled, but the target location's timestamp is smaller than current timestamp");
                    } else {
                        j2 = location.getTime() - currentTimeMillis;
                    }
                } else {
                    j2 = ((float) (this.f15813f - j3)) * this.f15814g;
                }
            }
            j2 = Math.min(j2, 2000L);
        }
        a(j2, 0, 2, 1, 4);
        this.f15810c = location;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        b(8);
    }

    private void b(int i2) {
        r rVar = this.f15808a.get(i2);
        if (rVar != null) {
            rVar.cancel();
            rVar.removeAllUpdateListeners();
            rVar.removeAllListeners();
            this.f15808a.put(i2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.f15817j = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, @NonNull CameraPosition cameraPosition) {
        if (this.f15812e < 0.0f) {
            this.f15812e = f2;
        }
        a(f2, g(), (float) cameraPosition.bearing);
        a(this.f15817j ? 500L : 0L, 3, 5);
        this.f15812e = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, boolean z) {
        if (this.f15811d < 0.0f) {
            this.f15811d = f2;
        }
        a(f2, f());
        a((z || !this.f15818k) ? 0L : 250L, 6);
        this.f15811d = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LocationComponentOptions locationComponentOptions) {
        b(9);
        r.b bVar = this.m.get(9);
        if (bVar != null) {
            this.f15808a.put(9, this.f15815h.a(bVar, this.f15819l, locationComponentOptions.I(), locationComponentOptions.H(), locationComponentOptions.G() == null ? new DecelerateInterpolator() : locationComponentOptions.G()));
            j();
        }
    }

    private LatLng[] a(LatLng latLng, Location[] locationArr) {
        LatLng[] latLngArr = new LatLng[locationArr.length + 1];
        latLngArr[0] = latLng;
        for (int i2 = 1; i2 < latLngArr.length; i2++) {
            latLngArr[i2] = new LatLng(locationArr[i2 - 1]);
        }
        return latLngArr;
    }

    private Float[] a(Float f2, Location[] locationArr) {
        Float[] fArr = new Float[locationArr.length + 1];
        fArr[0] = Float.valueOf(g0.a(f2.floatValue()));
        for (int i2 = 1; i2 < fArr.length; i2++) {
            int i3 = i2 - 1;
            fArr[i2] = Float.valueOf(g0.a(locationArr[i3].getBearing(), fArr[i3].floatValue()));
        }
        return fArr;
    }

    private void a(LatLng[] latLngArr, Float[] fArr) {
        a(1, latLngArr);
        a(4, fArr);
    }

    private void a(float f2, float f3, float f4) {
        a(3, f3, g0.a(f2, f3));
        a(5, f4, g0.a(f2, f4));
    }

    private void a(float f2, float f3) {
        a(6, f3, f2);
    }

    private void a(int i2, LatLng latLng, LatLng latLng2) {
        a(i2, new LatLng[]{latLng, latLng2});
    }

    private void a(int i2, LatLng[] latLngArr) {
        b(i2);
        r.b bVar = this.m.get(i2);
        if (bVar != null) {
            this.f15808a.put(i2, this.f15815h.a(latLngArr, bVar, this.f15819l));
        }
    }

    private void a(int i2, float f2, float f3) {
        a(i2, new Float[]{Float.valueOf(f2), Float.valueOf(f3)});
    }

    private void a(int i2, @NonNull @Size(min = 2) Float[] fArr) {
        b(i2);
        r.b bVar = this.m.get(i2);
        if (bVar != null) {
            this.f15808a.put(i2, this.f15815h.a(fArr, bVar, this.f15819l));
        }
    }

    private void a(long j2, int... iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            r rVar = this.f15808a.get(i2);
            if (rVar != null) {
                arrayList.add(rVar);
            }
        }
        this.f15816i.a(arrayList, new LinearInterpolator(), j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull CameraPosition cameraPosition, boolean z) {
        a(cameraPosition);
        a(c(cameraPosition, z) ? 0L : 750L, 1, 4);
    }

    private void a(@NonNull CameraPosition cameraPosition) {
        u uVar = (u) this.f15808a.get(5);
        if (uVar == null) {
            return;
        }
        float floatValue = uVar.a().floatValue();
        float f2 = (float) cameraPosition.bearing;
        a(5, f2, g0.a(floatValue, f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        for (int i2 = 0; i2 < this.f15808a.size(); i2++) {
            b(this.f15808a.keyAt(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        this.f15814g = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f15818k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        if (i2 <= 0) {
            Logger.e("Mbgl-LocationAnimatorCoordinator", "Max animation FPS cannot be less or equal to 0.");
        } else {
            this.f15819l = i2;
        }
    }
}
