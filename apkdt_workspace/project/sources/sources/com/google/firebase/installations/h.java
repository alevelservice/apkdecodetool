package com.google.firebase.installations;

import androidx.annotation.NonNull;

/* compiled from: FirebaseInstallationsException.java */
/* loaded from: classes.dex */
public class h extends com.google.firebase.i {

    @NonNull
    private final a status;

    /* compiled from: FirebaseInstallationsException.java */
    /* loaded from: classes.dex */
    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public h(@NonNull a aVar) {
        this.status = aVar;
    }

    @NonNull
    public a getStatus() {
        return this.status;
    }

    public h(@NonNull String str, @NonNull a aVar) {
        super(str);
        this.status = aVar;
    }

    public h(@NonNull String str, @NonNull a aVar, @NonNull Throwable th) {
        super(str, th);
        this.status = aVar;
    }
}
