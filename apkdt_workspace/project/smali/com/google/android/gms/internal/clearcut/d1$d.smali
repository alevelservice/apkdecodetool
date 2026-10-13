.class final Lcom/google/android/gms/internal/clearcut/d1$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/x0<",
        "Lcom/google/android/gms/internal/clearcut/d1$d;",
        ">;"
    }
.end annotation


# instance fields
.field final e:I

.field final f:Lcom/google/android/gms/internal/clearcut/g4;


# virtual methods
.method public final B()Lcom/google/android/gms/internal/clearcut/l4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$d;->f:Lcom/google/android/gms/internal/clearcut/g4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/g4;->zzek()Lcom/google/android/gms/internal/clearcut/l4;

    move-result-object v0

    return-object v0
.end method

.method public final D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Lcom/google/android/gms/internal/clearcut/g4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$d;->f:Lcom/google/android/gms/internal/clearcut/g4;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/clearcut/j2;Lcom/google/android/gms/internal/clearcut/i2;)Lcom/google/android/gms/internal/clearcut/j2;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1$a;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/d1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/d1$a;->a(Lcom/google/android/gms/internal/clearcut/d1;)Lcom/google/android/gms/internal/clearcut/d1$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/clearcut/o2;Lcom/google/android/gms/internal/clearcut/o2;)Lcom/google/android/gms/internal/clearcut/o2;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1$d;

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    return v0
.end method
