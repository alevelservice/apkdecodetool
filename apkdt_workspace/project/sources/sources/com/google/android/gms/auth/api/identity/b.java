package com.google.android.gms.auth.api.identity;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.k;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class b implements a.d.f {

    /* renamed from: e, reason: collision with root package name */
    private final String f4799e;

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("session_id", this.f4799e);
        return bundle;
    }

    public final boolean equals(@Nullable Object obj) {
        return obj instanceof b;
    }

    public final int hashCode() {
        return k.a(b.class);
    }
}
