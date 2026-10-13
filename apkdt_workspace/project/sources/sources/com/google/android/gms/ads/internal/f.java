package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.cz0;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.q21;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.yd;
import com.google.android.gms.internal.ads.zzawv;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f implements cz0, Runnable {

    /* renamed from: g, reason: collision with root package name */
    private Context f4527g;

    /* renamed from: h, reason: collision with root package name */
    private zzawv f4528h;

    /* renamed from: e, reason: collision with root package name */
    private final List<Object[]> f4525e = new Vector();

    /* renamed from: f, reason: collision with root package name */
    private final AtomicReference<cz0> f4526f = new AtomicReference<>();

    /* renamed from: i, reason: collision with root package name */
    private CountDownLatch f4529i = new CountDownLatch(1);

    public f(Context context, zzawv zzawvVar) {
        this.f4527g = context;
        this.f4528h = zzawvVar;
        yd.f10540a.execute(this);
    }

    private final boolean a() {
        try {
            this.f4529i.await();
            return true;
        } catch (InterruptedException e2) {
            qd.c("Interrupted during GADSignals creation.", e2);
            return false;
        }
    }

    private final void b() {
        if (this.f4525e.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.f4525e) {
            if (objArr.length == 1) {
                this.f4526f.get().a((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.f4526f.get().a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.f4525e.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        try {
            boolean z2 = this.f4528h.f11003h;
            if (!((Boolean) mu1.e().a(aw1.N0)).booleanValue() && z2) {
                z = true;
            }
            this.f4526f.set(q21.a(this.f4528h.f11000e, b(this.f4527g), z));
        } finally {
            this.f4529i.countDown();
            this.f4527g = null;
            this.f4528h = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context) {
        cz0 cz0Var;
        if (!a() || (cz0Var = this.f4526f.get()) == null) {
            return "";
        }
        b();
        return cz0Var.a(b(context));
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context, String str, View view) {
        return a(context, str, view, null);
    }

    private static Context b(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final String a(Context context, String str, View view, Activity activity) {
        cz0 cz0Var;
        if (!a() || (cz0Var = this.f4526f.get()) == null) {
            return "";
        }
        b();
        return cz0Var.a(b(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(View view) {
        cz0 cz0Var = this.f4526f.get();
        if (cz0Var != null) {
            cz0Var.a(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(MotionEvent motionEvent) {
        cz0 cz0Var = this.f4526f.get();
        if (cz0Var != null) {
            b();
            cz0Var.a(motionEvent);
        } else {
            this.f4525e.add(new Object[]{motionEvent});
        }
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(int i2, int i3, int i4) {
        cz0 cz0Var = this.f4526f.get();
        if (cz0Var != null) {
            b();
            cz0Var.a(i2, i3, i4);
        } else {
            this.f4525e.add(new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)});
        }
    }
}
