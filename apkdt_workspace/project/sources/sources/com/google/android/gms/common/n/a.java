package com.google.android.gms.common.n;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static InterfaceC0089a f5353a;

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* renamed from: com.google.android.gms.common.n.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0089a {
        @KeepForSdk
        ScheduledExecutorService a();
    }

    @KeepForSdk
    public static synchronized InterfaceC0089a a() {
        InterfaceC0089a interfaceC0089a;
        synchronized (a.class) {
            if (f5353a == null) {
                f5353a = new b();
            }
            interfaceC0089a = f5353a;
        }
        return interfaceC0089a;
    }
}
