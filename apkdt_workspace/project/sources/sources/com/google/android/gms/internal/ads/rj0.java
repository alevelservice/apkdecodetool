package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class rj0 {

    /* renamed from: a, reason: collision with root package name */
    private String f9140a;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f9141a;

        public final a a(String str) {
            this.f9141a = str;
            return this;
        }
    }

    private rj0(a aVar) {
        this.f9140a = aVar.f9141a;
    }

    public final Set<String> a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f9140a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String b() {
        return this.f9140a.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int c() {
        char c2;
        String str = this.f9140a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            return 1;
        }
        if (c2 == 1) {
            return 3;
        }
        if (c2 != 2) {
            return c2 != 3 ? 0 : 7;
        }
        return 6;
    }
}
