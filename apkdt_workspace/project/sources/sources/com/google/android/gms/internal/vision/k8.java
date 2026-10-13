package com.google.android.gms.internal.vision;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.vision.L;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class k8 {
    @Nullable
    public static DynamiteModule a(Context context, String str, boolean z) {
        DynamiteModule.b bVar;
        String format = String.format("%s.%s", "com.google.android.gms.vision", str);
        if (!z) {
            format = "com.google.android.gms.vision.dynamite";
        }
        try {
            L.d("Loading module %s", format);
            if (z) {
                bVar = DynamiteModule.f5460i;
            } else {
                bVar = DynamiteModule.f5463l;
            }
            return DynamiteModule.a(context, bVar, format);
        } catch (DynamiteModule.a e2) {
            L.e(e2, "Error loading module %s optional module %b", format, Boolean.valueOf(z));
            return null;
        }
    }
}
