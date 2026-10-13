package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@VisibleForTesting
/* loaded from: classes.dex */
public final class u6 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    private final m7 f13254c;

    /* renamed from: d, reason: collision with root package name */
    private zzdx f13255d;

    /* renamed from: e, reason: collision with root package name */
    private volatile Boolean f13256e;

    /* renamed from: f, reason: collision with root package name */
    private final b f13257f;

    /* renamed from: g, reason: collision with root package name */
    private final d8 f13258g;

    /* renamed from: h, reason: collision with root package name */
    private final List<Runnable> f13259h;

    /* renamed from: i, reason: collision with root package name */
    private final b f13260i;

    /* JADX INFO: Access modifiers changed from: protected */
    public u6(j4 j4Var) {
        super(j4Var);
        this.f13259h = new ArrayList();
        this.f13258g = new d8(j4Var.a());
        this.f13254c = new m7(this);
        this.f13257f = new t6(this, j4Var);
        this.f13260i = new e7(this, j4Var);
    }

    private final boolean F() {
        zzae();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void G() {
        g();
        this.f13258g.b();
        this.f13257f.a(j.L.a(null).longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void H() {
        g();
        if (z()) {
            zzab().y().a("Inactivity, disconnecting from the service");
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void I() {
        g();
        zzab().y().a("Processing queued up service tasks", Integer.valueOf(this.f13259h.size()));
        Iterator<Runnable> it = this.f13259h.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e2) {
                zzab().q().a("Task exception while flushing queue", e2);
            }
        }
        this.f13259h.clear();
        this.f13260i.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void A() {
        g();
        e();
        u();
        zzn a2 = a(false);
        if (F()) {
            q().y();
        }
        a(new x6(this, a2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void B() {
        g();
        u();
        zzn a2 = a(true);
        boolean a3 = d().a(j.C0);
        if (a3) {
            q().z();
        }
        a(new z6(this, a2, a3));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void C() {
        g();
        u();
        a(new d7(this, a(true)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x010d  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u6.D():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean E() {
        return this.f13256e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    public final void a(zzdx zzdxVar, AbstractSafeParcelable abstractSafeParcelable, zzn zznVar) {
        int i2;
        List<AbstractSafeParcelable> a2;
        g();
        e();
        u();
        boolean F = F();
        int i3 = 0;
        int i4 = 100;
        while (i3 < 1001 && i4 == 100) {
            ArrayList arrayList = new ArrayList();
            if (!F || (a2 = q().a(100)) == null) {
                i2 = 0;
            } else {
                arrayList.addAll(a2);
                i2 = a2.size();
            }
            if (abstractSafeParcelable != null && i2 < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            int i5 = 0;
            while (i5 < size) {
                Object obj = arrayList.get(i5);
                i5++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzai) {
                    try {
                        zzdxVar.zza((zzai) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e2) {
                        zzab().q().a("Failed to send event to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzjn) {
                    try {
                        zzdxVar.zza((zzjn) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e3) {
                        zzab().q().a("Failed to send attribute to the service", e3);
                    }
                } else if (abstractSafeParcelable2 instanceof zzq) {
                    try {
                        zzdxVar.zza((zzq) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e4) {
                        zzab().q().a("Failed to send conditional property to the service", e4);
                    }
                } else {
                    zzab().q().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i3++;
            i4 = i2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return false;
    }

    @WorkerThread
    public final void y() {
        g();
        u();
        this.f13254c.a();
        try {
            com.google.android.gms.common.stats.a.a().a(getContext(), this.f13254c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f13255d = null;
    }

    @WorkerThread
    public final boolean z() {
        g();
        u();
        return this.f13255d != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(zzai zzaiVar, String str) {
        com.google.android.gms.common.internal.m.a(zzaiVar);
        g();
        u();
        boolean F = F();
        a(new g7(this, F, F && q().a(zzaiVar), zzaiVar, a(true), str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(zzq zzqVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        g();
        u();
        zzae();
        a(new f7(this, true, q().a(zzqVar), new zzq(zzqVar), a(true), zzqVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(AtomicReference<List<zzq>> atomicReference, String str, String str2, String str3) {
        g();
        u();
        a(new i7(this, atomicReference, str, str2, str3, a(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(zzp zzpVar, String str, String str2) {
        g();
        u();
        a(new h7(this, str, str2, a(false), zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(AtomicReference<List<zzjn>> atomicReference, String str, String str2, String str3, boolean z) {
        g();
        u();
        a(new k7(this, atomicReference, str, str2, str3, z, a(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(zzp zzpVar, String str, String str2, boolean z) {
        g();
        u();
        a(new j7(this, str, str2, z, a(false), zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(zzjn zzjnVar) {
        g();
        u();
        a(new v6(this, F() && q().a(zzjnVar), zzjnVar, a(true)));
    }

    @WorkerThread
    public final void a(AtomicReference<String> atomicReference) {
        g();
        u();
        a(new w6(this, atomicReference, a(false)));
    }

    @WorkerThread
    public final void a(zzp zzpVar) {
        g();
        u();
        a(new a7(this, a(false), zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(q6 q6Var) {
        g();
        u();
        a(new c7(this, q6Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    public final void a(zzdx zzdxVar) {
        g();
        com.google.android.gms.common.internal.m.a(zzdxVar);
        this.f13255d = zzdxVar;
        G();
        I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(ComponentName componentName) {
        g();
        if (this.f13255d != null) {
            this.f13255d = null;
            zzab().y().a("Disconnected from device MeasurementService", componentName);
            g();
            D();
        }
    }

    @WorkerThread
    private final void a(Runnable runnable) {
        g();
        if (z()) {
            runnable.run();
        } else {
            if (this.f13259h.size() >= 1000) {
                zzab().q().a("Discarding data. Max runnable queue size reached");
                return;
            }
            this.f13259h.add(runnable);
            this.f13260i.a(60000L);
            D();
        }
    }

    @Nullable
    @WorkerThread
    private final zzn a(boolean z) {
        zzae();
        return n().a(z ? zzab().z() : null);
    }

    @WorkerThread
    public final void a(zzp zzpVar, zzai zzaiVar, String str) {
        g();
        u();
        if (j().a(com.google.android.gms.common.h.f5182a) != 0) {
            zzab().t().a("Not bundling data. Service unavailable or out of date");
            j().a(zzpVar, new byte[0]);
        } else {
            a(new b7(this, zzaiVar, str, zzpVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzdx a(u6 u6Var, zzdx zzdxVar) {
        u6Var.f13255d = null;
        return null;
    }
}
