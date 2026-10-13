package com.google.android.gms.common.server.response;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @KeepForSdk
    public FastSafeParcelableJsonResponse() {
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @VisibleForTesting
    public Object a(String str) {
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @VisibleForTesting
    public boolean b(String str) {
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        for (FastJsonResponse.Field<?, ?> field : a().values()) {
            if (b(field)) {
                if (!fastJsonResponse.b(field) || !a(field).equals(fastJsonResponse.a(field))) {
                    return false;
                }
            } else if (fastJsonResponse.b(field)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i2 = 0;
        for (FastJsonResponse.Field<?, ?> field : a().values()) {
            if (b(field)) {
                i2 = (i2 * 31) + a(field).hashCode();
            }
        }
        return i2;
    }
}
