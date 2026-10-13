package e.i.b.a.i;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.BindsInstance;
import com.google.android.datatransport.runtime.dagger.Component;
import java.io.Closeable;
import javax.inject.Singleton;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransportRuntimeComponent.java */
@Singleton
@Component(modules = {com.google.android.datatransport.runtime.backends.f.class, e.i.b.a.i.w.j.e.class, i.class, e.i.b.a.i.w.h.class, e.i.b.a.i.w.f.class, com.google.android.datatransport.runtime.time.b.class})
/* loaded from: classes.dex */
public abstract class s implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransportRuntimeComponent.java */
    @Component.Builder
    /* loaded from: classes.dex */
    public interface a {
        @BindsInstance
        a a(Context context);

        s a();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i().close();
    }

    abstract e.i.b.a.i.w.j.c i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract r j();
}
