.class public final Lcom/google/android/gms/common/api/internal/g1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final a:La/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/a<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final b:La/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/a<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g1;->a:La/e/a;

    invoke-virtual {v0}, La/e/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g1;->a:La/e/a;

    invoke-virtual {v0, p1, p2}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g1;->b:La/e/a;

    invoke-virtual {v0, p1, p3}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p1, p0, Lcom/google/android/gms/common/api/internal/g1;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/g1;->d:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/g1;->e:Z

    .line 7
    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/g1;->d:I

    if-nez p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/g1;->e:Z

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Lcom/google/android/gms/common/api/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/g1;->a:La/e/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/c;-><init>(La/e/a;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/g1;->c:Le/i/b/b/d/i;

    invoke-virtual {p2, p1}, Le/i/b/b/d/i;->a(Ljava/lang/Exception;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g1;->c:Le/i/b/b/d/i;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/g1;->b:La/e/a;

    invoke-virtual {p1, p2}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
