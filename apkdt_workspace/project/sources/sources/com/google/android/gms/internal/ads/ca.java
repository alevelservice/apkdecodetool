package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class ca {

    /* renamed from: e, reason: collision with root package name */
    private Context f5946e;

    /* renamed from: f, reason: collision with root package name */
    private zzawv f5947f;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("grantedPermissionLock")
    private qz0<ArrayList<String>> f5953l;

    /* renamed from: a, reason: collision with root package name */
    private final Object f5942a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final sa f5943b = new sa();

    /* renamed from: c, reason: collision with root package name */
    private final ka f5944c = new ka(mu1.f(), this.f5943b);

    /* renamed from: d, reason: collision with root package name */
    private boolean f5945d = false;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private ew1 f5948g = null;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Boolean f5949h = null;

    /* renamed from: i, reason: collision with root package name */
    private final AtomicInteger f5950i = new AtomicInteger(0);

    /* renamed from: j, reason: collision with root package name */
    private final da f5951j = new da(null);

    /* renamed from: k, reason: collision with root package name */
    private final Object f5952k = new Object();

    public final void a(Boolean bool) {
        synchronized (this.f5942a) {
            this.f5949h = bool;
        }
    }

    @Nullable
    public final Resources b() {
        if (this.f5947f.f11003h) {
            return this.f5946e.getResources();
        }
        try {
            td.a(this.f5946e).getResources();
            return null;
        } catch (vd e2) {
            qd.c("Cannot load resource from dynamite apk or local jar", e2);
            return null;
        }
    }

    @Nullable
    public final ew1 c() {
        ew1 ew1Var;
        synchronized (this.f5942a) {
            ew1Var = this.f5948g;
        }
        return ew1Var;
    }

    public final Boolean d() {
        Boolean bool;
        synchronized (this.f5942a) {
            bool = this.f5949h;
        }
        return bool;
    }

    public final void e() {
        this.f5951j.a();
    }

    public final void f() {
        this.f5950i.incrementAndGet();
    }

    public final void g() {
        this.f5950i.decrementAndGet();
    }

    public final int h() {
        return this.f5950i.get();
    }

    public final pa i() {
        sa saVar;
        synchronized (this.f5942a) {
            saVar = this.f5943b;
        }
        return saVar;
    }

    public final qz0<ArrayList<String>> j() {
        if (com.google.android.gms.common.util.o.c() && this.f5946e != null) {
            if (!((Boolean) mu1.e().a(aw1.y1)).booleanValue()) {
                synchronized (this.f5952k) {
                    if (this.f5953l != null) {
                        return this.f5953l;
                    }
                    qz0<ArrayList<String>> submit = yd.f10540a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.ba

                        /* renamed from: e, reason: collision with root package name */
                        private final ca f5736e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f5736e = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f5736e.l();
                        }
                    });
                    this.f5953l = submit;
                    return submit;
                }
            }
        }
        return gz0.a(new ArrayList());
    }

    public final ka k() {
        return this.f5944c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ArrayList l() {
        return a(z7.c(this.f5946e));
    }

    @TargetApi(23)
    public final void a(Context context, zzawv zzawvVar) {
        synchronized (this.f5942a) {
            if (!this.f5945d) {
                this.f5946e = context.getApplicationContext();
                this.f5947f = zzawvVar;
                com.google.android.gms.ads.internal.n.f().a(this.f5944c);
                ew1 ew1Var = null;
                this.f5943b.a(this.f5946e, (String) null, true);
                v6.a(this.f5946e, this.f5947f);
                new yp1(context.getApplicationContext(), this.f5947f);
                com.google.android.gms.ads.internal.n.l();
                if (!((Boolean) mu1.e().a(aw1.Q)).booleanValue()) {
                    na.e("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                } else {
                    ew1Var = new ew1();
                }
                this.f5948g = ew1Var;
                if (this.f5948g != null) {
                    de.a(new ea(this).b(), "AppState.registerCsiReporter");
                }
                this.f5945d = true;
                j();
            }
        }
        com.google.android.gms.ads.internal.n.c().a(context, zzawvVar.f11000e);
    }

    public final void b(Throwable th, String str) {
        v6.a(this.f5946e, this.f5947f).a(th, str, ((Float) mu1.e().a(aw1.f5673i)).floatValue());
    }

    public final void a(Throwable th, String str) {
        v6.a(this.f5946e, this.f5947f).a(th, str);
    }

    @Nullable
    public final Context a() {
        return this.f5946e;
    }

    @TargetApi(16)
    private static ArrayList<String> a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b(context.getApplicationInfo().packageName, 4096);
            if (b2.requestedPermissions != null && b2.requestedPermissionsFlags != null) {
                int i2 = 0;
                while (true) {
                    String[] strArr = b2.requestedPermissions;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if ((b2.requestedPermissionsFlags[i2] & 2) != 0) {
                        arrayList.add(strArr[i2]);
                    }
                    i2++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }
}
