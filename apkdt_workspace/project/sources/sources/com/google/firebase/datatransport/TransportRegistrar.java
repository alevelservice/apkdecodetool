package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import e.i.b.a.g;
import e.i.b.a.i.r;
import java.util.Collections;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g lambda$getComponents$0(e eVar) {
        r.a((Context) eVar.a(Context.class));
        return r.b().a(com.google.android.datatransport.cct.a.f4238g);
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a2 = d.a(g.class);
        a2.a(q.c(Context.class));
        a2.a(a.a());
        return Collections.singletonList(a2.b());
    }
}
