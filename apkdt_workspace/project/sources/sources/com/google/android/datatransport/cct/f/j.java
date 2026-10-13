package com.google.android.datatransport.cct.f;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* compiled from: BatchedLogRequest.java */
@Encodable
/* loaded from: classes.dex */
public abstract class j {
    @NonNull
    public static j a(@NonNull List<m> list) {
        return new d(list);
    }

    @NonNull
    public static com.google.firebase.m.a b() {
        com.google.firebase.m.j.d dVar = new com.google.firebase.m.j.d();
        dVar.a(b.f4256a);
        dVar.a(true);
        return dVar.a();
    }

    @NonNull
    @Encodable.Field(name = "logRequest")
    public abstract List<m> a();
}
