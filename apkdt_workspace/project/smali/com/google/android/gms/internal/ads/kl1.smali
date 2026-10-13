.class public abstract Lcom/google/android/gms/internal/ads/kl1;
.super Lcom/google/android/gms/internal/ads/vg1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final U:[B


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:[Ljava/nio/ByteBuffer;

.field private F:[Ljava/nio/ByteBuffer;

.field private G:J

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field protected T:Lcom/google/android/gms/internal/ads/fj1;

.field private final i:Lcom/google/android/gms/internal/ads/ml1;

.field private final j:Lcom/google/android/gms/internal/ads/lj1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lj1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Z

.field private final l:Lcom/google/android/gms/internal/ads/hj1;

.field private final m:Lcom/google/android/gms/internal/ads/hj1;

.field private final n:Lcom/google/android/gms/internal/ads/mh1;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/media/MediaCodec$BufferInfo;

.field private q:Lcom/google/android/gms/internal/ads/zzgq;

.field private r:Lcom/google/android/gms/internal/ads/jj1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jj1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/internal/ads/jj1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jj1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/media/MediaCodec;

.field private u:Lcom/google/android/gms/internal/ads/hl1;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cp1;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/kl1;->U:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/lj1<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vg1;-><init>(I)V

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/ml1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kl1;->i:Lcom/google/android/gms/internal/ads/ml1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/kl1;->k:Z

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/hj1;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/hj1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/hj1;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/hj1;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/mh1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/mh1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    .line 11
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->v()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->u()V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/jl1;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object p1

    throw p1
.end method

.method private final b(JJ)Z
    .locals 16

    move-object/from16 v12, p0

    .line 24
    iget v0, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-gez v0, :cond_e

    .line 25
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->A:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    if-eqz v0, :cond_1

    .line 26
    :try_start_0
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    .line 29
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    :cond_0
    return v15

    .line 31
    :cond_1
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 32
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    .line 33
    :goto_0
    iget v0, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    if-ltz v0, :cond_7

    .line 34
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/kl1;->D:Z

    if-eqz v1, :cond_2

    .line 35
    iput-boolean v15, v12, Lcom/google/android/gms/internal/ads/kl1;->D:Z

    .line 36
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 37
    iput v13, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    return v14

    .line 38
    :cond_2
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    .line 40
    iput v13, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    return v15

    .line 41
    :cond_3
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    .line 42
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    :cond_4
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 45
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 46
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_5

    .line 47
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 48
    :goto_2
    iput-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->J:Z

    goto :goto_4

    :cond_7
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 49
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 50
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/kl1;->x:Z

    if-eqz v1, :cond_8

    const-string v1, "width"

    .line 51
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    const-string v1, "height"

    .line 52
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 53
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/kl1;->D:Z

    goto :goto_3

    .line 54
    :cond_8
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/kl1;->B:Z

    if-eqz v1, :cond_9

    const-string v1, "channel-count"

    .line 55
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 56
    :cond_9
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v12, v1, v0}, Lcom/google/android/gms/internal/ads/kl1;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_3
    return v14

    :cond_a
    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    .line 57
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;

    return v14

    .line 58
    :cond_b
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->y:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    if-nez v0, :cond_c

    iget v0, v12, Lcom/google/android/gms/internal/ads/kl1;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 59
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    :cond_d
    return v15

    .line 60
    :cond_e
    :goto_4
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->A:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    if-eqz v0, :cond_10

    .line 61
    :try_start_1
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;

    iget v1, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    aget-object v6, v0, v1

    iget v7, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/kl1;->J:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/kl1;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    .line 63
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    if-eqz v0, :cond_f

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    :cond_f
    return v15

    .line 65
    :cond_10
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/kl1;->J:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/kl1;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_11

    .line 66
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/kl1;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 67
    iput v13, v12, Lcom/google/android/gms/internal/ads/kl1;->I:I

    return v14

    :cond_11
    return v15
.end method

.method private final z()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget v2, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1c

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    if-gez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kl1;->E:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->y:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 11
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 12
    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    return v1

    .line 13
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->C:Z

    if-eqz v0, :cond_5

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->C:Z

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/kl1;->U:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    const/4 v7, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/kl1;->U:[B

    array-length v8, v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 18
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    return v4

    .line 19
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_1

    .line 20
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgq;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 22
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgq;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 23
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_7
    iput v3, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 26
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/vg1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I

    move-result v5

    move v13, v5

    move v5, v0

    move v0, v13

    :goto_1
    const/4 v6, -0x3

    if-ne v0, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v0, v6, :cond_b

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    if-ne v0, v3, :cond_a

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 29
    iput v4, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kl1;->b(Lcom/google/android/gms/internal/ads/zzgq;)V

    return v4

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bj1;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    if-ne v0, v3, :cond_c

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 34
    iput v4, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 35
    :cond_c
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    if-nez v0, :cond_d

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    return v1

    .line 38
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->y:Z

    if-nez v0, :cond_e

    .line 39
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    .line 40
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 41
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    throw v0

    .line 43
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->S:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bj1;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    if-ne v0, v3, :cond_10

    .line 46
    iput v4, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    :cond_10
    return v4

    .line 47
    :cond_11
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->S:Z

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj1;->e()Z

    move-result v0

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v3, :cond_14

    .line 50
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jj1;->b()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v6, 0x4

    if-eq v3, v6, :cond_14

    if-nez v0, :cond_12

    .line 51
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->k:Z

    if-nez v3, :cond_14

    :cond_12
    const/4 v3, 0x1

    goto :goto_2

    .line 52
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj1;->c()Lcom/google/android/gms/internal/ads/mj1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v3, 0x0

    .line 53
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    .line 54
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    if-eqz v3, :cond_15

    return v1

    .line 55
    :cond_15
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->v:Z

    if-eqz v3, :cond_17

    if-nez v0, :cond_17

    .line 56
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/to1;->a(Ljava/nio/ByteBuffer;)V

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_16

    return v4

    .line 58
    :cond_16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->v:Z

    .line 59
    :cond_17
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/hj1;->d:J

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bj1;->b()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 61
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    .line 63
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/hj1;)V

    if-eqz v0, :cond_1b

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    .line 66
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hj1;->b:Lcom/google/android/gms/internal/ads/ej1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej1;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    if-nez v5, :cond_19

    goto :goto_3

    .line 67
    :cond_19
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1a

    new-array v0, v4, [I

    .line 68
    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 69
    :cond_1a
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    .line 70
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    .line 71
    :cond_1b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 72
    :goto_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 73
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    .line 74
    iput v1, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    iget v1, v0, Lcom/google/android/gms/internal/ads/fj1;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/fj1;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_5
    return v1
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;)I
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->i:Lcom/google/android/gms/internal/ads/ml1;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pl1; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object p1

    throw p1
.end method

.method protected a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;Z)Lcom/google/android/gms/internal/ads/hl1;
    .locals 0

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ml1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/hl1;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJ)V
    .locals 5

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->u()V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/android/gms/internal/ads/vg1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kl1;->b(Lcom/google/android/gms/internal/ads/zzgq;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bj1;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 35
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    :cond_2
    return-void

    .line 37
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->v()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const-string v0, "drainAndFeed"

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/lang/String;)V

    .line 40
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/kl1;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 41
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kl1;->z()Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zo1;->a()V

    goto :goto_1

    .line 43
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vg1;->b(J)V

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hj1;->a()V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/vg1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->n:Lcom/google/android/gms/internal/ads/mh1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/mh1;->a:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/kl1;->b(Lcom/google/android/gms/internal/ads/zzgq;)V

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->m:Lcom/google/android/gms/internal/ads/hj1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bj1;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 48
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kl1;->A()V

    .line 50
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    return-void
.end method

.method protected a(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->P:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    if-eqz p2, :cond_3

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/kl1;->G:J

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 11
    iput p2, p0, Lcom/google/android/gms/internal/ads/kl1;->I:I

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/kl1;->S:Z

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->J:Z

    .line 15
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->C:Z

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->D:Z

    .line 18
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/kl1;->w:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/kl1;->z:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    if-eqz p3, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->v()V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->v()V

    .line 26
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->K:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    if-eqz p1, :cond_3

    .line 27
    iput p2, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    :cond_3
    return-void
.end method

.method protected abstract a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method

.method protected a(Lcom/google/android/gms/internal/ads/hj1;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/hl1;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgq;Landroid/media/MediaCrypto;)V
.end method

.method protected abstract a(Ljava/lang/String;JJ)V
.end method

.method protected a(Z)V
    .locals 0

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/fj1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/fj1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzgq;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Lcom/google/android/gms/internal/ads/hl1;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgq;->m:Lcom/google/android/gms/internal/ads/zzil;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgq;->m:Lcom/google/android/gms/internal/ads/zzil;

    .line 5
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/cp1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgq;->m:Lcom/google/android/gms/internal/ads/zzil;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgq;->m:Lcom/google/android/gms/internal/ads/zzil;

    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/lj1;->a(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzil;)Lcom/google/android/gms/internal/ads/jj1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-ne p1, v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object p1

    throw p1

    .line 14
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/hl1;->b:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 16
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/kl1;->a(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzgq;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kl1;->K:Z

    .line 18
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 19
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->x:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgq;->n:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgq;->n:I

    if-ne v1, v3, :cond_4

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgq;->o:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgq;->o:I

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kl1;->C:Z

    return-void

    .line 20
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    if-eqz p1, :cond_6

    .line 21
    iput v2, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    return-void

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->v()V

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kl1;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    throw v1

    :catchall_1
    move-exception v1

    .line 11
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v2, v3, :cond_2

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    .line 15
    throw v1

    :catchall_2
    move-exception v1

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    throw v1

    :catchall_3
    move-exception v1

    .line 18
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 20
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v2, v3, :cond_4

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 22
    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    .line 24
    throw v1

    :catchall_4
    move-exception v1

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    throw v1

    :catchall_5
    move-exception v1

    .line 27
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v2, v3, :cond_5

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 29
    :cond_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    .line 31
    throw v1

    :catchall_6
    move-exception v1

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    throw v1
.end method

.method public isReady()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/kl1;->I:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/kl1;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/kl1;->G:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->Q:Z

    return v0
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected final v()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jj1;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj1;->a()Lcom/google/android/gms/internal/ads/oj1;

    .line 7
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj1;->c()Lcom/google/android/gms/internal/ads/mj1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    throw v0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->i:Lcom/google/android/gms/internal/ads/ml1;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;Z)Lcom/google/android/gms/internal/ads/hl1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pl1; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/jl1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    const v4, -0xc34f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/jl1;-><init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/jl1;)V

    throw v2

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/jl1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v3, v5}, Lcom/google/android/gms/internal/ads/jl1;-><init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/jl1;)V

    throw v2

    .line 15
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/hl1;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hl1;->a:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 18
    sget v4, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_7

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgq;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 20
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->v:Z

    .line 21
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v4, 0x13

    const/16 v6, 0x12

    if-lt v1, v6, :cond_a

    if-ne v1, v6, :cond_8

    const-string v1, "OMX.SEC.avc.dec"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    if-ne v1, v4, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->d:Ljava/lang/String;

    const-string v7, "SM-G800"

    .line 23
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.Exynos.avc.dec"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v1, 0x1

    .line 25
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->w:Z

    .line 26
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v7, 0x18

    if-ge v1, v7, :cond_d

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string v7, "flounder"

    .line 28
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string v7, "flounder_lte"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string v7, "grouper"

    .line 29
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string v7, "tilapia"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    .line 30
    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->x:Z

    .line 31
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v7, 0x11

    if-gt v1, v7, :cond_f

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 33
    :goto_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->y:Z

    .line 34
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v7, 0x17

    if-gt v1, v7, :cond_10

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    if-gt v1, v4, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string v4, "hb2000"

    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    .line 38
    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->z:Z

    .line 39
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    if-ne v1, v5, :cond_13

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    .line 40
    :goto_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->A:Z

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    .line 42
    sget v4, Lcom/google/android/gms/internal/ads/cp1;->a:I

    if-gt v4, v6, :cond_14

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgq;->v:I

    if-ne v1, v10, :cond_14

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    .line 44
    :goto_8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/kl1;->B:Z

    .line 45
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v1, "createCodec:"

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_15
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zo1;->a()V

    const-string v1, "configureCodec"

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {p0, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/hl1;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgq;Landroid/media/MediaCrypto;)V

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zo1;->a()V

    const-string v1, "startCodec"

    .line 52
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zo1;->a()V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-object v4, p0

    move-object v5, v0

    .line 56
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/kl1;->a(Ljava/lang/String;JJ)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->E:[Ljava/nio/ByteBuffer;

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_a

    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kl1;->G:J

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 62
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->I:I

    .line 63
    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/kl1;->S:Z

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    iget v1, v0, Lcom/google/android/gms/internal/ads/fj1;->a:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/fj1;->a:I

    return-void

    :catch_1
    move-exception v1

    .line 65
    new-instance v4, Lcom/google/android/gms/internal/ads/jl1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/kl1;->q:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {v4, v5, v1, v3, v0}, Lcom/google/android/gms/internal/ads/jl1;-><init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/jl1;)V

    throw v2

    :cond_17
    :goto_b
    return-void
.end method

.method protected final w()Landroid/media/MediaCodec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final x()Lcom/google/android/gms/internal/ads/hl1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    return-object v0
.end method

.method protected y()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kl1;->G:J

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->H:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->I:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->R:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->J:Z

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->E:[Ljava/nio/ByteBuffer;

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->F:[Ljava/nio/ByteBuffer;

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->u:Lcom/google/android/gms/internal/ads/hl1;

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->K:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->N:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->v:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->w:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->x:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->y:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->z:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->B:Z

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->C:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->D:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kl1;->O:Z

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->L:I

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/kl1;->M:I

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->l:Lcom/google/android/gms/internal/ads/hj1;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hj1;->c:Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    iget v3, v2, Lcom/google/android/gms/internal/ads/fj1;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/fj1;->b:I

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v2, v0, :cond_0

    .line 30
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    return-void

    :catchall_0
    move-exception v0

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v3, v2, :cond_1

    .line 35
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 36
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    throw v0

    :cond_1
    :goto_0
    throw v0

    :catchall_3
    move-exception v0

    .line 38
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 39
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v3, v2, :cond_2

    .line 41
    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 42
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    goto :goto_1

    :catchall_4
    move-exception v0

    .line 43
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    throw v0

    .line 44
    :cond_2
    :goto_1
    throw v0

    :catchall_5
    move-exception v0

    .line 45
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->t:Landroid/media/MediaCodec;

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->s:Lcom/google/android/gms/internal/ads/jj1;

    if-eq v3, v2, :cond_3

    .line 47
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kl1;->j:Lcom/google/android/gms/internal/ads/lj1;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/jj1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    goto :goto_2

    :catchall_6
    move-exception v0

    .line 49
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->r:Lcom/google/android/gms/internal/ads/jj1;

    throw v0

    :cond_3
    :goto_2
    throw v0

    :cond_4
    return-void
.end method
