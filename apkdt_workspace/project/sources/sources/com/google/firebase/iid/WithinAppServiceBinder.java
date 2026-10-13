package com.google.firebase.iid;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.iid.d0;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class WithinAppServiceBinder extends Binder {

    /* renamed from: e, reason: collision with root package name */
    private final a f14967e;

    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    /* loaded from: classes.dex */
    public interface a {
        @KeepForSdk
        e.i.b.b.d.h<Void> a(Intent intent);
    }

    @KeepForSdk
    public WithinAppServiceBinder(a aVar) {
        this.f14967e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(final d0.a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            Log.isLoggable("FirebaseInstanceId", 3);
            this.f14967e.a(aVar.f14983a).a(h.a(), new e.i.b.b.d.c(aVar) { // from class: com.google.firebase.iid.a0

                /* renamed from: a, reason: collision with root package name */
                private final d0.a f14969a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f14969a = aVar;
                }

                @Override // e.i.b.b.d.c
                public void a(e.i.b.b.d.h hVar) {
                    this.f14969a.a();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
