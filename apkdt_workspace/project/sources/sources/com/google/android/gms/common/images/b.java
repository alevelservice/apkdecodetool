package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f5216a;

    public b(Uri uri) {
        this.f5216a = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return k.a(((b) obj).f5216a, this.f5216a);
    }

    public final int hashCode() {
        return k.a(this.f5216a);
    }
}
