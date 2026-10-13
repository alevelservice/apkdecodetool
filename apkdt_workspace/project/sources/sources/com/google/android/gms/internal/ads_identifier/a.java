package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;

/* loaded from: classes.dex */
public class a {
    static {
        a.class.getClassLoader();
    }

    private a() {
    }

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(1);
    }

    public static boolean a(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
