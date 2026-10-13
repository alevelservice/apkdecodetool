.class abstract Lcom/google/android/gms/internal/auth/g;
.super Lcom/google/android/gms/common/api/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/d<",
        "Lcom/google/android/gms/auth/api/proxy/a$b;",
        "Lcom/google/android/gms/internal/auth/e;",
        ">;"
    }
.end annotation


# direct methods
.method protected static d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/a$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/l;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
