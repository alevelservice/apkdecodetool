package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class f {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f14986c = new Object();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private static d0 f14987d;

    /* renamed from: a, reason: collision with root package name */
    private final Context f14988a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f14989b;

    public f(Context context) {
        this.f14988a = context;
        this.f14989b = a.f14968e;
    }

    public f(Context context, ExecutorService executorService) {
        this.f14988a = context;
        this.f14989b = executorService;
    }

    private static d0 a(Context context, String str) {
        d0 d0Var;
        synchronized (f14986c) {
            if (f14987d == null) {
                f14987d = new d0(context, "com.google.firebase.MESSAGING_EVENT");
            }
            d0Var = f14987d;
        }
        return d0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ e.i.b.b.d.h a(Context context, Intent intent, e.i.b.b.d.h hVar) {
        return (com.google.android.gms.common.util.o.k() && ((Integer) hVar.b()).intValue() == 402) ? b(context, intent).a(h.a(), e.f14985a) : hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Integer a(e.i.b.b.d.h hVar) {
        return -1;
    }

    private static e.i.b.b.d.h<Integer> b(Context context, Intent intent) {
        Log.isLoggable("FirebaseInstanceId", 3);
        return a(context, "com.google.firebase.MESSAGING_EVENT").a(intent).a(h.a(), d.f14976a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Integer b(e.i.b.b.d.h hVar) {
        return 403;
    }

    @KeepForSdk
    public e.i.b.b.d.h<Integer> a(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return a(this.f14988a, intent);
    }

    @SuppressLint({"InlinedApi"})
    public e.i.b.b.d.h<Integer> a(final Context context, final Intent intent) {
        boolean z = false;
        if (com.google.android.gms.common.util.o.k() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z = true;
        }
        int flags = intent.getFlags() & 268435456;
        if (z && flags == 0) {
            return b(context, intent);
        }
        return e.i.b.b.d.k.a(this.f14989b, new Callable(context, intent) { // from class: com.google.firebase.iid.b

            /* renamed from: e, reason: collision with root package name */
            private final Context f14970e;

            /* renamed from: f, reason: collision with root package name */
            private final Intent f14971f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f14970e = context;
                this.f14971f = intent;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(w.b().a(this.f14970e, this.f14971f));
                return valueOf;
            }
        }).b(this.f14989b, new e.i.b.b.d.a(context, intent) { // from class: com.google.firebase.iid.c

            /* renamed from: a, reason: collision with root package name */
            private final Context f14973a;

            /* renamed from: b, reason: collision with root package name */
            private final Intent f14974b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f14973a = context;
                this.f14974b = intent;
            }

            @Override // e.i.b.b.d.a
            public Object a(e.i.b.b.d.h hVar) {
                return f.a(this.f14973a, this.f14974b, hVar);
            }
        });
    }
}
