package com.google.android.gms.location;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;

/* loaded from: classes.dex */
public class j extends com.google.android.gms.common.api.e<a.d.C0086d> {
    public j(@NonNull Activity activity) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) f.f12701c, (a.d) null, (com.google.android.gms.common.api.internal.q) new com.google.android.gms.common.api.internal.a());
    }

    public e.i.b.b.d.h<g> a(LocationSettingsRequest locationSettingsRequest) {
        return com.google.android.gms.common.internal.l.a(f.f12703e.a(b(), locationSettingsRequest), new g());
    }
}
