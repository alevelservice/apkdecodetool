package com.facebook.drawee.backends.pipeline.info;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ForwardingImageOriginListener.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final List<b> f3541a;

    public a(b... bVarArr) {
        this.f3541a = new ArrayList(bVarArr.length);
        Collections.addAll(this.f3541a, bVarArr);
    }

    public synchronized void a(b bVar) {
        this.f3541a.add(bVar);
    }

    public synchronized void b(b bVar) {
        this.f3541a.remove(bVar);
    }

    @Override // com.facebook.drawee.backends.pipeline.info.b
    public synchronized void a(String str, int i2, boolean z) {
        int size = this.f3541a.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f3541a.get(i3);
            if (bVar != null) {
                try {
                    bVar.a(str, i2, z);
                } catch (Exception e2) {
                    e.f.c.d.a.b("ForwardingImageOriginListener", "InternalListener exception in onImageLoaded", e2);
                }
            }
        }
    }
}
