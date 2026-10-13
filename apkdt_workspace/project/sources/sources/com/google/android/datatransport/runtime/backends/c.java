package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;

/* compiled from: AutoValue_CreationContext.java */
/* loaded from: classes.dex */
final class c extends i {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4368a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4369b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4370c;

    /* renamed from: d, reason: collision with root package name */
    private final String f4371d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, String str) {
        if (context != null) {
            this.f4368a = context;
            if (aVar != null) {
                this.f4369b = aVar;
                if (aVar2 != null) {
                    this.f4370c = aVar2;
                    if (str != null) {
                        this.f4371d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // com.google.android.datatransport.runtime.backends.i
    public Context a() {
        return this.f4368a;
    }

    @Override // com.google.android.datatransport.runtime.backends.i
    @NonNull
    public String b() {
        return this.f4371d;
    }

    @Override // com.google.android.datatransport.runtime.backends.i
    public com.google.android.datatransport.runtime.time.a c() {
        return this.f4370c;
    }

    @Override // com.google.android.datatransport.runtime.backends.i
    public com.google.android.datatransport.runtime.time.a d() {
        return this.f4369b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f4368a.equals(iVar.a()) && this.f4369b.equals(iVar.d()) && this.f4370c.equals(iVar.c()) && this.f4371d.equals(iVar.b());
    }

    public int hashCode() {
        return ((((((this.f4368a.hashCode() ^ 1000003) * 1000003) ^ this.f4369b.hashCode()) * 1000003) ^ this.f4370c.hashCode()) * 1000003) ^ this.f4371d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f4368a + ", wallClock=" + this.f4369b + ", monotonicClock=" + this.f4370c + ", backendName=" + this.f4371d + "}";
    }
}
