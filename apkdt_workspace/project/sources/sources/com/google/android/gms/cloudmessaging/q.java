package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
abstract class q<T> {

    /* renamed from: a, reason: collision with root package name */
    final int f4952a;

    /* renamed from: b, reason: collision with root package name */
    final e.i.b.b.d.i<T> f4953b = new e.i.b.b.d.i<>();

    /* renamed from: c, reason: collision with root package name */
    final int f4954c;

    /* renamed from: d, reason: collision with root package name */
    final Bundle f4955d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(int i2, int i3, Bundle bundle) {
        this.f4952a = i2;
        this.f4954c = i3;
        this.f4955d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            sb.toString();
        }
        this.f4953b.a((e.i.b.b.d.i<T>) t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    public String toString() {
        int i2 = this.f4954c;
        int i3 = this.f4952a;
        boolean a2 = a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i2);
        sb.append(" id=");
        sb.append(i3);
        sb.append(" oneWay=");
        sb.append(a2);
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(p pVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(pVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            sb.toString();
        }
        this.f4953b.a(pVar);
    }
}
