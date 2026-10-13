.class final Lcom/google/android/gms/internal/vision/s4$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/k4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/k4<",
        "Lcom/google/android/gms/internal/vision/s4$c;",
        ">;"
    }
.end annotation


# instance fields
.field final e:Lcom/google/android/gms/internal/vision/v4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/v4<",
            "*>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Lcom/google/android/gms/internal/vision/z7;

.field final h:Z

.field final i:Z


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->h:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    return v0
.end method

.method public final E()Lcom/google/android/gms/internal/vision/z7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    return-object v0
.end method

.method public final F()Lcom/google/android/gms/internal/vision/c8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/z7;->zzip()Lcom/google/android/gms/internal/vision/c8;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/vision/c6;Lcom/google/android/gms/internal/vision/d6;)Lcom/google/android/gms/internal/vision/c6;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/s4$a;

    check-cast p2, Lcom/google/android/gms/internal/vision/s4;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;)Lcom/google/android/gms/internal/vision/s4$a;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/vision/h6;Lcom/google/android/gms/internal/vision/h6;)Lcom/google/android/gms/internal/vision/h6;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/s4$c;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    iget p1, p1, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zzag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    return v0
.end method
