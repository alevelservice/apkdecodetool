package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zt1 {

    /* renamed from: a, reason: collision with root package name */
    public static final zt1 f10852a = new zt1();

    @VisibleForTesting
    protected zt1() {
    }

    public static zztp a(Context context, su1 su1Var) {
        Context context2;
        List list;
        String str;
        Date a2 = su1Var.a();
        long time = a2 != null ? a2.getTime() : -1L;
        String b2 = su1Var.b();
        int d2 = su1Var.d();
        Set<String> e2 = su1Var.e();
        if (e2.isEmpty()) {
            context2 = context;
            list = null;
        } else {
            list = Collections.unmodifiableList(new ArrayList(e2));
            context2 = context;
        }
        boolean a3 = su1Var.a(context2);
        Location f2 = su1Var.f();
        Bundle a4 = su1Var.a(AdMobAdapter.class);
        boolean g2 = su1Var.g();
        String i2 = su1Var.i();
        com.google.android.gms.ads.search.b l2 = su1Var.l();
        if (l2 == null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                String packageName = applicationContext.getPackageName();
                mu1.a();
                str = gd.a(Thread.currentThread().getStackTrace(), packageName);
            } else {
                str = null;
            }
            boolean j2 = su1Var.j();
            RequestConfiguration a5 = vu1.b().a();
            return new zztp(8, time, a4, d2, list, a3, Math.max(su1Var.o(), a5.b()), g2, i2, null, f2, b2, su1Var.n(), su1Var.c(), Collections.unmodifiableList(new ArrayList(su1Var.p())), su1Var.k(), str, j2, null, Math.max(su1Var.q(), a5.c()), (String) Collections.max(Arrays.asList(su1Var.h(), a5.a()), yt1.f10658e));
        }
        new zzxy(l2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int a(String str, String str2) {
        return RequestConfiguration.f4458d.indexOf(str) - RequestConfiguration.f4458d.indexOf(str2);
    }
}
