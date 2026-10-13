package com.google.firebase.iid;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.d;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@Keep
@KeepForSdk
/* loaded from: classes.dex */
public final class Registrar implements com.google.firebase.components.i {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    /* loaded from: classes.dex */
    public static class a implements com.google.firebase.iid.e0.a {
        public a(FirebaseInstanceId firebaseInstanceId) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(com.google.firebase.components.e eVar) {
        return new FirebaseInstanceId((com.google.firebase.c) eVar.a(com.google.firebase.c.class), eVar.b(com.google.firebase.r.i.class), eVar.b(com.google.firebase.o.f.class), (com.google.firebase.installations.g) eVar.a(com.google.firebase.installations.g.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ com.google.firebase.iid.e0.a lambda$getComponents$1$Registrar(com.google.firebase.components.e eVar) {
        return new a((FirebaseInstanceId) eVar.a(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.i
    @Keep
    public List<com.google.firebase.components.d<?>> getComponents() {
        d.b a2 = com.google.firebase.components.d.a(FirebaseInstanceId.class);
        a2.a(com.google.firebase.components.q.c(com.google.firebase.c.class));
        a2.a(com.google.firebase.components.q.b(com.google.firebase.r.i.class));
        a2.a(com.google.firebase.components.q.b(com.google.firebase.o.f.class));
        a2.a(com.google.firebase.components.q.c(com.google.firebase.installations.g.class));
        a2.a(s.f15019a);
        a2.a();
        com.google.firebase.components.d b2 = a2.b();
        d.b a3 = com.google.firebase.components.d.a(com.google.firebase.iid.e0.a.class);
        a3.a(com.google.firebase.components.q.c(FirebaseInstanceId.class));
        a3.a(t.f15020a);
        return Arrays.asList(b2, a3.b(), com.google.firebase.r.h.a("fire-iid", "21.0.1"));
    }
}
