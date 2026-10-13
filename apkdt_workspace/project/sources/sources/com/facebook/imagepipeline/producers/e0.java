package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.r;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: NetworkFetcher.java */
/* loaded from: classes.dex */
public interface e0<FETCH_STATE extends r> {

    /* compiled from: NetworkFetcher.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(InputStream inputStream, int i2);

        void a(Throwable th);
    }

    FETCH_STATE a(Consumer<e.f.i.g.e> consumer, j0 j0Var);

    void a(FETCH_STATE fetch_state, int i2);

    void a(FETCH_STATE fetch_state, a aVar);

    boolean a(FETCH_STATE fetch_state);

    @Nullable
    Map<String, String> b(FETCH_STATE fetch_state, int i2);
}
