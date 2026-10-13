package com.google.gson;

/* compiled from: JsonNull.java */
/* loaded from: classes.dex */
public final class j extends JsonElement {

    /* renamed from: a, reason: collision with root package name */
    public static final j f15470a = new j();

    @Deprecated
    public j() {
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof j);
    }

    public int hashCode() {
        return j.class.hashCode();
    }

    @Override // com.google.gson.JsonElement
    public j deepCopy() {
        return f15470a;
    }
}
