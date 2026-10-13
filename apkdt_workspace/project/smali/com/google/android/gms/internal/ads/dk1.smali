.class final Lcom/google/android/gms/internal/ads/dk1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ek1;


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/nk1;

.field private d:Lcom/google/android/gms/internal/ads/hk1;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/nk1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nk1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/sj1;I)J
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk1;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/hk1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sj1;)Z
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fk1;->a(Lcom/google/android/gms/internal/ads/fk1;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fk1;->b(Lcom/google/android/gms/internal/ads/fk1;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/hk1;->e(I)V

    return v1

    .line 9
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    const/4 v3, 0x4

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/nk1;->a(Lcom/google/android/gms/internal/ads/sj1;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sj1;->b()V

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/sj1;->b([BII)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk1;->a(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    if-gt v0, v3, :cond_2

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dk1;->a:[B

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/nk1;->a([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/hk1;->d(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/sj1;->a(I)V

    int-to-long v4, v5

    goto :goto_3

    .line 17
    :cond_2
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/sj1;->a(I)V

    goto :goto_2

    :cond_3
    :goto_3
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    return v2

    :cond_4
    long-to-int v0, v4

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    .line 20
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_6

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/google/android/gms/internal/ads/nk1;->a(Lcom/google/android/gms/internal/ads/sj1;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    .line 22
    iput v4, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/hk1;->c(I)I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_11

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_b

    const/4 v4, 0x5

    if-ne v0, v4, :cond_a

    .line 24
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    cmp-long v0, v7, v5

    if-nez v0, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    long-to-int v6, v5

    .line 27
    invoke-direct {p0, p1, v6}, Lcom/google/android/gms/internal/ads/dk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)J

    move-result-wide v7

    if-ne v6, v3, :cond_9

    long-to-int p1, v7

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_5

    .line 29
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 30
    :goto_5
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/hk1;->a(ID)V

    .line 31
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    return v1

    .line 32
    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/google/android/gms/internal/ads/hk1;->a(IILcom/google/android/gms/internal/ads/sj1;)V

    .line 34
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    return v1

    .line 35
    :cond_c
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    long-to-int v4, v3

    if-nez v4, :cond_d

    const-string p1, ""

    goto :goto_6

    .line 37
    :cond_d
    new-array v3, v4, [B

    .line 38
    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 39
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 40
    :goto_6
    invoke-interface {v0, v5, p1}, Lcom/google/android/gms/internal/ads/hk1;->a(ILjava/lang/String;)V

    .line 41
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    return v1

    .line 42
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/dk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/hk1;->a(IJ)V

    .line 45
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    return v1

    .line 46
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid integer size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v5

    .line 48
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    add-long/2addr v3, v5

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dk1;->b:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/fk1;

    iget v7, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/fk1;-><init>(IJLcom/google/android/gms/internal/ads/ck1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dk1;->d:Lcom/google/android/gms/internal/ads/hk1;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dk1;->f:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/hk1;->a(IJJ)V

    .line 51
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    return v1

    .line 52
    :cond_12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dk1;->g:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/sj1;->a(I)V

    .line 53
    iput v2, p0, Lcom/google/android/gms/internal/ads/dk1;->e:I

    goto/16 :goto_1
.end method
