.class public final Lcom/google/android/gms/internal/measurement/e2;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/measurement/f2;)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/f2<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/f2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/g2;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/h2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/h2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/h2;-><init>(Lcom/google/android/gms/internal/measurement/f2;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g2;-><init>(Lcom/google/android/gms/internal/measurement/f2;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/f2;
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
            "Lcom/google/android/gms/internal/measurement/f2<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/i2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/i2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
