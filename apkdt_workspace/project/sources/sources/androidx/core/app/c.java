package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.NonNull;

/* compiled from: AlarmManagerCompat.java */
/* loaded from: classes.dex */
public final class c {
    public static void a(@NonNull AlarmManager alarmManager, int i2, long j2, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(i2, j2, pendingIntent);
        } else {
            alarmManager.set(i2, j2, pendingIntent);
        }
    }

    public static void b(@NonNull AlarmManager alarmManager, int i2, long j2, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(i2, j2, pendingIntent);
        } else {
            a(alarmManager, i2, j2, pendingIntent);
        }
    }
}
