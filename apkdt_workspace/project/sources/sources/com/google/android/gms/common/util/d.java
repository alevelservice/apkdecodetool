package com.google.android.gms.common.util;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class d {
    @KeepForSdk
    public static boolean a() {
        return false;
    }

    public static boolean a(Context context, String str) {
        "com.google.android.gms".equals(str);
        return (com.google.android.gms.common.o.c.a(context).a(str, 0).flags & 2097152) != 0;
    }
}
