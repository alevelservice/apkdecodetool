.class final Lcom/google/android/gms/internal/ads/k81;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eb1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/g81;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/g81;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    const-string v0, "input"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/g81;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/g81;->c:Lcom/google/android/gms/internal/ads/k81;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/g81;)Lcom/google/android/gms/internal/ads/k81;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g81;->c:Lcom/google/android/gms/internal/ads/k81;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/k81;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/k81;-><init>(Lcom/google/android/gms/internal/ads/g81;)V

    return-object v0
.end method

.method private final a(I)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1
.end method

.method private final a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/v91;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/v91;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k81;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/v91;->a(Lcom/google/android/gms/internal/ads/t71;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 39
    iget p2, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, p2, :cond_0

    .line 40
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k81;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k81;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 44
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_2

    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 46
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static b(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p0

    throw p0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    iget v2, v1, Lcom/google/android/gms/internal/ads/g81;->a:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/g81;->b:I

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/g81;->c(I)I

    move-result v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/db1;->a()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    iget v3, v2, Lcom/google/android/gms/internal/ads/g81;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/g81;->a:I

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/db1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;Lcom/google/android/gms/internal/ads/q81;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/db1;->e(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/g81;->a(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    iget p2, p1, Lcom/google/android/gms/internal/ads/g81;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/g81;->a:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/g81;->d(I)V

    return-object v1

    .line 11
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/o91;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1
.end method

.method private static c(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p0

    throw p0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")TT;"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/db1;->a()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/db1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eb1;Lcom/google/android/gms/internal/ads/q81;)V

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/db1;->e(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/k81;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    return-object v1

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbad()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    throw p1
.end method

.method private final d(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/k81;->c(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ca1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ca1;

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 21
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 27
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")V"
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 48
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/k81;->d(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 51
    iput v1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/k81;->d(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final b(Ljava/util/List;Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")V"
        }
    .end annotation

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 30
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/k81;->c(Lcom/google/android/gms/internal/ads/db1;Lcom/google/android/gms/internal/ads/q81;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 33
    iput v1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    :cond_2
    :goto_0
    return-void

    .line 34
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/r71;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/r71;

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/r71;->a(Z)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/r71;->a(Z)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 27
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 32
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 33
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 36
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 38
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_0

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 21
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int v3, v1, p1

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 27
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_6

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 33
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/z81;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/z81;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->b()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z81;->a(F)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_0

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int v3, v1, p1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->b()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z81;->a(F)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 17
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_6

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 23
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 27
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/g81;->b(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/t71;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k81;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->i()I

    move-result v0

    return v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/p81;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/p81;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->a()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/p81;->a(D)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->a()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p81;->a(D)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    return v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/k81;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->j()Z

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->o()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/k81;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ca1;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ca1;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final k()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ca1;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ca1;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final l()Lcom/google/android/gms/internal/ads/t71;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->l()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->q()I

    move-result v0

    return v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ca1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ca1;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->b(I)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final n()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_0

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int v3, v1, p1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 17
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_6

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 23
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k81;->c(I)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 27
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ca1;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ca1;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca1;->a(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final p()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final q()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/g91;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/g91;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/g91;->h(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->t()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/k81;->d(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzbac()Lcom/google/android/gms/internal/ads/n91;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    return-void
.end method

.method public final r()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->n()I

    move-result v0

    return v0
.end method

.method public final readDouble()D
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->b()F

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    if-eqz v0, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->d:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/k81;->b:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/k81;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final t()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k81;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k81;->a:Lcom/google/android/gms/internal/ads/g81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g81;->g()I

    move-result v0

    return v0
.end method
