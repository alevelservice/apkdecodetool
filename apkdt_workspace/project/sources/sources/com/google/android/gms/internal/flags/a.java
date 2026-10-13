package com.google.android.gms.internal.flags;

import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class a {
    static {
        a.class.getClassLoader();
    }

    private a() {
    }

    public static boolean a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }
}
