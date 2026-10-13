package com.google.firebase.messaging;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    private final String f15261a;

    /* renamed from: b, reason: collision with root package name */
    private final Intent f15262b;

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    static class a implements com.google.firebase.m.e<q> {
        @Override // com.google.firebase.m.e
        public void a(q qVar, com.google.firebase.m.f fVar) {
            Intent b2 = qVar.b();
            fVar.a("ttl", u.l(b2));
            fVar.a("event", qVar.a());
            fVar.a("instanceId", u.b());
            fVar.a("priority", u.j(b2));
            fVar.a("packageName", u.c());
            fVar.a("sdkPlatform", "ANDROID");
            fVar.a("messageType", u.h(b2));
            String e2 = u.e(b2);
            if (e2 != null) {
                fVar.a("messageId", e2);
            }
            String k2 = u.k(b2);
            if (k2 != null) {
                fVar.a("topic", k2);
            }
            String a2 = u.a(b2);
            if (a2 != null) {
                fVar.a("collapseKey", a2);
            }
            if (u.f(b2) != null) {
                fVar.a("analyticsLabel", u.f(b2));
            }
            if (u.c(b2) != null) {
                fVar.a("composerLabel", u.c(b2));
            }
            String d2 = u.d();
            if (d2 != null) {
                fVar.a("projectNumber", d2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final q f15263a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(@NonNull q qVar) {
            com.google.android.gms.common.internal.m.a(qVar);
            this.f15263a = qVar;
        }

        @NonNull
        q a() {
            return this.f15263a;
        }
    }

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    static final class c implements com.google.firebase.m.e<b> {
        @Override // com.google.firebase.m.e
        public void a(b bVar, com.google.firebase.m.f fVar) {
            fVar.a("messaging_client_event", bVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(@NonNull String str, @NonNull Intent intent) {
        com.google.android.gms.common.internal.m.a(Constants$FirelogAnalytics$EventType.MESSAGE_DELIVERED, (Object) "evenType must be non-null");
        this.f15261a = Constants$FirelogAnalytics$EventType.MESSAGE_DELIVERED;
        com.google.android.gms.common.internal.m.a(intent, "intent must be non-null");
        this.f15262b = intent;
    }

    @NonNull
    String a() {
        return this.f15261a;
    }

    @NonNull
    Intent b() {
        return this.f15262b;
    }
}
