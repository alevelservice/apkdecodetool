package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class zzfk extends zzdw {

    /* renamed from: e, reason: collision with root package name */
    private final g8 f13381e;

    /* renamed from: f, reason: collision with root package name */
    private Boolean f13382f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private String f13383g;

    public zzfk(g8 g8Var) {
        this(g8Var, null);
    }

    @BinderThread
    private final void a(zzn zznVar, boolean z) {
        com.google.android.gms.common.internal.m.a(zznVar);
        a(zznVar.f13391e, false);
        this.f13381e.q().d(zznVar.f13392f, zznVar.v);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(zzai zzaiVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzaiVar);
        a(zznVar, false);
        a(new w4(this, zzaiVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zzb(zzn zznVar) {
        a(zznVar, false);
        a(new m4(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final String zzc(zzn zznVar) {
        a(zznVar, false);
        return this.f13381e.d(zznVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zzd(zzn zznVar) {
        a(zznVar.f13391e, false);
        a(new t4(this, zznVar));
    }

    private zzfk(g8 g8Var, @Nullable String str) {
        com.google.android.gms.common.internal.m.a(g8Var);
        this.f13381e = g8Var;
        this.f13383g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final zzai zzb(zzai zzaiVar, zzn zznVar) {
        zzah zzahVar;
        boolean z = false;
        if ("_cmp".equals(zzaiVar.f13377e) && (zzahVar = zzaiVar.f13378f) != null && zzahVar.size() != 0) {
            String d2 = zzaiVar.f13378f.d("_cis");
            if (!TextUtils.isEmpty(d2) && (("referrer broadcast".equals(d2) || "referrer API".equals(d2)) && this.f13381e.d().l(zznVar.f13391e))) {
                z = true;
            }
        }
        if (!z) {
            return zzaiVar;
        }
        this.f13381e.zzab().w().a("Event has been filtered ", zzaiVar.toString());
        return new zzai("_cmpx", zzaiVar.f13378f, zzaiVar.f13379g, zzaiVar.f13380h);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final List<zzq> zzc(String str, String str2, String str3) {
        a(str, true);
        try {
            return (List) this.f13381e.b().a(new u4(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    @BinderThread
    private final void a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f13382f == null) {
                        if (!"com.google.android.gms".equals(this.f13383g) && !com.google.android.gms.common.util.t.a(this.f13381e.getContext(), Binder.getCallingUid()) && !com.google.android.gms.common.i.a(this.f13381e.getContext()).a(Binder.getCallingUid())) {
                            z2 = false;
                            this.f13382f = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f13382f = Boolean.valueOf(z2);
                    }
                    if (this.f13382f.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e2) {
                    this.f13381e.zzab().q().a("Measurement Service called with invalid calling package. appId", f3.a(str));
                    throw e2;
                }
            }
            if (this.f13383g == null && com.google.android.gms.common.h.a(this.f13381e.getContext(), Binder.getCallingUid(), str)) {
                this.f13383g = str;
            }
            if (str.equals(this.f13383g)) {
                return;
            } else {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
        }
        this.f13381e.zzab().q().a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(zzai zzaiVar, String str, String str2) {
        com.google.android.gms.common.internal.m.a(zzaiVar);
        com.google.android.gms.common.internal.m.b(str);
        a(str, true);
        a(new v4(this, zzaiVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final byte[] zza(zzai zzaiVar, String str) {
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(zzaiVar);
        a(str, true);
        this.f13381e.zzab().x().a("Log and bundle. event", this.f13381e.p().a(zzaiVar.f13377e));
        long b2 = this.f13381e.a().b() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f13381e.b().b(new y4(this, zzaiVar, str)).get();
            if (bArr == null) {
                this.f13381e.zzab().q().a("Log and bundle returned null. appId", f3.a(str));
                bArr = new byte[0];
            }
            this.f13381e.zzab().x().a("Log and bundle processed. event, size, time_ms", this.f13381e.p().a(zzaiVar.f13377e), Integer.valueOf(bArr.length), Long.valueOf((this.f13381e.a().b() / 1000000) - b2));
            return bArr;
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to log and bundle. appId, event, error", f3.a(str), this.f13381e.p().a(zzaiVar.f13377e), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zzb(zzq zzqVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        com.google.android.gms.common.internal.m.a(zzqVar.f13401g);
        a(zzqVar.f13399e, true);
        zzq zzqVar2 = new zzq(zzqVar);
        if (zzqVar.f13401g.j() == null) {
            a(new n4(this, zzqVar2));
        } else {
            a(new q4(this, zzqVar2));
        }
    }

    @VisibleForTesting
    private final void a(Runnable runnable) {
        com.google.android.gms.common.internal.m.a(runnable);
        if (this.f13381e.b().q()) {
            runnable.run();
        } else {
            this.f13381e.b().a(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(zzjn zzjnVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzjnVar);
        a(zznVar, false);
        if (zzjnVar.j() == null) {
            a(new x4(this, zzjnVar, zznVar));
        } else {
            a(new b5(this, zzjnVar, zznVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final List<zzjn> zza(zzn zznVar, boolean z) {
        a(zznVar, false);
        try {
            List<o8> list = (List) this.f13381e.b().a(new a5(this, zznVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (o8 o8Var : list) {
                if (z || !r8.h(o8Var.f13131c)) {
                    arrayList.add(new zzjn(o8Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to get user attributes. appId", f3.a(zznVar.f13391e), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(zzn zznVar) {
        a(zznVar, false);
        a(new d5(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(long j2, String str, String str2, String str3) {
        a(new c5(this, str2, str3, str, j2));
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final void zza(zzq zzqVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        com.google.android.gms.common.internal.m.a(zzqVar.f13401g);
        a(zznVar, false);
        zzq zzqVar2 = new zzq(zzqVar);
        zzqVar2.f13399e = zznVar.f13391e;
        if (zzqVar.f13401g.j() == null) {
            a(new l4(this, zzqVar2, zznVar));
        } else {
            a(new o4(this, zzqVar2, zznVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final List<zzjn> zza(String str, String str2, boolean z, zzn zznVar) {
        a(zznVar, false);
        try {
            List<o8> list = (List) this.f13381e.b().a(new p4(this, zznVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (o8 o8Var : list) {
                if (z || !r8.h(o8Var.f13131c)) {
                    arrayList.add(new zzjn(o8Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to get user attributes. appId", f3.a(zznVar.f13391e), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final List<zzjn> zza(String str, String str2, String str3, boolean z) {
        a(str, true);
        try {
            List<o8> list = (List) this.f13381e.b().a(new s4(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (o8 o8Var : list) {
                if (z || !r8.h(o8Var.f13131c)) {
                    arrayList.add(new zzjn(o8Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to get user attributes. appId", f3.a(str), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    @BinderThread
    public final List<zzq> zza(String str, String str2, zzn zznVar) {
        a(zznVar, false);
        try {
            return (List) this.f13381e.b().a(new r4(this, zznVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f13381e.zzab().q().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }
}
