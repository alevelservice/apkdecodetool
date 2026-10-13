package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.internal.measurement.zzx;
import java.util.Map;

@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzn {

    @VisibleForTesting
    j4 zzj = null;

    /* renamed from: e, reason: collision with root package name */
    private Map<Integer, n5> f12734e = new a.e.a();

    /* loaded from: classes.dex */
    class a implements n5 {

        /* renamed from: a, reason: collision with root package name */
        private com.google.android.gms.internal.measurement.zzq f12735a;

        a(com.google.android.gms.internal.measurement.zzq zzqVar) {
            this.f12735a = zzqVar;
        }

        @Override // com.google.android.gms.measurement.internal.n5
        public final void onEvent(String str, String str2, Bundle bundle, long j2) {
            try {
                this.f12735a.onEvent(str, str2, bundle, j2);
            } catch (RemoteException e2) {
                AppMeasurementDynamiteService.this.zzj.zzab().t().a("Event listener threw exception", e2);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements k5 {

        /* renamed from: a, reason: collision with root package name */
        private com.google.android.gms.internal.measurement.zzq f12737a;

        b(com.google.android.gms.internal.measurement.zzq zzqVar) {
            this.f12737a = zzqVar;
        }

        @Override // com.google.android.gms.measurement.internal.k5
        public final void a(String str, String str2, Bundle bundle, long j2) {
            try {
                this.f12737a.onEvent(str, str2, bundle, j2);
            } catch (RemoteException e2) {
                AppMeasurementDynamiteService.this.zzj.zzab().t().a("Event interceptor threw exception", e2);
            }
        }
    }

    private final void a() {
        if (this.zzj == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void beginAdUnitExposure(String str, long j2) {
        a();
        this.zzj.u().a(str, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        a();
        this.zzj.v().a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void endAdUnitExposure(String str, long j2) {
        a();
        this.zzj.u().b(str, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void generateEventId(zzp zzpVar) {
        a();
        this.zzj.D().a(zzpVar, this.zzj.D().q());
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getAppInstanceId(zzp zzpVar) {
        a();
        this.zzj.b().a(new y5(this, zzpVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getCachedAppInstanceId(zzp zzpVar) {
        a();
        a(zzpVar, this.zzj.v().B());
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getConditionalUserProperties(String str, String str2, zzp zzpVar) {
        a();
        this.zzj.b().a(new u8(this, zzpVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getCurrentScreenClass(zzp zzpVar) {
        a();
        a(zzpVar, this.zzj.v().y());
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getCurrentScreenName(zzp zzpVar) {
        a();
        a(zzpVar, this.zzj.v().z());
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getDeepLink(zzp zzpVar) {
        a();
        p5 v = this.zzj.v();
        v.g();
        if (!v.d().d(null, j.B0)) {
            v.j().a(zzpVar, "");
        } else if (v.c().z.a() > 0) {
            v.j().a(zzpVar, "");
        } else {
            v.c().z.a(v.a().a());
            v.f12908a.a(zzpVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getGmpAppId(zzp zzpVar) {
        a();
        a(zzpVar, this.zzj.v().A());
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getMaxUserProperties(String str, zzp zzpVar) {
        a();
        this.zzj.v();
        com.google.android.gms.common.internal.m.b(str);
        this.zzj.D().a(zzpVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getTestFlag(zzp zzpVar, int i2) {
        a();
        if (i2 == 0) {
            this.zzj.D().a(zzpVar, this.zzj.v().E());
            return;
        }
        if (i2 == 1) {
            this.zzj.D().a(zzpVar, this.zzj.v().F().longValue());
            return;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                this.zzj.D().a(zzpVar, this.zzj.v().G().intValue());
                return;
            } else {
                if (i2 != 4) {
                    return;
                }
                this.zzj.D().a(zzpVar, this.zzj.v().D().booleanValue());
                return;
            }
        }
        r8 D = this.zzj.D();
        double doubleValue = this.zzj.v().H().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", doubleValue);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            D.f12908a.zzab().t().a("Error returning double value to wrapper", e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void getUserProperties(String str, String str2, boolean z, zzp zzpVar) {
        a();
        this.zzj.b().a(new y6(this, zzpVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void initForTests(Map map) {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void initialize(IObjectWrapper iObjectWrapper, zzx zzxVar, long j2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        j4 j4Var = this.zzj;
        if (j4Var == null) {
            this.zzj = j4.a(context, zzxVar);
        } else {
            j4Var.zzab().t().a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void isDataCollectionEnabled(zzp zzpVar) {
        a();
        this.zzj.b().a(new t8(this, zzpVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        a();
        this.zzj.v().a(str, str2, bundle, z, z2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzp zzpVar, long j2) {
        a();
        com.google.android.gms.common.internal.m.b(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zzj.b().a(new z7(this, zzpVar, new zzai(str2, new zzah(bundle), "app", j2), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        a();
        this.zzj.zzab().a(i2, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzp zzpVar, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        Bundle bundle = new Bundle();
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.zzj.zzab().t().a("Error returning bundle value to wrapper", e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j2) {
        a();
        i6 i6Var = this.zzj.v().f13144c;
        if (i6Var != null) {
            this.zzj.v().C();
            i6Var.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void performAction(Bundle bundle, zzp zzpVar, long j2) {
        a();
        zzpVar.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzq zzqVar) {
        a();
        n5 n5Var = this.f12734e.get(Integer.valueOf(zzqVar.id()));
        if (n5Var == null) {
            n5Var = new a(zzqVar);
            this.f12734e.put(Integer.valueOf(zzqVar.id()), n5Var);
        }
        this.zzj.v().a(n5Var);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void resetAnalyticsData(long j2) {
        a();
        this.zzj.v().a(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setConditionalUserProperty(Bundle bundle, long j2) {
        a();
        if (bundle == null) {
            this.zzj.zzab().q().a("Conditional user property must not be null");
        } else {
            this.zzj.v().a(bundle, j2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2) {
        a();
        this.zzj.y().a((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setDataCollectionEnabled(boolean z) {
        a();
        this.zzj.v().b(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzq zzqVar) {
        a();
        p5 v = this.zzj.v();
        b bVar = new b(zzqVar);
        v.e();
        v.u();
        v.b().a(new s5(v, bVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setInstanceIdProvider(zzv zzvVar) {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setMeasurementEnabled(boolean z, long j2) {
        a();
        this.zzj.v().a(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setMinimumSessionDuration(long j2) {
        a();
        this.zzj.v().b(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setSessionTimeoutDuration(long j2) {
        a();
        this.zzj.v().c(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setUserId(String str, long j2) {
        a();
        this.zzj.v().a(null, "_id", str, true, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2) {
        a();
        this.zzj.v().a(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzq zzqVar) {
        a();
        n5 remove = this.f12734e.remove(Integer.valueOf(zzqVar.id()));
        if (remove == null) {
            remove = new a(zzqVar);
        }
        this.zzj.v().b(remove);
    }

    private final void a(zzp zzpVar, String str) {
        this.zzj.D().a(zzpVar, str);
    }
}
