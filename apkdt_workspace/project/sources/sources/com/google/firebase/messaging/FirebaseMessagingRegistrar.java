package com.google.firebase.messaging;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.workspace.Env;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.d;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
@Keep
@KeepForSdk
/* loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements com.google.firebase.components.i {

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    private static class b<T> implements e.i.b.a.f<T> {
        private b() {
        }

        @Override // e.i.b.a.f
        public void a(e.i.b.a.c<T> cVar) {
        }

        @Override // e.i.b.a.f
        public void a(e.i.b.a.c<T> cVar, e.i.b.a.h hVar) {
            hVar.a(null);
        }
    }

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c implements e.i.b.a.g {
        @Override // e.i.b.a.g
        public <T> e.i.b.a.f<T> a(String str, Class<T> cls, e.i.b.a.b bVar, e.i.b.a.e<T, byte[]> eVar) {
            return new b();
        }
    }

    @VisibleForTesting
    static e.i.b.a.g determineFactory(e.i.b.a.g gVar) {
        if (gVar == null) {
            return new c();
        }
        try {
            gVar.a(Env.NAME_TEST, String.class, e.i.b.a.b.a("json"), p.f15260a);
            return gVar;
        } catch (IllegalArgumentException unused) {
            return new c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(com.google.firebase.components.e eVar) {
        return new FirebaseMessaging((com.google.firebase.c) eVar.a(com.google.firebase.c.class), (FirebaseInstanceId) eVar.a(FirebaseInstanceId.class), eVar.b(com.google.firebase.r.i.class), eVar.b(com.google.firebase.o.f.class), (com.google.firebase.installations.g) eVar.a(com.google.firebase.installations.g.class), determineFactory((e.i.b.a.g) eVar.a(e.i.b.a.g.class)), (com.google.firebase.n.d) eVar.a(com.google.firebase.n.d.class));
    }

    @Override // com.google.firebase.components.i
    @Keep
    public List<com.google.firebase.components.d<?>> getComponents() {
        d.b a2 = com.google.firebase.components.d.a(FirebaseMessaging.class);
        a2.a(com.google.firebase.components.q.c(com.google.firebase.c.class));
        a2.a(com.google.firebase.components.q.c(FirebaseInstanceId.class));
        a2.a(com.google.firebase.components.q.b(com.google.firebase.r.i.class));
        a2.a(com.google.firebase.components.q.b(com.google.firebase.o.f.class));
        a2.a(com.google.firebase.components.q.a((Class<?>) e.i.b.a.g.class));
        a2.a(com.google.firebase.components.q.c(com.google.firebase.installations.g.class));
        a2.a(com.google.firebase.components.q.c(com.google.firebase.n.d.class));
        a2.a(o.f15259a);
        a2.a();
        return Arrays.asList(a2.b(), com.google.firebase.r.h.a("fire-fcm", "20.1.7_1p"));
    }
}
