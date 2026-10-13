package e.f.d;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: DataSource.java */
/* loaded from: classes.dex */
public interface c<T> {
    void a(e<T> eVar, Executor executor);

    boolean a();

    boolean b();

    @Nullable
    Throwable c();

    boolean close();

    boolean d();

    @Nullable
    T e();

    float getProgress();
}
