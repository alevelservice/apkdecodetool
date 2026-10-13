package com.google.android.gms.internal.ads;

import java.util.Date;
import java.util.HashSet;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class m5 {
    public static int a(e.i.a.a aVar) {
        int i2 = l5.f7813b[aVar.ordinal()];
        if (i2 == 2) {
            return 1;
        }
        if (i2 != 3) {
            return i2 != 4 ? 0 : 3;
        }
        return 2;
    }

    public static com.google.ads.mediation.a a(zztp zztpVar, boolean z) {
        e.i.a.b bVar;
        List<String> list = zztpVar.f11241i;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zztpVar.f11238f);
        int i2 = zztpVar.f11240h;
        if (i2 == 1) {
            bVar = e.i.a.b.MALE;
        } else if (i2 != 2) {
            bVar = e.i.a.b.UNKNOWN;
        } else {
            bVar = e.i.a.b.FEMALE;
        }
        return new com.google.ads.mediation.a(date, bVar, hashSet, z, zztpVar.o);
    }
}
