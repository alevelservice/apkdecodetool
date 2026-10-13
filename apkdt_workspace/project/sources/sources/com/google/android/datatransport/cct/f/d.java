package com.google.android.datatransport.cct.f;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* compiled from: AutoValue_BatchedLogRequest.java */
/* loaded from: classes.dex */
final class d extends j {

    /* renamed from: a, reason: collision with root package name */
    private final List<m> f4317a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<m> list) {
        if (list != null) {
            this.f4317a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // com.google.android.datatransport.cct.f.j
    @NonNull
    @Encodable.Field(name = "logRequest")
    public List<m> a() {
        return this.f4317a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f4317a.equals(((j) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f4317a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f4317a + "}";
    }
}
