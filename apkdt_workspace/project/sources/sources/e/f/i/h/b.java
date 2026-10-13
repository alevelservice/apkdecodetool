package e.f.i.h;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: ForwardingRequestListener.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private final List<c> f17613a;

    public b(Set<c> set) {
        this.f17613a = new ArrayList(set.size());
        for (c cVar : set) {
            if (cVar != null) {
                this.f17613a.add(cVar);
            }
        }
    }

    public void a(c cVar) {
        this.f17613a.add(cVar);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void b(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).b(str, str2, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithSuccess", e2);
            }
        }
    }

    @Override // e.f.i.h.c
    public void a(e.f.i.i.b bVar, Object obj, String str, boolean z) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(bVar, obj, str, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestStart", e2);
            }
        }
    }

    public b(c... cVarArr) {
        this.f17613a = new ArrayList(cVarArr.length);
        for (c cVar : cVarArr) {
            if (cVar != null) {
                this.f17613a.add(cVar);
            }
        }
    }

    @Override // e.f.i.h.c
    public void b(String str) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).b(str);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestCancellation", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(str, str2);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerStart", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2, Throwable th, @Nullable Map<String, String> map) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(str, str2, th, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithFailure", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(str, str2, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithCancellation", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2, String str3) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(str, str2, str3);
            } catch (Exception e2) {
                a("InternalListener exception in onIntermediateChunkStart", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2, boolean z) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(str, str2, z);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithSuccess", e2);
            }
        }
    }

    @Override // e.f.i.h.c
    public void a(e.f.i.i.b bVar, String str, boolean z) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(bVar, str, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestSuccess", e2);
            }
        }
    }

    @Override // e.f.i.h.c
    public void a(e.f.i.i.b bVar, String str, Throwable th, boolean z) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                this.f17613a.get(i2).a(bVar, str, th, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestFailure", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public boolean a(String str) {
        int size = this.f17613a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f17613a.get(i2).a(str)) {
                return true;
            }
        }
        return false;
    }

    private void a(String str, Throwable th) {
        e.f.c.d.a.b("ForwardingRequestListener", str, th);
    }
}
