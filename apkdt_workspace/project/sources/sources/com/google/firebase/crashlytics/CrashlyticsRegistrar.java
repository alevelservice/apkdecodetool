package com.google.firebase.crashlytics;

import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import com.google.firebase.installations.g;
import com.google.firebase.r.h;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class CrashlyticsRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public c a(e eVar) {
        return c.a((com.google.firebase.c) eVar.a(com.google.firebase.c.class), (g) eVar.a(g.class), (com.google.firebase.crashlytics.d.a) eVar.a(com.google.firebase.crashlytics.d.a.class), (com.google.firebase.k.a.a) eVar.a(com.google.firebase.k.a.a.class));
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a2 = d.a(c.class);
        a2.a(q.c(com.google.firebase.c.class));
        a2.a(q.c(g.class));
        a2.a(q.a((Class<?>) com.google.firebase.k.a.a.class));
        a2.a(q.a((Class<?>) com.google.firebase.crashlytics.d.a.class));
        a2.a(b.a(this));
        a2.c();
        return Arrays.asList(a2.b(), h.a("fire-cls", "17.3.0"));
    }
}
