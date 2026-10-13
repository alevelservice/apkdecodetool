package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import java.util.HashMap;

/* compiled from: SystemChannel.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.b<Object> f19201a;

    public l(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19201a = new g.a.c.a.b<>(aVar, "flutter/system", g.a.c.a.f.f18221a);
    }

    public void a() {
        g.a.b.c("SystemChannel", "Sending memory pressure warning to Flutter.");
        HashMap hashMap = new HashMap(1);
        hashMap.put("type", "memoryPressure");
        this.f19201a.a((g.a.c.a.b<Object>) hashMap);
    }
}
