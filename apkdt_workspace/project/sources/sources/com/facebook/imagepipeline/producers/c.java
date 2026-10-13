package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.r;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: BaseNetworkFetcher.java */
/* loaded from: classes.dex */
public abstract class c<FETCH_STATE extends r> implements e0<FETCH_STATE> {
    @Override // com.facebook.imagepipeline.producers.e0
    public void a(FETCH_STATE fetch_state, int i2) {
    }

    @Override // com.facebook.imagepipeline.producers.e0
    public boolean a(FETCH_STATE fetch_state) {
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.e0
    @Nullable
    public Map<String, String> b(FETCH_STATE fetch_state, int i2) {
        return null;
    }
}
