package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public final class c {
    @KeepForSdk
    public static <T extends SafeParcelable> byte[] a(T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @KeepForSdk
    public static <T extends SafeParcelable> void a(T t, Intent intent, String str) {
        intent.putExtra(str, a(t));
    }
}
