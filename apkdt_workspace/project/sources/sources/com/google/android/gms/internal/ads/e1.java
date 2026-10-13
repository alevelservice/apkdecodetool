package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e1 implements tn1 {

    /* renamed from: a, reason: collision with root package name */
    private volatile b1 f6327a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f6328b;

    public e1(Context context) {
        this.f6328b = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.tn1
    public final uo1 a(uq1<?> uq1Var) {
        zzaej a2 = zzaej.a(uq1Var);
        long c2 = com.google.android.gms.ads.internal.n.j().c();
        try {
            he heVar = new he();
            this.f6327a = new b1(this.f6328b, com.google.android.gms.ads.internal.n.q().b(), new g1(this, heVar), new i1(this, heVar));
            this.f6327a.k();
            qz0 a3 = gz0.a(gz0.a(heVar, new f1(this, a2), yd.f10540a), ((Integer) mu1.e().a(aw1.u2)).intValue(), TimeUnit.MILLISECONDS, yd.f10542c);
            a3.a(new h1(this), yd.f10540a);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) a3.get();
            long c3 = com.google.android.gms.ads.internal.n.j().c() - c2;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(c3);
            sb.append("ms");
            na.e(sb.toString());
            zzael zzaelVar = (zzael) new zzaoj(parcelFileDescriptor).a(zzael.CREATOR);
            if (zzaelVar == null) {
                return null;
            }
            if (!zzaelVar.f10902e) {
                if (zzaelVar.f10906i.length != zzaelVar.f10907j.length) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                int i2 = 0;
                while (true) {
                    String[] strArr = zzaelVar.f10906i;
                    if (i2 < strArr.length) {
                        hashMap.put(strArr[i2], zzaelVar.f10907j[i2]);
                        i2++;
                    } else {
                        return new uo1(zzaelVar.f10904g, zzaelVar.f10905h, hashMap, zzaelVar.f10908k, zzaelVar.f10909l);
                    }
                }
            } else {
                throw new r0(zzaelVar.f10903f);
            }
        } catch (InterruptedException | ExecutionException unused) {
            long c4 = com.google.android.gms.ads.internal.n.j().c() - c2;
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(c4);
            sb2.append("ms");
            na.e(sb2.toString());
            return null;
        } catch (Throwable th) {
            long c5 = com.google.android.gms.ads.internal.n.j().c() - c2;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(c5);
            sb3.append("ms");
            na.e(sb3.toString());
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        if (this.f6327a == null) {
            return;
        }
        this.f6327a.a();
        Binder.flushPendingCommands();
    }
}
