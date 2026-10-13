.class public final Lcom/google/android/gms/internal/ads/tm1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bk1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/un1;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/qm1;

.field private final d:Lcom/google/android/gms/internal/ads/um1;

.field private final e:Lcom/google/android/gms/internal/ads/vo1;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Lcom/google/android/gms/internal/ads/wm1;

.field private h:Lcom/google/android/gms/internal/ads/wm1;

.field private i:Lcom/google/android/gms/internal/ads/zzgq;

.field private j:J

.field private k:I

.field private l:Lcom/google/android/gms/internal/ads/vm1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/un1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/un1;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/qm1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/qm1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/um1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/um1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/vo1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/wm1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/wm1;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    return-void
.end method

.method private final a(I)I
    .locals 6

    .line 98
    iget v0, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/wm1;->c:Z

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wm1;->e:Lcom/google/android/gms/internal/ads/wm1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/un1;->a()Lcom/google/android/gms/internal/ads/vn1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/wm1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/wm1;->b:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/wm1;-><init>(JI)V

    .line 103
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    .line 104
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/wm1;->e:Lcom/google/android/gms/internal/ads/wm1;

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/wm1;->c:Z

    .line 106
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final a(J)V
    .locals 4

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/wm1;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/un1;->a(Lcom/google/android/gms/internal/ads/vn1;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm1;->a()Lcom/google/android/gms/internal/ads/wm1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(J[BI)V
    .locals 6

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/tm1;->a(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/wm1;->a:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    .line 58
    iget v3, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    .line 60
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/vn1;->a:[B

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/vn1;->a(I)I

    move-result v2

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/wm1;->b:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/un1;->a(Lcom/google/android/gms/internal/ads/vn1;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wm1;->a()Lcom/google/android/gms/internal/ads/wm1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/wm1;->c:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/wm1;->c:Z

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/wm1;->a:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/wm1;->a:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    div-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 5
    new-array v1, v2, [Lcom/google/android/gms/internal/ads/vn1;

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    aput-object v3, v1, v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm1;->a()Lcom/google/android/gms/internal/ads/wm1;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/un1;->a([Lcom/google/android/gms/internal/ads/vn1;)V

    .line 10
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/wm1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/wm1;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/tm1;->j:J

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/un1;->zzm()V

    return-void
.end method

.method private final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;ZZJ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->i:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/qm1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;ZZLcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/um1;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_10

    const/4 v2, -0x4

    if-eq v1, v2, :cond_1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    return v2

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/bj1;->c()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/hj1;->d:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_2

    const/high16 v1, -0x80000000

    .line 13
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/bj1;->b(I)V

    .line 14
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hj1;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    .line 16
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/um1;->b:J

    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/vo1;->a(I)V

    .line 18
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/tm1;->a(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 19
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 20
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/ej1;->a:[B

    if-nez v11, :cond_4

    const/16 v11, 0x10

    new-array v11, v11, [B

    .line 21
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/ej1;->a:[B

    .line 22
    :cond_4
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/ej1;->a:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/tm1;->a(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_5

    .line 23
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/vo1;->a(I)V

    .line 24
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/tm1;->a(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 25
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vo1;->h()I

    move-result v6

    move v11, v6

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    .line 26
    :goto_1
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ej1;->d:[I

    if-eqz v5, :cond_6

    .line 27
    array-length v6, v5

    if-ge v6, v11, :cond_7

    .line 28
    :cond_6
    new-array v5, v11, [I

    :cond_7
    move-object v12, v5

    .line 29
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ej1;->e:[I

    if-eqz v5, :cond_8

    .line 30
    array-length v6, v5

    if-ge v6, v11, :cond_9

    .line 31
    :cond_8
    new-array v5, v11, [I

    :cond_9
    move-object v13, v5

    if-eqz v9, :cond_a

    mul-int/lit8 v5, v11, 0x6

    .line 32
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/vo1;->a(I)V

    .line 33
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/tm1;->a(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 34
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    :goto_2
    if-ge v7, v11, :cond_b

    .line 35
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vo1;->h()I

    move-result v5

    aput v5, v12, v7

    .line 36
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tm1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vo1;->o()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 37
    :cond_a
    aput v7, v12, v7

    .line 38
    iget v5, v1, Lcom/google/android/gms/internal/ads/um1;->a:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/um1;->b:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    .line 39
    :cond_b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/um1;->d:Lcom/google/android/gms/internal/ads/ak1;

    .line 40
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/ak1;->b:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/ej1;->a:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/ak1;->a:I

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/ej1;->a(I[I[I[B[BI)V

    .line 41
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/um1;->b:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    .line 42
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/um1;->b:J

    .line 43
    iget v3, v1, Lcom/google/android/gms/internal/ads/um1;->a:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/um1;->a:I

    .line 44
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/um1;->a:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/hj1;->d(I)V

    .line 45
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/um1;->b:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/um1;->a:I

    .line 46
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/tm1;->a(J)V

    :cond_d
    :goto_3
    if-lez v1, :cond_e

    .line 47
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/wm1;->a:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    .line 48
    iget v6, v0, Lcom/google/android/gms/internal/ads/tm1;->b:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 49
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    .line 50
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/vn1;->a:[B

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/vn1;->a(I)I

    move-result v7

    invoke-virtual {v5, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v1, v6

    .line 51
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/wm1;->b:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_d

    .line 52
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->a:Lcom/google/android/gms/internal/ads/un1;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/un1;->a(Lcom/google/android/gms/internal/ads/vn1;)V

    .line 53
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/wm1;->a()Lcom/google/android/gms/internal/ads/wm1;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/tm1;->g:Lcom/google/android/gms/internal/ads/wm1;

    goto :goto_3

    .line 54
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->d:Lcom/google/android/gms/internal/ads/um1;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/um1;->c:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/tm1;->a(J)V

    :cond_f
    return v2

    :cond_10
    move-object/from16 v1, p1

    .line 55
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/tm1;->i:Lcom/google/android/gms/internal/ads/zzgq;

    return v2
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sj1;IZ)I
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->h()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_1

    .line 72
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/sj1;->b(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 74
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/tm1;->a(I)I

    move-result p2

    .line 75
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    .line 76
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/vn1;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 77
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/vn1;->a(I)I

    move-result p3

    .line 78
    invoke-interface {p1, v1, p3, p2}, Lcom/google/android/gms/internal/ads/sj1;->a([BII)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 79
    iget p2, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 80
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/tm1;->j:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/tm1;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->i()V

    return p1

    .line 82
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->i()V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->g()V

    :cond_0
    return-void
.end method

.method public final a(JIIILcom/google/android/gms/internal/ads/ak1;)V
    .locals 10

    move-object v1, p0

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qm1;->a(J)V

    return-void

    :cond_0
    move-wide v3, p1

    .line 94
    :try_start_0
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/tm1;->j:J

    move v0, p4

    int-to-long v7, v0

    sub-long v7, v5, v7

    .line 95
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    move-wide v3, p1

    move v5, p3

    move-wide v6, v7

    move v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/qm1;->a(JIJILcom/google/android/gms/internal/ads/ak1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->i()V

    return-void

    :catchall_0
    move-exception v0

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->i()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vm1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->l:Lcom/google/android/gms/internal/ads/vm1;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vo1;I)V
    .locals 5

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;->d(I)V

    return-void

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 86
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/tm1;->a(I)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->h:Lcom/google/android/gms/internal/ads/wm1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/wm1;->d:Lcom/google/android/gms/internal/ads/vn1;

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vn1;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/vn1;->a(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/vo1;->a([BII)V

    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/tm1;->k:I

    .line 90
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/tm1;->j:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/tm1;->j:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->i()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qm1;->a(Lcom/google/android/gms/internal/ads/zzgq;)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tm1;->l:Lcom/google/android/gms/internal/ads/vm1;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/vm1;->a(Lcom/google/android/gms/internal/ads/zzgq;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tm1;->g()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->c()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tm1;->i:Lcom/google/android/gms/internal/ads/zzgq;

    :cond_1
    return-void
.end method

.method public final a(JZ)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qm1;->a(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/tm1;->a(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->d()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->e()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzgq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->f()Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tm1;->c:Lcom/google/android/gms/internal/ads/qm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qm1;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/tm1;->a(J)V

    :cond_0
    return-void
.end method
