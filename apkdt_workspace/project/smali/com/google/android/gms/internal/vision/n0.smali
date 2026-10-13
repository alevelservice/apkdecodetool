.class public final Lcom/google/android/gms/internal/vision/n0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/vision/k0;)Lcom/google/android/gms/internal/vision/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/k0<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/vision/k0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/p0;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/m0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/vision/m0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/m0;-><init>(Lcom/google/android/gms/internal/vision/k0;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vision/p0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/p0;-><init>(Lcom/google/android/gms/internal/vision/k0;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/k0;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/vision/k0<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/vision/o0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/o0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
