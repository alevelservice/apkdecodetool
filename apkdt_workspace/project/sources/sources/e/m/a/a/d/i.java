package e.m.a.a.d;

import android.content.Intent;
import android.location.Location;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.location.LocationResult;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: LocationEngineResult.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private final List<Location> f18049a;

    private i(List<Location> list) {
        this.f18049a = Collections.unmodifiableList(list);
    }

    @NonNull
    public static i a(@Nullable Location location) {
        ArrayList arrayList = new ArrayList();
        if (location != null) {
            arrayList.add(location);
        }
        return new i(arrayList);
    }

    @Nullable
    public static i c(Intent intent) {
        i b2 = k.a("com.google.android.gms.location.LocationResult") ? b(intent) : null;
        return b2 == null ? a(intent) : b2;
    }

    private static boolean d(Intent intent) {
        return intent != null && intent.hasExtra("location");
    }

    public List<Location> b() {
        return Collections.unmodifiableList(this.f18049a);
    }

    private static i b(Intent intent) {
        LocationResult a2 = LocationResult.a(intent);
        if (a2 != null) {
            return a(a2.k());
        }
        return null;
    }

    @NonNull
    public static i a(@Nullable List<Location> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.removeAll(Collections.singleton(null));
            return new i(arrayList);
        }
        return new i(Collections.emptyList());
    }

    @Nullable
    public Location a() {
        if (this.f18049a.isEmpty()) {
            return null;
        }
        return this.f18049a.get(0);
    }

    private static i a(Intent intent) {
        if (d(intent)) {
            return a((Location) intent.getExtras().getParcelable("location"));
        }
        return null;
    }
}
