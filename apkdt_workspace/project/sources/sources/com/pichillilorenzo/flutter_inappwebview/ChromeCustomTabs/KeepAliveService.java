package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

/* loaded from: classes2.dex */
public class KeepAliveService extends Service {

    /* renamed from: e, reason: collision with root package name */
    private static final Binder f16384e = new Binder();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return f16384e;
    }
}
