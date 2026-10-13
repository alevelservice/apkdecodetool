package e.m.a.a.d;

import android.content.Context;
import androidx.annotation.NonNull;

/* compiled from: LocationEngineProvider.java */
/* loaded from: classes2.dex */
public final class f {
    @NonNull
    @Deprecated
    public static c a(@NonNull Context context, boolean z) {
        return a(context);
    }

    private static c b(Context context, boolean z) {
        if (z) {
            return new g(new b(context.getApplicationContext()));
        }
        return new g(new j(context.getApplicationContext()));
    }

    @NonNull
    public static c a(@NonNull Context context) {
        k.a(context, "context == null");
        boolean a2 = k.a("com.google.android.gms.location.LocationServices");
        if (k.a("com.google.android.gms.common.GoogleApiAvailability")) {
            a2 &= com.google.android.gms.common.c.a().b(context) == 0;
        }
        return b(context, a2);
    }
}
