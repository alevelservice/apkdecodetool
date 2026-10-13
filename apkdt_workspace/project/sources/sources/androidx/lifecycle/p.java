package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ViewModel.java */
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Map<String, Object> f2364a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public final void a() {
        Map<String, Object> map = this.f2364a;
        if (map != null) {
            synchronized (map) {
                Iterator<Object> it = this.f2364a.values().iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    private static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }
}
