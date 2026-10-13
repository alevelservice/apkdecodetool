package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.w;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static d f5411a = new d();

    /* renamed from: b, reason: collision with root package name */
    private static Boolean f5412b;

    @KeepForSdk
    public static d a() {
        return f5411a;
    }

    private static boolean b() {
        if (f5412b == null) {
            f5412b = false;
        }
        return f5412b.booleanValue();
    }

    @KeepForSdk
    public void a(Context context, Intent intent) {
        a(context, intent.getStringExtra("WAKE_LOCK_KEY"), 8, null, null, null, 0, null);
    }

    @KeepForSdk
    public void a(Context context, String str, int i2, String str2, String str3, String str4, int i3, List<String> list) {
        a(context, str, i2, str2, str3, str4, i3, list, 0L);
    }

    @KeepForSdk
    public void a(Context context, String str, int i2, String str2, String str3, String str4, int i3, List<String> list, long j2) {
        if (b()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "missing wakeLock key. ".concat(valueOf);
                    return;
                } else {
                    new String("missing wakeLock key. ");
                    return;
                }
            }
            if (7 == i2 || 8 == i2 || 10 == i2 || 11 == i2) {
                a(context, new WakeLockEvent(System.currentTimeMillis(), i2, str2, i3, c.a(list), str, SystemClock.elapsedRealtime(), w.a(context), str3, c.a(context.getPackageName()), w.b(context), j2, str4, false));
            }
        }
    }

    private static void a(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(b.f5410a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
        } catch (Exception unused) {
        }
    }
}
