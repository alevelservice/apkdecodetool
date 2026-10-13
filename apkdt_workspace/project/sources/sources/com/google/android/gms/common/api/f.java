package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("sAllClients")
    private static final Set<f> f5013a = Collections.newSetFromMap(new WeakHashMap());

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @Deprecated
    /* loaded from: classes.dex */
    public interface a extends com.google.android.gms.common.api.internal.f {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @Deprecated
    /* loaded from: classes.dex */
    public interface b extends com.google.android.gms.common.api.internal.m {
    }

    @KeepForSdk
    public static Set<f> c() {
        Set<f> set;
        synchronized (f5013a) {
            set = f5013a;
        }
        return set;
    }

    @KeepForSdk
    public <A extends a.b, R extends m, T extends com.google.android.gms.common.api.internal.d<R, A>> T a(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.d<? extends m, A>> T b(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public Looper a() {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public void b() {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public boolean a(com.google.android.gms.common.api.internal.p pVar) {
        throw new UnsupportedOperationException();
    }
}
