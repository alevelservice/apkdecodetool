package e.m.a.a.d;

import android.app.PendingIntent;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;

/* compiled from: LocationEngine.java */
/* loaded from: classes2.dex */
public interface c {
    void a(PendingIntent pendingIntent);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    void a(@NonNull d<i> dVar);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    void a(@NonNull h hVar, PendingIntent pendingIntent);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    void a(@NonNull h hVar, @NonNull d<i> dVar, @Nullable Looper looper);

    void b(@NonNull d<i> dVar);
}
