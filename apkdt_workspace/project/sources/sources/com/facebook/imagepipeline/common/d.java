package com.facebook.imagepipeline.common;

import javax.annotation.Nullable;

/* compiled from: Priority.java */
/* loaded from: classes.dex */
public enum d {
    LOW,
    MEDIUM,
    HIGH;

    public static d getHigherPriority(@Nullable d dVar, @Nullable d dVar2) {
        return dVar == null ? dVar2 : (dVar2 != null && dVar.ordinal() <= dVar2.ordinal()) ? dVar2 : dVar;
    }
}
