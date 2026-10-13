.class public final Lcom/google/android/gms/internal/clearcut/j5;
.super Lcom/google/android/gms/internal/clearcut/p4;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/p4<",
        "Lcom/google/android/gms/internal/clearcut/j5;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public g:J

.field public h:J

.field private i:Ljava/lang/String;

.field public j:I

.field private k:Ljava/lang/String;

.field private l:[Lcom/google/android/gms/internal/clearcut/k5;

.field private m:[B

.field private n:Lcom/google/android/gms/internal/clearcut/x4;

.field public o:[B

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/google/android/gms/internal/clearcut/g5;

.field private s:Ljava/lang/String;

.field public t:J

.field private u:Lcom/google/android/gms/internal/clearcut/h5;

.field public v:[B

.field private w:Ljava/lang/String;

.field private x:[I

.field private y:Lcom/google/android/gms/internal/clearcut/y4;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/p4;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/k5;->e()[Lcom/google/android/gms/internal/clearcut/k5;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/w4;->a:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/u4;->e:I

    return-void
.end method

.method private final e()Lcom/google/android/gms/internal/clearcut/j5;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/p4;->d()Lcom/google/android/gms/internal/clearcut/p4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/j5;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/k5;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/k5;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/clearcut/k5;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/g5;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/g5;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/h5;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/h5;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    if-eqz v1, :cond_6

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/n4;)V
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/clearcut/n4;->a(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILcom/google/android/gms/internal/clearcut/u4;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    sget-object v5, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    sget-object v5, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    if-eqz v0, :cond_6

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILcom/google/android/gms/internal/clearcut/u4;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    if-eqz v0, :cond_8

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILcom/google/android/gms/internal/clearcut/i2;)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    if-eqz v0, :cond_9

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/internal/clearcut/n4;->b(II)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xd

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_b
    iget-wide v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    const-wide/32 v7, 0x2bf20

    cmp-long v0, v5, v7

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/n4;->a(II)V

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/n4;->b(J)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/n4;->a(J)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    if-eqz v0, :cond_d

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILcom/google/android/gms/internal/clearcut/u4;)V

    :cond_d
    iget-wide v5, p0, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v5, v6}, Lcom/google/android/gms/internal/clearcut/n4;->a(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    sget-object v2, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/n4;->a(I[B)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    array-length v2, v0

    if-ge v4, v2, :cond_10

    const/16 v2, 0x14

    aget v0, v0, v4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/n4;->b(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    if-eqz v0, :cond_11

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILcom/google/android/gms/internal/clearcut/i2;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    if-eqz v0, :cond_13

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/n4;->a(IZ)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/n4;->a(ILjava/lang/String;)V

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/p4;->a(Lcom/google/android/gms/internal/clearcut/n4;)V

    return-void
.end method

.method protected final b()I
    .locals 12

    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/p4;->b()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/clearcut/n4;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v6, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    array-length v9, v8

    if-ge v0, v9, :cond_3

    aget-object v8, v8, v0

    if-eqz v8, :cond_2

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILcom/google/android/gms/internal/clearcut/u4;)I

    move-result v8

    add-int/2addr v1, v8

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    sget-object v8, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    sget-object v8, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    if-eqz v1, :cond_7

    const/4 v8, 0x7

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILcom/google/android/gms/internal/clearcut/u4;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    if-eqz v1, :cond_9

    const/16 v8, 0x9

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/clearcut/k0;->c(ILcom/google/android/gms/internal/clearcut/i2;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    if-eqz v1, :cond_a

    const/16 v8, 0xb

    invoke-static {v8}, Lcom/google/android/gms/internal/clearcut/n4;->c(I)I

    move-result v8

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/n4;->d(I)I

    move-result v1

    add-int/2addr v8, v1

    add-int/2addr v0, v8

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xd

    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xe

    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-wide v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    const-wide/32 v10, 0x2bf20

    cmp-long v1, v8, v10

    if-eqz v1, :cond_d

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/n4;->c(I)I

    move-result v1

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/n4;->b(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/n4;->c(J)I

    move-result v8

    add-int/2addr v1, v8

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    if-eqz v1, :cond_e

    const/16 v8, 0x10

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILcom/google/android/gms/internal/clearcut/u4;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v8, p0, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    cmp-long v1, v8, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x11

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/clearcut/n4;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    sget-object v3, Lcom/google/android/gms/internal/clearcut/w4;->e:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/n4;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    if-eqz v1, :cond_12

    array-length v1, v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    array-length v4, v3

    if-ge v7, v4, :cond_11

    aget v3, v3, v7

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/n4;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_11
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    if-eqz v1, :cond_13

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/k0;->c(ILcom/google/android/gms/internal/clearcut/i2;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/n4;->c(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/n4;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/clearcut/u4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/j5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/j5;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/j5;->e()Lcom/google/android/gms/internal/clearcut/j5;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/clearcut/p4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/j5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/j5;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/j5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/j5;

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/t4;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    if-eqz v1, :cond_c

    return v2

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/d1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    if-eqz v1, :cond_11

    return v2

    :cond_10
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    if-eqz v1, :cond_13

    return v2

    :cond_12
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/g5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    if-eqz v1, :cond_15

    return v2

    :cond_14
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    if-nez v1, :cond_17

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    if-eqz v1, :cond_18

    return v2

    :cond_17
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/h5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    if-eqz v1, :cond_1b

    return v2

    :cond_1a
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/t4;->a([I[I)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    if-nez v1, :cond_1d

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    if-eqz v1, :cond_1e

    return v2

    :cond_1d
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/d1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/r4;->a()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_0

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/r4;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/r4;->a()Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_1

    :cond_22
    return v2

    :cond_23
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/clearcut/j5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/j5;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x4d5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->l:[Lcom/google/android/gms/internal/clearcut/k5;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/t4;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->m:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->n:Lcom/google/android/gms/internal/clearcut/x4;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/d1;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->p:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->q:Ljava/lang/String;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->r:Lcom/google/android/gms/internal/clearcut/g5;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/g5;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->s:Ljava/lang/String;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_6
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/j5;->t:J

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->u:Lcom/google/android/gms/internal/clearcut/h5;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/h5;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->w:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->x:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/t4;->a([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->y:Lcom/google/android/gms/internal/clearcut/y4;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/d1;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/clearcut/j5;->z:Z

    if-eqz v3, :cond_a

    const/16 v1, 0x4cf

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/r4;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/p4;->f:Lcom/google/android/gms/internal/clearcut/r4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/r4;->hashCode()I

    move-result v2

    :cond_c
    :goto_a
    add-int/2addr v0, v2

    return v0
.end method
