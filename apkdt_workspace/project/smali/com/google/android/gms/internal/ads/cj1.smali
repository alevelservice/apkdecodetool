.class public final Lcom/google/android/gms/internal/ads/cj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bi1;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/google/android/gms/internal/ads/zi1;

.field private e:F

.field private f:F

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ShortBuffer;

.field private i:Ljava/nio/ByteBuffer;

.field private j:J

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->e:F

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->f:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->c:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->h:Ljava/nio/ShortBuffer;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cp1;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cj1;->e:F

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/ads/cj1;->e:F

    return p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->h:Ljava/nio/ShortBuffer;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->c:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->j:J

    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->k:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cj1;->l:Z

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cj1;->j:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cj1;->j:J

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zi1;->a(Ljava/nio/ShortBuffer;)V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zi1;->b()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->h:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cj1;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zi1;->b(Ljava/nio/ShortBuffer;)V

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->k:J

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cj1;->g:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public final a(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 3
    iget p3, p0, Lcom/google/android/gms/internal/ads/cj1;->c:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/cj1;->c:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ai1;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ai1;-><init>(III)V

    throw v0
.end method

.method public final b(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cp1;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cj1;->f:F

    return p1
.end method

.method public final b()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->j:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->k:J

    return-wide v0
.end method

.method public final flush()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zi1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cj1;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zi1;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cj1;->e:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zi1;->a(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cj1;->f:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zi1;->b(F)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->j:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cj1;->k:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cj1;->l:Z

    return-void
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cj1;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cj1;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/bi1;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cj1;->i:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cj1;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zi1;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj1;->d:Lcom/google/android/gms/internal/ads/zi1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zi1;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cj1;->l:Z

    return-void
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cj1;->b:I

    return v0
.end method
