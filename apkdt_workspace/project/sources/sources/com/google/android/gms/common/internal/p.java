package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.annotation.KeepForSdk;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private final Resources f5330a;

    /* renamed from: b, reason: collision with root package name */
    private final String f5331b;

    public p(Context context) {
        m.a(context);
        this.f5330a = context.getResources();
        this.f5331b = this.f5330a.getResourcePackageName(com.google.android.gms.common.j.common_google_play_services_unknown_issue);
    }

    @KeepForSdk
    @Nullable
    public String a(String str) {
        int identifier = this.f5330a.getIdentifier(str, "string", this.f5331b);
        if (identifier == 0) {
            return null;
        }
        return this.f5330a.getString(identifier);
    }
}
