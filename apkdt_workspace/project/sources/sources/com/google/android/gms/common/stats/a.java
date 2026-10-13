package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f5408a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static volatile a f5409b;

    private a() {
        List list = Collections.EMPTY_LIST;
    }

    @KeepForSdk
    public static a a() {
        if (f5409b == null) {
            synchronized (f5408a) {
                if (f5409b == null) {
                    f5409b = new a();
                }
            }
        }
        return f5409b;
    }

    public final boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i2) {
        ComponentName component = intent.getComponent();
        if (component == null ? false : com.google.android.gms.common.util.d.a(context, component.getPackageName())) {
            return false;
        }
        return context.bindService(intent, serviceConnection, i2);
    }

    @KeepForSdk
    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i2) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i2);
    }

    @KeepForSdk
    @SuppressLint({"UntrackedBindService"})
    public void a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }
}
