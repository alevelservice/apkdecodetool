package com.google.android.gms.internal.vision;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, Map<String, String>> f12530a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Map<String, Map<String, String>> map) {
        this.f12530a = map;
    }

    @Nullable
    public final String a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        if (uri != null) {
            str = uri.toString();
        } else if (str == null) {
            return null;
        }
        Map<String, String> map = this.f12530a.get(str);
        if (map == null) {
            return null;
        }
        if (str2 != null) {
            String valueOf = String.valueOf(str2);
            String valueOf2 = String.valueOf(str3);
            str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return map.get(str3);
    }
}
