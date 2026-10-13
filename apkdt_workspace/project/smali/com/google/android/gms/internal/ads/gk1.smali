.class public final Lcom/google/android/gms/internal/ads/gk1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pj1;


# static fields
.field private static final Z:[B

.field private static final a0:[B

.field private static final b0:Ljava/util/UUID;


# instance fields
.field private A:J

.field private B:Lcom/google/android/gms/internal/ads/oo1;

.field private C:Lcom/google/android/gms/internal/ads/oo1;

.field private D:Z

.field private E:I

.field private F:J

.field private G:J

.field private H:I

.field private I:I

.field private J:[I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:B

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:Lcom/google/android/gms/internal/ads/rj1;

.field private final a:Lcom/google/android/gms/internal/ads/ek1;

.field private final b:Lcom/google/android/gms/internal/ads/nk1;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/lk1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/google/android/gms/internal/ads/vo1;

.field private final f:Lcom/google/android/gms/internal/ads/vo1;

.field private final g:Lcom/google/android/gms/internal/ads/vo1;

.field private final h:Lcom/google/android/gms/internal/ads/vo1;

.field private final i:Lcom/google/android/gms/internal/ads/vo1;

.field private final j:Lcom/google/android/gms/internal/ads/vo1;

.field private final k:Lcom/google/android/gms/internal/ads/vo1;

.field private final l:Lcom/google/android/gms/internal/ads/vo1;

.field private final m:Lcom/google/android/gms/internal/ads/vo1;

.field private n:Ljava/nio/ByteBuffer;

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:Lcom/google/android/gms/internal/ads/lk1;

.field private u:Z

.field private v:I

.field private w:J

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jk1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jk1;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/gk1;->Z:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/gk1;->a0:[B

    .line 4
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/gk1;->b0:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gk1;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/dk1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dk1;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/gk1;-><init>(Lcom/google/android/gms/internal/ads/ek1;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ek1;I)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->q:J

    .line 6
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->r:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->y:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->z:J

    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->A:J

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->a:Lcom/google/android/gms/internal/ads/ek1;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->a:Lcom/google/android/gms/internal/ads/ek1;

    new-instance p2, Lcom/google/android/gms/internal/ads/ik1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/ik1;-><init>(Lcom/google/android/gms/internal/ads/gk1;Lcom/google/android/gms/internal/ads/jk1;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ek1;->a(Lcom/google/android/gms/internal/ads/hk1;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->d:Z

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/nk1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/nk1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/vo1;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->h:Lcom/google/android/gms/internal/ads/vo1;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->i:Lcom/google/android/gms/internal/ads/vo1;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    sget-object v0, Lcom/google/android/gms/internal/ads/to1;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/vo1;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->e:Lcom/google/android/gms/internal/ads/vo1;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->f:Lcom/google/android/gms/internal/ads/vo1;

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->l:Lcom/google/android/gms/internal/ads/vo1;

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/vo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->m:Lcom/google/android/gms/internal/ads/vo1;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/bk1;I)I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->j()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 360
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 361
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/sj1;IZ)I

    move-result p1

    .line 362
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 363
    iget p2, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    return p1
.end method

.method private final a(J)J
    .locals 6

    .line 364
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->q:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 365
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cp1;->a(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 366
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/lk1;J)V
    .locals 11

    .line 247
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->G:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 249
    sget-object v2, Lcom/google/android/gms/internal/ads/gk1;->a0:[B

    goto :goto_0

    :cond_0
    const-wide v4, 0xd693a400L

    .line 250
    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    .line 251
    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    .line 252
    div-long v9, v2, v9

    long-to-int v4, v9

    const v7, 0xf4240

    mul-int v7, v7, v4

    int-to-long v9, v7

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    .line 253
    div-long/2addr v2, v9

    long-to-int v3, v2

    .line 254
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 256
    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cp1;->c(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    const/16 v3, 0x13

    const/16 v4, 0xc

    .line 257
    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk1;->O:Lcom/google/android/gms/internal/ads/bk1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 259
    iget v0, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    .line 260
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/lk1;->O:Lcom/google/android/gms/internal/ads/bk1;

    iget v5, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/lk1;->g:Lcom/google/android/gms/internal/ads/ak1;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/bk1;->a(JIIILcom/google/android/gms/internal/ads/ak1;)V

    .line 261
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/gk1;->W:Z

    .line 262
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gk1;->b()V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/sj1;I)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->a()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    .line 266
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v2

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vo1;->a([BI)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 269
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;->b(I)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/lk1;I)V
    .locals 9

    .line 270
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    sget-object p2, Lcom/google/android/gms/internal/ads/gk1;->Z:[B

    array-length p2, p2

    add-int/2addr p2, p3

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->a()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    sget-object v2, Lcom/google/android/gms/internal/ads/gk1;->Z:[B

    add-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    sget-object v2, Lcom/google/android/gms/internal/ads/gk1;->Z:[B

    array-length v2, v2

    invoke-interface {p1, v0, v2, p3}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 275
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 276
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->k:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vo1;->b(I)V

    return-void

    .line 277
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/lk1;->O:Lcom/google/android/gms/internal/ads/bk1;

    .line 278
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/gk1;->O:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_f

    .line 279
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/lk1;->e:Z

    if-eqz v2, :cond_d

    .line 280
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    .line 281
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/gk1;->P:Z

    const/16 v5, 0x80

    if-nez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 283
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 284
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    aget-byte v6, v2, v1

    and-int/2addr v6, v5

    if-eq v6, v5, :cond_2

    .line 285
    aget-byte v2, v2, v1

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/gk1;->S:B

    .line 286
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/gk1;->P:Z

    goto :goto_0

    .line 287
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_3
    :goto_0
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/gk1;->S:B

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_e

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 289
    :goto_1
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    .line 290
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/gk1;->Q:Z

    if-nez v6, :cond_6

    .line 291
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->l:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    const/16 v7, 0x8

    invoke-interface {p1, v6, v1, v7}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 292
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 293
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/gk1;->Q:Z

    .line 294
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    .line 295
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 296
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 297
    iget v5, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    .line 298
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->l:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 299
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->l:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 300
    iget v5, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    :cond_6
    if-eqz v2, :cond_e

    .line 301
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/gk1;->R:Z

    if-nez v2, :cond_7

    .line 302
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 303
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 304
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 305
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->g()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/gk1;->T:I

    .line 306
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/gk1;->R:Z

    .line 307
    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->T:I

    shl-int/2addr v2, v3

    .line 308
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vo1;->a(I)V

    .line 309
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-interface {p1, v5, v1, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 310
    iget v5, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 311
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->T:I

    div-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-short v2, v2

    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    .line 312
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_8

    .line 313
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_9

    .line 314
    :cond_8
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    .line 315
    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 316
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 317
    :goto_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/gk1;->T:I

    if-ge v2, v7, :cond_b

    .line 318
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vo1;->o()I

    move-result v7

    .line 319
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_a

    .line 320
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    int-to-short v6, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 321
    :cond_a
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_3

    .line 322
    :cond_b
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    .line 323
    rem-int/2addr v7, v3

    if-ne v7, v4, :cond_c

    .line 324
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 325
    :cond_c
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 326
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 327
    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->m:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/vo1;->a([BI)V

    .line 328
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->m:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 329
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    goto :goto_6

    .line 330
    :cond_d
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/lk1;->f:[B

    if-eqz v2, :cond_e

    .line 331
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    array-length v6, v2

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/internal/ads/vo1;->a([BI)V

    .line 332
    :cond_e
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/gk1;->O:Z

    .line 333
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vo1;->c()I

    move-result v2

    add-int/2addr p3, v2

    .line 334
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-nez v2, :cond_11

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    .line 335
    :cond_10
    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    if-ge v2, p3, :cond_14

    sub-int v2, p3, v2

    .line 336
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/bk1;I)I

    goto :goto_7

    .line 337
    :cond_11
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->f:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    .line 338
    aput-byte v1, v2, v1

    .line 339
    aput-byte v1, v2, v4

    .line 340
    aput-byte v1, v2, v3

    .line 341
    iget v3, p2, Lcom/google/android/gms/internal/ads/lk1;->P:I

    rsub-int/lit8 v4, v3, 0x4

    .line 342
    :goto_9
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    if-ge v6, p3, :cond_14

    .line 343
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->U:I

    if-nez v6, :cond_13

    .line 344
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/vo1;->j()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v3, v6

    .line 345
    invoke-interface {p1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    if-lez v6, :cond_12

    .line 346
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v7, v2, v4, v6}, Lcom/google/android/gms/internal/ads/vo1;->a([BII)V

    .line 347
    :cond_12
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 348
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->f:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 349
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->f:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/vo1;->o()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->U:I

    .line 350
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 351
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gk1;->e:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 352
    iget v6, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    goto :goto_9

    .line 353
    :cond_13
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/bk1;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/gk1;->U:I

    goto :goto_9

    .line 354
    :cond_14
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 355
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->h:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 356
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->h:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/bk1;->a(Lcom/google/android/gms/internal/ads/vo1;I)V

    .line 357
    iget p1, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    :cond_15
    return-void
.end method

.method private static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 367
    new-array p0, p1, [I

    return-object p0

    .line 368
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 369
    :cond_1
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static b(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    :sswitch_3
    const/4 p0, 0x3

    return p0

    :sswitch_4
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method private final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/gk1;->N:I

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/gk1;->V:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/gk1;->U:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->O:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->P:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->R:Z

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/gk1;->T:I

    .line 8
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/gk1;->S:B

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->Q:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->j:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vo1;->i()V

    return-void
.end method

.method static synthetic c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/gk1;->b0:Ljava/util/UUID;

    return-object v0
.end method

.method static c(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p0, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/wj1;)I
    .locals 8

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->W:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 9
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/gk1;->W:Z

    if-nez v3, :cond_3

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gk1;->a:Lcom/google/android/gms/internal/ads/ek1;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/ek1;->a(Lcom/google/android/gms/internal/ads/sj1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sj1;->c()J

    move-result-wide v3

    .line 12
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/gk1;->x:Z

    if-eqz v5, :cond_1

    .line 13
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/gk1;->z:J

    .line 14
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/gk1;->y:J

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gk1;->x:Z

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/gk1;->u:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/gk1;->z:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 17
    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/wj1;->a:J

    .line 18
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/gk1;->z:J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-eqz v2, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method final a(I)V
    .locals 13

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const v6, 0x1c53bb6b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_b

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_9

    const v0, 0x1549a966

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_7

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_5

    if-eq p1, v6, :cond_0

    goto/16 :goto_4

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->u:Z

    if-nez p1, :cond_e

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->Y:Lcom/google/android/gms/internal/ads/rj1;

    .line 39
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oo1;->a()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    if-eqz v0, :cond_4

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oo1;->a()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oo1;->a()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oo1;->a()I

    move-result v0

    .line 43
    new-array v4, v0, [I

    .line 44
    new-array v5, v0, [J

    .line 45
    new-array v6, v0, [J

    .line 46
    new-array v7, v0, [J

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_2

    .line 47
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/oo1;->a(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 48
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/oo1;->a(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v8, v0, -0x1

    if-ge v1, v8, :cond_3

    add-int/lit8 v8, v1, 0x1

    .line 49
    aget-wide v9, v5, v8

    aget-wide v11, v5, v1

    sub-long/2addr v9, v11

    long-to-int v10, v9

    aput v10, v4, v1

    .line 50
    aget-wide v9, v7, v8

    aget-wide v11, v7, v1

    sub-long/2addr v9, v11

    aput-wide v9, v6, v1

    move v1, v8

    goto :goto_1

    .line 51
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/gk1;->o:J

    add-long/2addr v0, v9

    aget-wide v9, v5, v8

    sub-long/2addr v0, v9

    long-to-int v1, v0

    aput v1, v4, v8

    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    aget-wide v9, v7, v8

    sub-long/2addr v0, v9

    aput-wide v0, v6, v8

    .line 53
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    .line 54
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/nj1;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/nj1;-><init>([I[J[J[J)V

    goto :goto_3

    .line 56
    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    .line 57
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/yj1;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/yj1;-><init>(J)V

    .line 59
    :goto_3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/rj1;->a(Lcom/google/android/gms/internal/ads/zj1;)V

    .line 60
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/gk1;->u:Z

    return-void

    .line 61
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->Y:Lcom/google/android/gms/internal/ads/rj1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/rj1;->a()V

    goto :goto_4

    .line 63
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->q:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_8

    const-wide/32 v0, 0xf4240

    .line 65
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->q:J

    .line 66
    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->r:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_e

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gk1;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    return-void

    .line 68
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/lk1;->e:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lk1;->f:[B

    if-nez p1, :cond_a

    goto :goto_4

    .line 69
    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/lk1;->e:Z

    if-eqz v0, :cond_e

    .line 71
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk1;->g:Lcom/google/android/gms/internal/ads/ak1;

    if-eqz v0, :cond_c

    .line 72
    new-instance v3, Lcom/google/android/gms/internal/ads/zzil;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzil$zza;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzil$zza;

    sget-object v5, Lcom/google/android/gms/internal/ads/xg1;->b:Ljava/util/UUID;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ak1;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzil$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v2, v1

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzil;-><init>([Lcom/google/android/gms/internal/ads/zzil$zza;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/ads/lk1;->i:Lcom/google/android/gms/internal/ads/zzil;

    return-void

    .line 73
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_d
    iget p1, p0, Lcom/google/android/gms/internal/ads/gk1;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->w:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    if-ne p1, v6, :cond_e

    .line 75
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->y:J

    :cond_e
    :goto_4
    return-void

    .line 76
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    const-string v0, "V_VP8"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_VP9"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG2"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/SP"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AP"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MS/VFW/FOURCC"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_THEORA"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_OPUS"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_VORBIS"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AAC"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L2"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L3"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AC3"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_EAC3"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_TRUEHD"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/EXPRESS"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/LOSSLESS"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_FLAC"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MS/ACM"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_PCM/INT/LIT"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_TEXT/UTF8"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_VOBSUB"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_HDMV/PGS"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_DVBSUB"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    if-eqz v1, :cond_13

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->Y:Lcom/google/android/gms/internal/ads/rj1;

    iget v1, p1, Lcom/google/android/gms/internal/ads/lk1;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/lk1;->a(Lcom/google/android/gms/internal/ads/rj1;I)V

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->c:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iget v1, v0, Lcom/google/android/gms/internal/ads/lk1;->b:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    :cond_13
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    return-void

    .line 109
    :cond_14
    iget p1, p0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    return-void

    .line 110
    :cond_15
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->X:Z

    if-nez p1, :cond_16

    .line 111
    iget p1, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    .line 112
    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->c:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/gk1;->K:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/lk1;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gk1;->F:J

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/lk1;J)V

    .line 113
    iput v1, p0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    return-void
.end method

.method final a(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->F:F

    :goto_0
    return-void

    .line 160
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->E:F

    return-void

    .line 161
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->D:F

    return-void

    .line 162
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->C:F

    return-void

    .line 163
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->B:F

    return-void

    .line 164
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->A:F

    return-void

    .line 165
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->z:F

    return-void

    .line 166
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->y:F

    return-void

    .line 167
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->x:F

    return-void

    .line 168
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->w:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 169
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gk1;->r:J

    return-void

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/lk1;->I:I

    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(IILcom/google/android/gms/internal/ads/sj1;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 175
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/lk1;->o:[B

    .line 176
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk1;->o:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    return-void

    .line 177
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/lk1;->h:[B

    .line 179
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk1;->h:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    return-void

    .line 180
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->i:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 181
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->i:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    sub-int/2addr v6, v2

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 182
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->i:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/vo1;->c(I)V

    .line 183
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->i:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vo1;->l()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/gk1;->v:I

    return-void

    .line 184
    :cond_3
    new-array v1, v2, [B

    .line 185
    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    .line 186
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    new-instance v3, Lcom/google/android/gms/internal/ads/ak1;

    invoke-direct {v3, v8, v1}, Lcom/google/android/gms/internal/ads/ak1;-><init>(I[B)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/lk1;->g:Lcom/google/android/gms/internal/ads/ak1;

    return-void

    .line 187
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/lk1;->f:[B

    .line 188
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk1;->f:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/sj1;->readFully([BII)V

    return-void

    .line 189
    :cond_5
    iget v4, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    const/16 v9, 0x8

    if-nez v4, :cond_6

    .line 190
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {v4, v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/nk1;->a(Lcom/google/android/gms/internal/ads/sj1;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lcom/google/android/gms/internal/ads/gk1;->K:I

    .line 191
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/nk1;->b()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/gk1;->G:J

    .line 193
    iput v8, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    .line 194
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/vo1;->i()V

    .line 195
    :cond_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gk1;->c:Landroid/util/SparseArray;

    iget v10, v0, Lcom/google/android/gms/internal/ads/gk1;->K:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/lk1;

    if-nez v4, :cond_7

    .line 196
    iget v1, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/sj1;->a(I)V

    .line 197
    iput v7, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    return-void

    .line 198
    :cond_7
    iget v10, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    if-ne v10, v8, :cond_1a

    const/4 v10, 0x3

    .line 199
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)V

    .line 200
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 201
    iput v8, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    .line 202
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/gk1;->a([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    .line 203
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    iget v11, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v10

    aput v2, v6, v7

    :goto_0
    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_8
    if-ne v1, v5, :cond_19

    .line 204
    invoke-direct {v0, v3, v6}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)V

    .line 205
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    .line 206
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    .line 207
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/gk1;->a([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    if-ne v11, v12, :cond_9

    .line 208
    iget v10, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    div-int/2addr v2, v6

    .line 209
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    invoke-static {v10, v7, v6, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_9
    if-ne v11, v8, :cond_c

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 210
    :goto_1
    iget v14, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_b

    .line 211
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aput v7, v14, v6

    :cond_a
    add-int/2addr v10, v8

    .line 212
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)V

    .line 213
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 214
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aget v16, v15, v6

    add-int v16, v16, v14

    aput v16, v15, v6

    if-eq v14, v13, :cond_a

    .line 215
    aget v14, v15, v6

    add-int/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    :cond_b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    sub-int/2addr v14, v8

    iget v15, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v6, v14

    goto :goto_0

    :cond_c
    if-ne v11, v10, :cond_18

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 217
    :goto_2
    iget v14, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_13

    .line 218
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aput v7, v14, v6

    add-int/lit8 v10, v10, 0x1

    .line 219
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)V

    .line 220
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_12

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_f

    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v8, v18

    .line 221
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v18

    if-eqz v5, :cond_e

    add-int/2addr v10, v14

    .line 222
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;I)V

    .line 223
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v13

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v5, v15

    int-to-long v7, v5

    move/from16 v5, v16

    :goto_4
    move-wide/from16 v16, v7

    if-ge v5, v10, :cond_d

    shl-long v7, v16, v9

    .line 224
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    int-to-long v12, v5

    or-long/2addr v7, v12

    move/from16 v5, v16

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_4

    :cond_d
    if-lez v6, :cond_f

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v7, 0x1

    shl-long v12, v7, v14

    sub-long/2addr v12, v7

    sub-long v16, v16, v12

    goto :goto_5

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_3

    :cond_f
    :goto_5
    move-wide/from16 v7, v16

    const-wide/32 v12, -0x80000000

    cmp-long v5, v7, v12

    if-ltz v5, :cond_11

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v7, v12

    if-gtz v5, :cond_11

    long-to-int v5, v7

    .line 225
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v8, v6, -0x1

    .line 226
    aget v8, v7, v8

    add-int/2addr v5, v8

    :goto_6
    aput v5, v7, v6

    .line 227
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aget v5, v5, v6

    add-int/2addr v11, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_2

    .line 228
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/gk1;->L:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v5, v14

    .line 231
    :goto_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    const/4 v5, 0x0

    aget-byte v7, v2, v5

    shl-int/lit8 v5, v7, 0x8

    aget-byte v2, v2, v6

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    .line 232
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/gk1;->A:J

    int-to-long v7, v2

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/gk1;->a(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/gk1;->F:J

    .line 233
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_14

    const/4 v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    .line 234
    :goto_8
    iget v6, v4, Lcom/google/android/gms/internal/ads/lk1;->c:I

    if-eq v6, v5, :cond_16

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gk1;->g:Lcom/google/android/gms/internal/ads/vo1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/vo1;->a:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_15

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-eqz v2, :cond_17

    const/high16 v7, -0x80000000

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    :goto_b
    or-int v2, v5, v7

    .line 235
    iput v2, v0, Lcom/google/android/gms/internal/ads/gk1;->M:I

    const/4 v2, 0x2

    .line 236
    iput v2, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    const/4 v2, 0x0

    .line 237
    iput v2, v0, Lcom/google/android/gms/internal/ads/gk1;->H:I

    goto :goto_c

    .line 238
    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_19
    new-instance v1, Lcom/google/android/gms/internal/ads/nh1;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_c
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1c

    .line 240
    :goto_d
    iget v1, v0, Lcom/google/android/gms/internal/ads/gk1;->H:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/gk1;->I:I

    if-ge v1, v2, :cond_1b

    .line 241
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/lk1;I)V

    .line 242
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/gk1;->F:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/gk1;->H:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/lk1;->d:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 243
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/lk1;J)V

    .line 244
    iget v1, v0, Lcom/google/android/gms/internal/ads/gk1;->H:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/gk1;->H:I

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    .line 245
    iput v1, v0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    return-void

    :cond_1c
    const/4 v1, 0x0

    .line 246
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gk1;->J:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/gk1;->a(Lcom/google/android/gms/internal/ads/sj1;Lcom/google/android/gms/internal/ads/lk1;I)V

    return-void
.end method

.method final a(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->v:I

    goto/16 :goto_0

    .line 115
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->u:I

    return-void

    .line 116
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/lk1;->q:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v6, p1, Lcom/google/android/gms/internal/ads/lk1;->r:I

    return-void

    .line 118
    :cond_1
    iput v1, p1, Lcom/google/android/gms/internal/ads/lk1;->r:I

    return-void

    .line 119
    :cond_2
    iput v7, p1, Lcom/google/android/gms/internal/ads/lk1;->r:I

    return-void

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    return-void

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v0, p1, Lcom/google/android/gms/internal/ads/lk1;->s:I

    return-void

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v1, p1, Lcom/google/android/gms/internal/ads/lk1;->s:I

    return-void

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v5, p1, Lcom/google/android/gms/internal/ads/lk1;->s:I

    return-void

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    return-void

    .line 123
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v7, p1, Lcom/google/android/gms/internal/ads/lk1;->t:I

    return-void

    .line 124
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v6, p1, Lcom/google/android/gms/internal/ads/lk1;->t:I

    return-void

    .line 125
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/gk1;->q:J

    return-void

    .line 126
    :sswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->d:I

    return-void

    .line 127
    :sswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->H:I

    return-void

    .line 128
    :sswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/lk1;->K:J

    return-void

    .line 129
    :sswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/lk1;->J:J

    return-void

    .line 130
    :sswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    cmp-long v0, p2, v3

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/lk1;->M:Z

    return-void

    .line 131
    :sswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->m:I

    return-void

    .line 132
    :sswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->n:I

    return-void

    .line 133
    :sswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->l:I

    return-void

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_c

    if-eq p1, v7, :cond_b

    if-eq p1, v5, :cond_a

    const/16 p2, 0xf

    if-eq p1, p2, :cond_9

    return-void

    .line 134
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v5, p1, Lcom/google/android/gms/internal/ads/lk1;->p:I

    return-void

    .line 135
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v7, p1, Lcom/google/android/gms/internal/ads/lk1;->p:I

    return-void

    .line 136
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v6, p1, Lcom/google/android/gms/internal/ads/lk1;->p:I

    return-void

    .line 137
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput v1, p1, Lcom/google/android/gms/internal/ads/lk1;->p:I

    return-void

    .line 138
    :sswitch_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/gk1;->w:J

    return-void

    :sswitch_b
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 139
    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 140
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 141
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v3

    if-ltz p1, :cond_10

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_10

    goto/16 :goto_0

    .line 142
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 143
    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :sswitch_10
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/gk1;->X:Z

    return-void

    .line 145
    :sswitch_11
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->D:Z

    if-nez p1, :cond_16

    .line 146
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/oo1;->a(J)V

    .line 147
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/gk1;->D:Z

    return-void

    .line 148
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/gk1;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gk1;->A:J

    return-void

    .line 149
    :sswitch_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->b:I

    return-void

    .line 150
    :sswitch_14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->k:I

    return-void

    .line 151
    :sswitch_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/gk1;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/oo1;->a(J)V

    return-void

    .line 152
    :sswitch_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->j:I

    return-void

    .line 153
    :sswitch_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->G:I

    return-void

    .line 154
    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/gk1;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gk1;->G:J

    return-void

    .line 155
    :sswitch_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    cmp-long v0, p2, v3

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/lk1;->L:Z

    return-void

    .line 156
    :sswitch_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/lk1;->c:I

    return-void

    :cond_13
    cmp-long p1, p2, v3

    if-nez p1, :cond_14

    goto :goto_0

    .line 157
    :cond_14
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    .line 158
    :cond_17
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(IJJ)V
    .locals 5

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_c

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->u:Z

    if-nez p1, :cond_8

    .line 20
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/gk1;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/gk1;->y:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 21
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/gk1;->x:Z

    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->Y:Lcom/google/android/gms/internal/ads/rj1;

    new-instance p2, Lcom/google/android/gms/internal/ads/yj1;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/gk1;->s:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/yj1;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/rj1;->a(Lcom/google/android/gms/internal/ads/zj1;)V

    .line 23
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/gk1;->u:Z

    return-void

    .line 24
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/oo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/oo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->B:Lcom/google/android/gms/internal/ads/oo1;

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/oo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/oo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->C:Lcom/google/android/gms/internal/ads/oo1;

    return-void

    .line 26
    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/gk1;->p:J

    .line 29
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/gk1;->o:J

    :cond_6
    return-void

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/lk1;->q:Z

    :cond_8
    :goto_1
    return-void

    .line 31
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/lk1;->e:Z

    return-void

    :cond_a
    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/gk1;->v:I

    .line 33
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/gk1;->w:J

    return-void

    .line 34
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/gk1;->D:Z

    return-void

    .line 35
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/lk1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/lk1;-><init>(Lcom/google/android/gms/internal/ads/jk1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    return-void

    .line 36
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/gk1;->X:Z

    return-void
.end method

.method final a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/lk1;->a(Lcom/google/android/gms/internal/ads/lk1;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "webm"

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/nh1;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    .line 174
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->t:Lcom/google/android/gms/internal/ads/lk1;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/lk1;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gk1;->A:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/gk1;->E:I

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->a:Lcom/google/android/gms/internal/ads/ek1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ek1;->a()V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nk1;->a()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gk1;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rj1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gk1;->Y:Lcom/google/android/gms/internal/ads/rj1;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sj1;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/kk1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kk1;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/kk1;->a(Lcom/google/android/gms/internal/ads/sj1;)Z

    move-result p1

    return p1
.end method
