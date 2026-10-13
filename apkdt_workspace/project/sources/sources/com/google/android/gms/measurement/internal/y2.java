package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;

/* loaded from: classes.dex */
public final class y2 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    private String f13332c;

    /* renamed from: d, reason: collision with root package name */
    private String f13333d;

    /* renamed from: e, reason: collision with root package name */
    private int f13334e;

    /* renamed from: f, reason: collision with root package name */
    private String f13335f;

    /* renamed from: g, reason: collision with root package name */
    private long f13336g;

    /* renamed from: h, reason: collision with root package name */
    private long f13337h;

    /* renamed from: i, reason: collision with root package name */
    private long f13338i;

    /* renamed from: j, reason: collision with root package name */
    private List<String> f13339j;

    /* renamed from: k, reason: collision with root package name */
    private int f13340k;

    /* renamed from: l, reason: collision with root package name */
    private String f13341l;
    private String m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y2(j4 j4Var, long j2) {
        super(j4Var);
        this.f13338i = j2;
    }

    @VisibleForTesting
    @WorkerThread
    private final String E() {
        try {
            Class<?> loadClass = getContext().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, getContext());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception unused) {
                    zzab().v().a("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                zzab().u().a("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String A() {
        u();
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final List<String> B() {
        return this.f13339j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int C() {
        u();
        return this.f13334e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int D() {
        u();
        return this.f13340k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final zzn a(String str) {
        Boolean b2;
        g();
        e();
        String z = z();
        String y = y();
        u();
        String str2 = this.f13333d;
        long C = C();
        u();
        String str3 = this.f13335f;
        long k2 = d().k();
        u();
        g();
        if (this.f13336g == 0) {
            this.f13336g = this.f12908a.D().a(getContext(), getContext().getPackageName());
        }
        long j2 = this.f13336g;
        boolean c2 = this.f12908a.c();
        boolean z2 = !c().x;
        g();
        e();
        String E = !this.f12908a.c() ? null : E();
        u();
        long j3 = this.f13337h;
        long p = this.f12908a.p();
        int D = D();
        boolean booleanValue = d().o().booleanValue();
        z8 d2 = d();
        d2.e();
        Boolean b3 = d2.b("google_analytics_ssaid_collection_enabled");
        return new zzn(z, y, str2, C, str3, k2, j2, str, c2, z2, E, j3, p, D, booleanValue, Boolean.valueOf(b3 == null || b3.booleanValue()).booleanValue(), c().w(), A(), (!d().e(z(), j.j0) || (b2 = d().b("google_analytics_default_allow_ad_personalization_signals")) == null) ? null : Boolean.valueOf(!b2.booleanValue()), this.f13338i, d().e(z(), j.w0) ? this.f13339j : null);
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(1:3)(6:85|86|(1:88)(2:103|(1:105))|89|90|(4:92|(1:94)(1:101)|95|96))|4|(1:84)(1:8)|9|(1:83)(1:13)|14|(1:(1:17)(1:18))|(2:20|(2:22|(1:24))(1:(1:(13:35|36|(1:40)|41|42|(1:44)(1:79)|45|(1:47)|(1:49)|51|(3:53|(3:55|(1:57)(3:59|(3:62|(1:64)(1:65)|60)|66)|58)(0)|(1:68))|69|(1:(2:72|73)(2:75|76))(2:77|78))(1:34))(2:28|(1:30))))|82|36|(2:38|40)|41|42|(0)(0)|45|(0)|(0)|51|(0)|69|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c4, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01c5, code lost:
    
        zzab().q().a("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.measurement.internal.f3.a(r0), r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x019f A[Catch: IllegalStateException -> 0x01c4, TryCatch #3 {IllegalStateException -> 0x01c4, blocks: (B:42:0x018b, B:45:0x0197, B:47:0x019f, B:49:0x01b2), top: B:41:0x018b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b2 A[Catch: IllegalStateException -> 0x01c4, TRY_LEAVE, TryCatch #3 {IllegalStateException -> 0x01c4, blocks: (B:42:0x018b, B:45:0x0197, B:47:0x019f, B:49:0x01b2), top: B:41:0x018b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0196  */
    @Override // com.google.android.gms.measurement.internal.z4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void x() {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.y2.x():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String y() {
        u();
        return this.f13341l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String z() {
        u();
        return this.f13332c;
    }
}
