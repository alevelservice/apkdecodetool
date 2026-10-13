package a.a.n;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.a0;
import androidx.core.view.b0;
import androidx.core.view.c0;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ViewPropertyAnimatorCompatSet.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class h {

    /* renamed from: c, reason: collision with root package name */
    private Interpolator f49c;

    /* renamed from: d, reason: collision with root package name */
    b0 f50d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f51e;

    /* renamed from: b, reason: collision with root package name */
    private long f48b = -1;

    /* renamed from: f, reason: collision with root package name */
    private final c0 f52f = new a();

    /* renamed from: a, reason: collision with root package name */
    final ArrayList<a0> f47a = new ArrayList<>();

    /* compiled from: ViewPropertyAnimatorCompatSet.java */
    /* loaded from: classes.dex */
    class a extends c0 {

        /* renamed from: a, reason: collision with root package name */
        private boolean f53a = false;

        /* renamed from: b, reason: collision with root package name */
        private int f54b = 0;

        a() {
        }

        void a() {
            this.f54b = 0;
            this.f53a = false;
            h.this.b();
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            int i2 = this.f54b + 1;
            this.f54b = i2;
            if (i2 == h.this.f47a.size()) {
                b0 b0Var = h.this.f50d;
                if (b0Var != null) {
                    b0Var.b(null);
                }
                a();
            }
        }

        @Override // androidx.core.view.c0, androidx.core.view.b0
        public void c(View view) {
            if (this.f53a) {
                return;
            }
            this.f53a = true;
            b0 b0Var = h.this.f50d;
            if (b0Var != null) {
                b0Var.c(null);
            }
        }
    }

    public h a(a0 a0Var) {
        if (!this.f51e) {
            this.f47a.add(a0Var);
        }
        return this;
    }

    void b() {
        this.f51e = false;
    }

    public void c() {
        if (this.f51e) {
            return;
        }
        Iterator<a0> it = this.f47a.iterator();
        while (it.hasNext()) {
            a0 next = it.next();
            long j2 = this.f48b;
            if (j2 >= 0) {
                next.a(j2);
            }
            Interpolator interpolator = this.f49c;
            if (interpolator != null) {
                next.a(interpolator);
            }
            if (this.f50d != null) {
                next.a(this.f52f);
            }
            next.c();
        }
        this.f51e = true;
    }

    public h a(a0 a0Var, a0 a0Var2) {
        this.f47a.add(a0Var);
        a0Var2.b(a0Var.b());
        this.f47a.add(a0Var2);
        return this;
    }

    public void a() {
        if (this.f51e) {
            Iterator<a0> it = this.f47a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f51e = false;
        }
    }

    public h a(long j2) {
        if (!this.f51e) {
            this.f48b = j2;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.f51e) {
            this.f49c = interpolator;
        }
        return this;
    }

    public h a(b0 b0Var) {
        if (!this.f51e) {
            this.f50d = b0Var;
        }
        return this;
    }
}
