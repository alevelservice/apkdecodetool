package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
class v {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f15023a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<Pair<String, String>, e.i.b.b.d.h<p>> f15024b = new a.e.a();

    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    /* loaded from: classes.dex */
    interface a {
        e.i.b.b.d.h<p> start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Executor executor) {
        this.f15023a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ e.i.b.b.d.h a(Pair pair, e.i.b.b.d.h hVar) {
        synchronized (this) {
            this.f15024b.remove(pair);
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public synchronized e.i.b.b.d.h<p> a(String str, String str2, a aVar) {
        final Pair pair = new Pair(str, str2);
        e.i.b.b.d.h<p> hVar = this.f15024b.get(pair);
        if (hVar != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(pair);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                sb.append("Joining ongoing request for: ");
                sb.append(valueOf);
                sb.toString();
            }
            return hVar;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf2 = String.valueOf(pair);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
            sb2.append("Making new request for: ");
            sb2.append(valueOf2);
            sb2.toString();
        }
        e.i.b.b.d.h b2 = aVar.start().b(this.f15023a, new e.i.b.b.d.a(this, pair) { // from class: com.google.firebase.iid.u

            /* renamed from: a, reason: collision with root package name */
            private final v f15021a;

            /* renamed from: b, reason: collision with root package name */
            private final Pair f15022b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15021a = this;
                this.f15022b = pair;
            }

            @Override // e.i.b.b.d.a
            public Object a(e.i.b.b.d.h hVar2) {
                this.f15021a.a(this.f15022b, hVar2);
                return hVar2;
            }
        });
        this.f15024b.put(pair, b2);
        return b2;
    }
}
