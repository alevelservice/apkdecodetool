package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements f {

    /* renamed from: a, reason: collision with root package name */
    private final b f2318a;

    /* renamed from: b, reason: collision with root package name */
    private final f f2319b;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2320a = new int[e.a.values().length];

        static {
            try {
                f2320a[e.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2320a[e.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2320a[e.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2320a[e.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2320a[e.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2320a[e.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2320a[e.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(b bVar, f fVar) {
        this.f2318a = bVar;
        this.f2319b = fVar;
    }

    @Override // androidx.lifecycle.f
    public void a(@NonNull h hVar, @NonNull e.a aVar) {
        switch (a.f2320a[aVar.ordinal()]) {
            case 1:
                this.f2318a.b(hVar);
                break;
            case 2:
                this.f2318a.f(hVar);
                break;
            case 3:
                this.f2318a.a(hVar);
                break;
            case 4:
                this.f2318a.c(hVar);
                break;
            case 5:
                this.f2318a.d(hVar);
                break;
            case 6:
                this.f2318a.e(hVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        f fVar = this.f2319b;
        if (fVar != null) {
            fVar.a(hVar, aVar);
        }
    }
}
