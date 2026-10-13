package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.d;
import com.google.firebase.components.q;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements com.google.firebase.components.i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g lambda$getComponents$0(com.google.firebase.components.e eVar) {
        return new f((com.google.firebase.c) eVar.a(com.google.firebase.c.class), eVar.b(com.google.firebase.r.i.class), eVar.b(com.google.firebase.o.f.class));
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.d<?>> getComponents() {
        d.b a2 = com.google.firebase.components.d.a(g.class);
        a2.a(q.c(com.google.firebase.c.class));
        a2.a(q.b(com.google.firebase.o.f.class));
        a2.a(q.b(com.google.firebase.r.i.class));
        a2.a(i.a());
        return Arrays.asList(a2.b(), com.google.firebase.r.h.a("fire-installations", "16.3.5"));
    }
}
