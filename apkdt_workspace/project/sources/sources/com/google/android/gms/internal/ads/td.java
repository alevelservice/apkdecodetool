package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class td {
    public static <T> T a(Context context, String str, sd<IBinder, T> sdVar) {
        try {
            return sdVar.apply(b(context).a(str));
        } catch (Exception e2) {
            throw new vd(e2);
        }
    }

    private static DynamiteModule b(Context context) {
        try {
            return DynamiteModule.a(context, DynamiteModule.f5460i, ModuleDescriptor.MODULE_ID);
        } catch (Exception e2) {
            throw new vd(e2);
        }
    }

    public static Context a(Context context) {
        return b(context).a();
    }
}
