package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.ss1;
import com.google.android.gms.internal.ads.ts1;
import com.google.android.gms.internal.ads.us1;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oc0 {

    /* renamed from: g, reason: collision with root package name */
    private static final SparseArray<us1.b> f8510g;

    /* renamed from: a, reason: collision with root package name */
    private final Context f8511a;

    /* renamed from: b, reason: collision with root package name */
    private final qz0<Bundle> f8512b;

    /* renamed from: c, reason: collision with root package name */
    private final TelephonyManager f8513c;

    /* renamed from: d, reason: collision with root package name */
    private final kc0 f8514d;

    /* renamed from: e, reason: collision with root package name */
    private final ec0 f8515e;

    /* renamed from: f, reason: collision with root package name */
    private bt1 f8516f;

    static {
        SparseArray<us1.b> sparseArray = new SparseArray<>();
        f8510g = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), us1.b.CONNECTED);
        f8510g.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), us1.b.CONNECTING);
        f8510g.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), us1.b.CONNECTING);
        f8510g.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), us1.b.CONNECTING);
        f8510g.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), us1.b.DISCONNECTING);
        f8510g.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), us1.b.DISCONNECTED);
        f8510g.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), us1.b.DISCONNECTED);
        f8510g.put(NetworkInfo.DetailedState.FAILED.ordinal(), us1.b.DISCONNECTED);
        f8510g.put(NetworkInfo.DetailedState.IDLE.ordinal(), us1.b.DISCONNECTED);
        f8510g.put(NetworkInfo.DetailedState.SCANNING.ordinal(), us1.b.DISCONNECTED);
        f8510g.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), us1.b.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            f8510g.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), us1.b.CONNECTING);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            f8510g.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), us1.b.CONNECTING);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oc0(Context context, qz0<Bundle> qz0Var, kc0 kc0Var, ec0 ec0Var) {
        this.f8511a = context;
        this.f8512b = qz0Var;
        this.f8514d = kc0Var;
        this.f8515e = ec0Var;
        this.f8513c = (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ts1 a(Bundle bundle) {
        ts1.b bVar;
        ts1.a k2 = ts1.k();
        int i2 = bundle.getInt("cnt", -2);
        int i3 = bundle.getInt("gnt", 0);
        if (i2 == -1) {
            this.f8516f = bt1.ENUM_TRUE;
        } else {
            this.f8516f = bt1.ENUM_FALSE;
            if (i2 == 0) {
                k2.a(ts1.c.CELL);
            } else if (i2 != 1) {
                k2.a(ts1.c.NETWORKTYPE_UNSPECIFIED);
            } else {
                k2.a(ts1.c.WIFI);
            }
            switch (i3) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    bVar = ts1.b.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    bVar = ts1.b.THREE_G;
                    break;
                case 13:
                    bVar = ts1.b.LTE;
                    break;
                default:
                    bVar = ts1.b.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            k2.a(bVar);
        }
        return (ts1) k2.s();
    }

    private static bt1 b(boolean z) {
        return z ? bt1.ENUM_TRUE : bt1.ENUM_FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.ss1.a> c(android.os.Bundle r7) {
        /*
            java.lang.String r0 = "ad_types"
            java.lang.Object r7 = r7.get(r0)
            boolean r0 = r7 instanceof java.util.List
            if (r0 == 0) goto Ld
            java.util.List r7 = (java.util.List) r7
            goto L17
        Ld:
            boolean r0 = r7 instanceof java.lang.String[]
            if (r0 == 0) goto L3d
            java.lang.String[] r7 = (java.lang.String[]) r7
            java.util.List r7 = java.util.Arrays.asList(r7)
        L17:
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r7.size()
            r0.<init>(r1)
            java.util.Iterator r7 = r7.iterator()
        L24:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto L38
            java.lang.Object r1 = r7.next()
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto L24
            java.lang.String r1 = (java.lang.String) r1
            r0.add(r1)
            goto L24
        L38:
            java.util.List r7 = java.util.Collections.unmodifiableList(r0)
            goto L41
        L3d:
            java.util.List r7 = java.util.Collections.emptyList()
        L41:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r7 = r7.iterator()
        L4a:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto La3
            java.lang.Object r1 = r7.next()
            java.lang.String r1 = (java.lang.String) r1
            r2 = -1
            int r3 = r1.hashCode()
            r4 = 3
            r5 = 2
            r6 = 1
            switch(r3) {
                case -1396342996: goto L80;
                case -1052618729: goto L76;
                case -239580146: goto L6c;
                case 604727084: goto L62;
                default: goto L61;
            }
        L61:
            goto L89
        L62:
            java.lang.String r3 = "interstitial"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 1
            goto L89
        L6c:
            java.lang.String r3 = "rewarded"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 3
            goto L89
        L76:
            java.lang.String r3 = "native"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 2
            goto L89
        L80:
            java.lang.String r3 = "banner"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 0
        L89:
            if (r2 == 0) goto L9d
            if (r2 == r6) goto L9a
            if (r2 == r5) goto L97
            if (r2 == r4) goto L94
            com.google.android.gms.internal.ads.ss1$a r1 = com.google.android.gms.internal.ads.ss1.a.AD_FORMAT_TYPE_UNSPECIFIED
            goto L9f
        L94:
            com.google.android.gms.internal.ads.ss1$a r1 = com.google.android.gms.internal.ads.ss1.a.REWARD_BASED_VIDEO_AD
            goto L9f
        L97:
            com.google.android.gms.internal.ads.ss1$a r1 = com.google.android.gms.internal.ads.ss1.a.NATIVE_APP_INSTALL
            goto L9f
        L9a:
            com.google.android.gms.internal.ads.ss1$a r1 = com.google.android.gms.internal.ads.ss1.a.INTERSTITIAL
            goto L9f
        L9d:
            com.google.android.gms.internal.ads.ss1$a r1 = com.google.android.gms.internal.ads.ss1.a.BANNER
        L9f:
            r0.add(r1)
            goto L4a
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.oc0.c(android.os.Bundle):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static us1.b b(Bundle bundle) {
        return f8510g.get(dt0.a(dt0.a(bundle, "device"), "network").getInt("active_network_state", -1), us1.b.UNSPECIFIED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] a(boolean z, ArrayList<ss1.a> arrayList, ts1 ts1Var, us1.b bVar) {
        us1.a.C0093a n = us1.a.n();
        n.a(arrayList);
        n.c(b(com.google.android.gms.ads.internal.n.e().b(this.f8511a.getContentResolver()) != 0));
        n.d(com.google.android.gms.ads.internal.n.e().a(this.f8511a, this.f8513c));
        n.b(this.f8514d.b());
        n.c(this.f8514d.d());
        n.a(this.f8514d.a());
        n.a(bVar);
        n.a(ts1Var);
        n.e(this.f8516f);
        n.a(b(z));
        n.a(com.google.android.gms.ads.internal.n.j().a());
        n.b(b(com.google.android.gms.ads.internal.n.e().a(this.f8511a.getContentResolver()) != 0));
        return ((us1.a) n.s()).e();
    }

    public final void a(boolean z) {
        gz0.a(this.f8512b, new sc0(this, z), yd.f10544e);
    }
}
