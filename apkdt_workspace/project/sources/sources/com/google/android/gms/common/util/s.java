package com.google.android.gms.common.util;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public class s {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    @KeepForSdk
    public static boolean a(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
