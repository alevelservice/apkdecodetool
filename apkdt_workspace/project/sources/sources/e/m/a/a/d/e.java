package e.m.a.a.d;

import android.app.PendingIntent;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: LocationEngineImpl.java */
/* loaded from: classes2.dex */
interface e<T> {
    void a(PendingIntent pendingIntent);

    void a(@NonNull d<i> dVar);

    void a(@NonNull h hVar, @NonNull PendingIntent pendingIntent);

    void a(@NonNull h hVar, @NonNull T t, @Nullable Looper looper);

    void a(T t);

    @NonNull
    T b(d<i> dVar);
}
