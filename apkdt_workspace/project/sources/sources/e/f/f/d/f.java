package e.f.f.d;

import android.graphics.drawable.Animatable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: ForwardingControllerListener.java */
@ThreadSafe
/* loaded from: classes.dex */
public class f<INFO> implements d<INFO> {

    /* renamed from: a, reason: collision with root package name */
    private final List<d<? super INFO>> f17297a = new ArrayList(2);

    private synchronized void c(String str, Throwable th) {
    }

    public synchronized void a(d<? super INFO> dVar) {
        this.f17297a.add(dVar);
    }

    public synchronized void b(d<? super INFO> dVar) {
        int indexOf = this.f17297a.indexOf(dVar);
        if (indexOf != -1) {
            this.f17297a.set(indexOf, null);
        }
    }

    public synchronized void a() {
        this.f17297a.clear();
    }

    @Override // e.f.f.d.d
    public synchronized void b(String str, Object obj) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.b(str, obj);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onSubmit", e2);
            }
        }
    }

    @Override // e.f.f.d.d
    public synchronized void a(String str, @Nullable INFO info, @Nullable Animatable animatable) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.a(str, info, animatable);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onFinalImageSet", e2);
            }
        }
    }

    @Override // e.f.f.d.d
    public void b(String str, Throwable th) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.b(str, th);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onIntermediateImageFailed", e2);
            }
        }
    }

    @Override // e.f.f.d.d
    public void a(String str, @Nullable INFO info) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.a(str, (String) info);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onIntermediateImageSet", e2);
            }
        }
    }

    @Override // e.f.f.d.d
    public synchronized void a(String str, Throwable th) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.a(str, th);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onFailure", e2);
            }
        }
    }

    @Override // e.f.f.d.d
    public synchronized void a(String str) {
        int size = this.f17297a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                d<? super INFO> dVar = this.f17297a.get(i2);
                if (dVar != null) {
                    dVar.a(str);
                }
            } catch (Exception e2) {
                c("InternalListener exception in onRelease", e2);
            }
        }
    }
}
