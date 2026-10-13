package com.mapbox.mapboxsdk.location;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StaleStateManager.java */
/* loaded from: classes2.dex */
public class e0 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f15796a;

    /* renamed from: b, reason: collision with root package name */
    private final b0 f15797b;

    /* renamed from: e, reason: collision with root package name */
    private long f15800e;

    /* renamed from: d, reason: collision with root package name */
    private boolean f15799d = true;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final b f15798c = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StaleStateManager.java */
    /* loaded from: classes2.dex */
    public static class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<e0> f15801a;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e0 e0Var = this.f15801a.get();
            if (e0Var != null) {
                e0Var.b(true);
            }
        }

        private b(e0 e0Var) {
            this.f15801a = new WeakReference<>(e0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(b0 b0Var, LocationComponentOptions locationComponentOptions) {
        this.f15797b = b0Var;
        this.f15796a = locationComponentOptions.o();
        this.f15800e = locationComponentOptions.J();
    }

    private void d() {
        this.f15798c.removeCallbacksAndMessages(null);
        this.f15798c.sendEmptyMessageDelayed(1, this.f15800e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f15798c.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        b(false);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (z != this.f15799d) {
            this.f15799d = z;
            if (this.f15796a) {
                this.f15797b.a(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (z) {
            b(this.f15799d);
        } else if (this.f15796a) {
            b();
            this.f15797b.a(false);
        }
        this.f15796a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2) {
        this.f15800e = j2;
        if (this.f15798c.hasMessages(1)) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f15799d) {
            return;
        }
        d();
    }
}
