package com.google.android.gms.common.o;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static c f5357b = new c();

    /* renamed from: a, reason: collision with root package name */
    private b f5358a = null;

    @KeepForSdk
    public static b a(Context context) {
        return f5357b.b(context);
    }

    @VisibleForTesting
    private final synchronized b b(Context context) {
        if (this.f5358a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f5358a = new b(context);
        }
        return this.f5358a;
    }
}
