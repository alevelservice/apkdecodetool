package com.google.firebase.r;

import javax.annotation.Nonnull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_LibraryVersion.java */
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: a, reason: collision with root package name */
    private final String f15293a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15294b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        if (str != null) {
            this.f15293a = str;
            if (str2 != null) {
                this.f15294b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // com.google.firebase.r.f
    @Nonnull
    public String a() {
        return this.f15293a;
    }

    @Override // com.google.firebase.r.f
    @Nonnull
    public String b() {
        return this.f15294b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f15293a.equals(fVar.a()) && this.f15294b.equals(fVar.b());
    }

    public int hashCode() {
        return ((this.f15293a.hashCode() ^ 1000003) * 1000003) ^ this.f15294b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f15293a + ", version=" + this.f15294b + "}";
    }
}
