package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class i {
    public i(String str, String str2) {
        m.a(str, (Object) "log tag cannot be null");
        m.a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        if (str2 == null || str2.length() <= 0) {
        }
    }

    public i(String str) {
        this(str, null);
    }
}
