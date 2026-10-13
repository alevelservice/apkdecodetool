.class final Lcom/google/android/gms/internal/ads/ta1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/db1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/db1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oa1;

.field private final b:Lcom/google/android/gms/internal/ads/vb1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/ads/s81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/oa1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/oa1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ta1;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/ta1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/vb1<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/s81<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/oa1;",
            ")",
            "Lcom/google/android/gms/internal/ads/ta1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ta1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ta1;-><init>(Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/oa1;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oa1;->c()Lcom/google/android/gms/internal/ads/na1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/na1;->p()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;Lcom/google/android/gms/internal/ads/q81;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/eb1;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/s81;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v3

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->s()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 54
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->getTag()I

    move-result v4

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 56
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    ushr-int/lit8 v4, v4, 0x3

    .line 57
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/oa1;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 58
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;)Z

    move-result v4

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/eb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/t81;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 60
    :cond_3
    :try_start_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->e()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move-object v4, v7

    move-object v8, v4

    const/4 v6, 0x0

    .line 61
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->s()I

    move-result v9

    if-eq v9, v5, :cond_9

    .line 62
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->getTag()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_6

    .line 63
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->o()I

    move-result v6

    .line 64
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    .line 65
    invoke-virtual {v1, p3, v4, v6}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/oa1;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_6
    const/16 v10, 0x1a

    if-ne v9, v10, :cond_8

    if-nez v4, :cond_7

    .line 66
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v8

    goto :goto_0

    .line 67
    :cond_7
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/eb1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/t81;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 68
    :cond_8
    :try_start_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->e()Z

    move-result v9

    if-nez v9, :cond_5

    .line 69
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb1;->getTag()I

    move-result v5

    const/16 v9, 0xc

    if-ne v5, v9, :cond_c

    if-eqz v8, :cond_b

    if-nez v4, :cond_a

    .line 70
    invoke-virtual {v0, v2, v6, v8}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/t71;)V

    goto :goto_1

    .line 71
    :cond_a
    invoke-virtual {v1, v8, v4, p3, v3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/t71;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/t81;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 72
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_c
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbab()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p2

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p2

    .line 74
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/tc1;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t81;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/v81;

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/v81;->L()Lcom/google/android/gms/internal/ads/qc1;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/qc1;->zzhqg:Lcom/google/android/gms/internal/ads/qc1;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/v81;->M()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/v81;->N()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/r91;

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/v81;->zzab()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/r91;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r91;->a()Lcom/google/android/gms/internal/ads/p91;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t91;->a()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    .line 18
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/v81;->zzab()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/tc1;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vb1;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tc1;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/s71;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/s71;",
            ")V"
        }
    .end annotation

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/e91;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/yb1;->d()Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/yb1;->e()Lcom/google/android/gms/internal/ads/yb1;

    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e91;->zzhkd:Lcom/google/android/gms/internal/ads/yb1;

    .line 27
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/e91$b;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e91$b;->k()Lcom/google/android/gms/internal/ads/t81;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    .line 29
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 30
    iget v2, p5, Lcom/google/android/gms/internal/ads/s71;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 31
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/s71;->d:Lcom/google/android/gms/internal/ads/q81;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    ushr-int/lit8 v5, v2, 0x3

    .line 32
    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/oa1;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/e91$e;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/yb1;Lcom/google/android/gms/internal/ads/s71;)I

    move-result p3

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    .line 35
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 36
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/s71;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    .line 37
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 38
    iget v5, p5, Lcom/google/android/gms/internal/ads/s71;->a:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    .line 39
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/p71;->e([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 40
    iget-object v2, p5, Lcom/google/android/gms/internal/ads/s71;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/t71;

    goto :goto_1

    .line 41
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    .line 42
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 43
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/ads/p71;->a([BILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    .line 44
    iget p3, p5, Lcom/google/android/gms/internal/ads/s71;->a:I

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    iget-object v5, p5, Lcom/google/android/gms/internal/ads/s71;->d:Lcom/google/android/gms/internal/ads/q81;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ta1;->a:Lcom/google/android/gms/internal/ads/oa1;

    .line 46
    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/ads/s81;->a(Lcom/google/android/gms/internal/ads/q81;Lcom/google/android/gms/internal/ads/oa1;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/e91$e;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    .line 47
    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/ads/p71;->a(I[BIILcom/google/android/gms/internal/ads/s71;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 48
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/ads/yb1;->a(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 49
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ta1;->c:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/t81;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(Lcom/google/android/gms/internal/ads/vb1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ta1;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fb1;->a(Lcom/google/android/gms/internal/ads/s81;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ta1;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t81;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t81;->c()Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s81;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta1;->b:Lcom/google/android/gms/internal/ads/vb1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vb1;->f(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ta1;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta1;->d:Lcom/google/android/gms/internal/ads/s81;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/s81;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/t81;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t81;->f()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
