package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ru0<O> {

    /* renamed from: a, reason: collision with root package name */
    private final E f9233a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f9234b;

    /* renamed from: c, reason: collision with root package name */
    private final qz0<?> f9235c;

    /* renamed from: d, reason: collision with root package name */
    private final List<qz0<?>> f9236d;

    /* renamed from: e, reason: collision with root package name */
    private final qz0<O> f9237e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ ku0 f9238f;

    private ru0(ku0 ku0Var, E e2, String str, qz0<?> qz0Var, List<qz0<?>> list, qz0<O> qz0Var2) {
        this.f9238f = ku0Var;
        this.f9233a = e2;
        this.f9234b = str;
        this.f9235c = qz0Var;
        this.f9236d = list;
        this.f9237e = qz0Var2;
    }

    public final ru0<O> a(String str) {
        return new ru0<>(this.f9238f, this.f9233a, str, this.f9235c, this.f9236d, this.f9237e);
    }

    public final <O2> ru0<O2> a(final fu0<O, O2> fu0Var) {
        return a((qy0) new qy0(fu0Var) { // from class: com.google.android.gms.internal.ads.qu0

            /* renamed from: a, reason: collision with root package name */
            private final fu0 f9007a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9007a = fu0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return gz0.a(this.f9007a.apply(obj));
            }
        });
    }

    public final <O2> ru0<O2> a(qy0<O, O2> qy0Var) {
        tz0 tz0Var;
        tz0Var = this.f9238f.f7755a;
        return a(qy0Var, tz0Var);
    }

    private final <O2> ru0<O2> a(qy0<O, O2> qy0Var, Executor executor) {
        return new ru0<>(this.f9238f, this.f9233a, this.f9234b, this.f9235c, this.f9236d, gz0.a(this.f9237e, qy0Var, executor));
    }

    public final <O2> ru0<O2> a(final qz0<O2> qz0Var) {
        return a(new qy0(qz0Var) { // from class: com.google.android.gms.internal.ads.tu0

            /* renamed from: a, reason: collision with root package name */
            private final qz0 f9638a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9638a = qz0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f9638a;
            }
        }, yd.f10544e);
    }

    public final <T extends Throwable> ru0<O> a(Class<T> cls, final fu0<T, O> fu0Var) {
        return a(cls, new qy0(fu0Var) { // from class: com.google.android.gms.internal.ads.su0

            /* renamed from: a, reason: collision with root package name */
            private final fu0 f9450a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9450a = fu0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return gz0.a(this.f9450a.apply((Throwable) obj));
            }
        });
    }

    public final <T extends Throwable> ru0<O> a(Class<T> cls, qy0<T, O> qy0Var) {
        tz0 tz0Var;
        ku0 ku0Var = this.f9238f;
        E e2 = this.f9233a;
        String str = this.f9234b;
        qz0<?> qz0Var = this.f9235c;
        List<qz0<?>> list = this.f9236d;
        qz0<O> qz0Var2 = this.f9237e;
        tz0Var = ku0Var.f7755a;
        return new ru0<>(ku0Var, e2, str, qz0Var, list, gz0.a(qz0Var2, cls, qy0Var, tz0Var));
    }

    public final ru0<O> a(long j2, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        ku0 ku0Var = this.f9238f;
        E e2 = this.f9233a;
        String str = this.f9234b;
        qz0<?> qz0Var = this.f9235c;
        List<qz0<?>> list = this.f9236d;
        qz0<O> qz0Var2 = this.f9237e;
        scheduledExecutorService = ku0Var.f7756b;
        return new ru0<>(ku0Var, e2, str, qz0Var, list, gz0.a(qz0Var2, j2, timeUnit, scheduledExecutorService));
    }

    public final hu0<E, O> a() {
        xu0 xu0Var;
        E e2 = this.f9233a;
        String str = this.f9234b;
        if (str == null) {
            str = this.f9238f.b((ku0) e2);
        }
        final hu0<E, O> hu0Var = new hu0<>(e2, str, this.f9237e);
        xu0Var = this.f9238f.f7757c;
        xu0Var.c(hu0Var);
        this.f9235c.a(new Runnable(this, hu0Var) { // from class: com.google.android.gms.internal.ads.vu0

            /* renamed from: e, reason: collision with root package name */
            private final ru0 f9989e;

            /* renamed from: f, reason: collision with root package name */
            private final hu0 f9990f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9989e = this;
                this.f9990f = hu0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                xu0 xu0Var2;
                ru0 ru0Var = this.f9989e;
                hu0 hu0Var2 = this.f9990f;
                xu0Var2 = ru0Var.f9238f.f7757c;
                xu0Var2.b(hu0Var2);
            }
        }, yd.f10544e);
        gz0.a(hu0Var, new uu0(this, hu0Var), yd.f10544e);
        return hu0Var;
    }

    public final ru0<O> a(E e2) {
        return this.f9238f.a((ku0) e2, (qz0) a());
    }
}
