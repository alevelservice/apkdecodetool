package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;

@Deprecated
/* loaded from: classes.dex */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: e, reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f2315e = new SparseArray<>();

    /* renamed from: f, reason: collision with root package name */
    private static int f2316f = 1;

    public static boolean completeWakefulIntent(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        synchronized (f2315e) {
            PowerManager.WakeLock wakeLock = f2315e.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                f2315e.remove(intExtra);
                return true;
            }
            String str = "No active wake lock id #" + intExtra;
            return true;
        }
    }

    public static ComponentName startWakefulService(Context context, Intent intent) {
        synchronized (f2315e) {
            int i2 = f2316f;
            f2316f++;
            if (f2316f <= 0) {
                f2316f = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i2);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            f2315e.put(i2, newWakeLock);
            return startService;
        }
    }
}
