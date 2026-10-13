package com.google.android.datatransport.cct.f;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.i;

/* compiled from: NetworkConnectionInfo.java */
/* loaded from: classes.dex */
public abstract class o {

    /* compiled from: NetworkConnectionInfo.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(@Nullable b bVar);

        @NonNull
        public abstract a a(@Nullable c cVar);

        @NonNull
        public abstract o a();
    }

    /* compiled from: NetworkConnectionInfo.java */
    /* loaded from: classes.dex */
    public enum b {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);


        /* renamed from: e, reason: collision with root package name */
        private static final SparseArray<b> f4356e = new SparseArray<>();
        private final int value;

        static {
            f4356e.put(0, UNKNOWN_MOBILE_SUBTYPE);
            f4356e.put(1, GPRS);
            f4356e.put(2, EDGE);
            f4356e.put(3, UMTS);
            f4356e.put(4, CDMA);
            f4356e.put(5, EVDO_0);
            f4356e.put(6, EVDO_A);
            f4356e.put(7, RTT);
            f4356e.put(8, HSDPA);
            f4356e.put(9, HSUPA);
            f4356e.put(10, HSPA);
            f4356e.put(11, IDEN);
            f4356e.put(12, EVDO_B);
            f4356e.put(13, LTE);
            f4356e.put(14, EHRPD);
            f4356e.put(15, HSPAP);
            f4356e.put(16, GSM);
            f4356e.put(17, TD_SCDMA);
            f4356e.put(18, IWLAN);
            f4356e.put(19, LTE_CA);
        }

        b(int i2) {
            this.value = i2;
        }

        @Nullable
        public static b forNumber(int i2) {
            return f4356e.get(i2);
        }

        public int getValue() {
            return this.value;
        }
    }

    /* compiled from: NetworkConnectionInfo.java */
    /* loaded from: classes.dex */
    public enum c {
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17),
        NONE(-1);


        /* renamed from: e, reason: collision with root package name */
        private static final SparseArray<c> f4358e = new SparseArray<>();
        private final int value;

        static {
            f4358e.put(0, MOBILE);
            f4358e.put(1, WIFI);
            f4358e.put(2, MOBILE_MMS);
            f4358e.put(3, MOBILE_SUPL);
            f4358e.put(4, MOBILE_DUN);
            f4358e.put(5, MOBILE_HIPRI);
            f4358e.put(6, WIMAX);
            f4358e.put(7, BLUETOOTH);
            f4358e.put(8, DUMMY);
            f4358e.put(9, ETHERNET);
            f4358e.put(10, MOBILE_FOTA);
            f4358e.put(11, MOBILE_IMS);
            f4358e.put(12, MOBILE_CBS);
            f4358e.put(13, WIFI_P2P);
            f4358e.put(14, MOBILE_IA);
            f4358e.put(15, MOBILE_EMERGENCY);
            f4358e.put(16, PROXY);
            f4358e.put(17, VPN);
            f4358e.put(-1, NONE);
        }

        c(int i2) {
            this.value = i2;
        }

        @Nullable
        public static c forNumber(int i2) {
            return f4358e.get(i2);
        }

        public int getValue() {
            return this.value;
        }
    }

    @NonNull
    public static a c() {
        return new i.b();
    }

    @Nullable
    public abstract b a();

    @Nullable
    public abstract c b();
}
