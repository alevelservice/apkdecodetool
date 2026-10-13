.class final Lcom/google/android/gms/internal/vision/i6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/r6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/vision/d6;

.field private final b:Lcom/google/android/gms/internal/vision/i7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/vision/f4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/d6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/d6;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/d6;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/i6;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/i6;->a:Lcom/google/android/gms/internal/vision/d6;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/d6;)Lcom/google/android/gms/internal/vision/i6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/i7<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/f4<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/d6;",
            ")",
            "Lcom/google/android/gms/internal/vision/i6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/i6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/i6;-><init>(Lcom/google/android/gms/internal/vision/i7;Lcom/google/android/gms/internal/vision/f4;Lcom/google/android/gms/internal/vision/d6;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    .line 59
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/i7;->d(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 61
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/i6;->c:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->f()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->a:Lcom/google/android/gms/internal/vision/d6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/d6;->b()Lcom/google/android/gms/internal/vision/c6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/c6;->u()Lcom/google/android/gms/internal/vision/d6;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/e8;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i4;->d()Ljava/util/Iterator;

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

    check-cast v2, Lcom/google/android/gms/internal/vision/k4;

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k4;->F()Lcom/google/android/gms/internal/vision/c8;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/vision/c8;->zzacp:Lcom/google/android/gms/internal/vision/c8;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k4;->A()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k4;->C()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    instance-of v3, v1, Lcom/google/android/gms/internal/vision/g5;

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k4;->zzag()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/vision/g5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/g5;->a()Lcom/google/android/gms/internal/vision/e5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/i5;->a()Lcom/google/android/gms/internal/vision/j3;

    move-result-object v1

    .line 18
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k4;->zzag()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/i7;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/g3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/g3;",
            ")V"
        }
    .end annotation

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    iget-object v1, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->e()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 27
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/s4$d;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/s4$d;->m()Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 29
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 30
    iget p3, p5, Lcom/google/android/gms/internal/vision/g3;->a:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    iget-object v3, p5, Lcom/google/android/gms/internal/vision/g3;->d:Lcom/google/android/gms/internal/vision/d4;

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/i6;->a:Lcom/google/android/gms/internal/vision/d6;

    ushr-int/lit8 v6, p3, 0x3

    .line 32
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/d4;Lcom/google/android/gms/internal/vision/d6;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/vision/s4$f;

    if-eqz v8, :cond_1

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object p3

    .line 34
    iget-object v2, v8, Lcom/google/android/gms/internal/vision/s4$f;->a:Lcom/google/android/gms/internal/vision/d6;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 36
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object p3

    .line 37
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result p3

    .line 38
    iget-object v2, v8, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    iget-object v3, p5, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/i4;->a(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/l7;Lcom/google/android/gms/internal/vision/g3;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 41
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 42
    iget v6, p5, Lcom/google/android/gms/internal/vision/g3;->a:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v6

    .line 44
    iget-object v7, v2, Lcom/google/android/gms/internal/vision/s4$f;->a:Lcom/google/android/gms/internal/vision/d6;

    .line 45
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 46
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v6

    .line 47
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/vision/e3;->a(Lcom/google/android/gms/internal/vision/r6;[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 48
    iget-object v6, v2, Lcom/google/android/gms/internal/vision/s4$f;->b:Lcom/google/android/gms/internal/vision/s4$c;

    iget-object v7, p5, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/vision/i4;->a(Lcom/google/android/gms/internal/vision/k4;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 49
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/vision/e3;->e([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 50
    iget-object v3, p5, Lcom/google/android/gms/internal/vision/g3;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/vision/j3;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 51
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/vision/e3;->a([BILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    .line 52
    iget p3, p5, Lcom/google/android/gms/internal/vision/g3;->a:I

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    iget-object v6, p5, Lcom/google/android/gms/internal/vision/g3;->d:Lcom/google/android/gms/internal/vision/d4;

    iget-object v7, p0, Lcom/google/android/gms/internal/vision/i6;->a:Lcom/google/android/gms/internal/vision/d6;

    .line 54
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/vision/f4;->a(Lcom/google/android/gms/internal/vision/d4;Lcom/google/android/gms/internal/vision/d6;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/s4$f;

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 55
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/vision/e3;->a(I[BIILcom/google/android/gms/internal/vision/g3;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 56
    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/vision/l7;->a(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 57
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgs()Lcom/google/android/gms/internal/vision/d5;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/i6;->c:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/i4;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/s6;->a(Lcom/google/android/gms/internal/vision/i7;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/i6;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/s6;->a(Lcom/google/android/gms/internal/vision/f4;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->c()Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/i6;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/f4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->b:Lcom/google/android/gms/internal/vision/i7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/i7;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i6;->d:Lcom/google/android/gms/internal/vision/f4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/f4;->c(Ljava/lang/Object;)V

    return-void
.end method
