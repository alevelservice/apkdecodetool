package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class iz0<V> implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final Future<V> f7397e;

    /* renamed from: f, reason: collision with root package name */
    private final hz0<? super V> f7398f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iz0(Future<V> future, hz0<? super V> hz0Var) {
        this.f7397e = future;
        this.f7398f = hz0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7398f.a((hz0<? super V>) gz0.a((Future) this.f7397e));
        } catch (Error e2) {
            e = e2;
            this.f7398f.a(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.f7398f.a(e);
        } catch (ExecutionException e4) {
            this.f7398f.a(e4.getCause());
        }
    }

    public final String toString() {
        qw0 a2 = ow0.a(this);
        a2.a(this.f7398f);
        return a2.toString();
    }
}
