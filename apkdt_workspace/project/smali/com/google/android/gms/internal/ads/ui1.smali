.class public final Lcom/google/android/gms/internal/ads/ui1;
.super Lcom/google/android/gms/internal/ads/kl1;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ro1;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final V:Lcom/google/android/gms/internal/ads/ci1;

.field private final W:Lcom/google/android/gms/internal/ads/li1;

.field private X:Z

.field private Y:Z

.field private Z:Landroid/media/MediaFormat;

.field private a0:I

.field private b0:I

.field private c0:J

.field private d0:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ui1;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/lj1<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ui1;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/lj1<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/di1;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    new-array v7, p2, [Lcom/google/android/gms/internal/ads/bi1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ui1;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;Lcom/google/android/gms/internal/ads/yh1;[Lcom/google/android/gms/internal/ads/bi1;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;Lcom/google/android/gms/internal/ads/yh1;[Lcom/google/android/gms/internal/ads/bi1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/lj1<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/di1;",
            "Lcom/google/android/gms/internal/ads/yh1;",
            "[",
            "Lcom/google/android/gms/internal/ads/bi1;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x1

    .line 4
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kl1;-><init>(ILcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/lj1;Z)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/li1;

    new-instance p2, Lcom/google/android/gms/internal/ads/xi1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/xi1;-><init>(Lcom/google/android/gms/internal/ads/ui1;Lcom/google/android/gms/internal/ads/yi1;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/li1;-><init>(Lcom/google/android/gms/internal/ads/yh1;[Lcom/google/android/gms/internal/ads/bi1;Lcom/google/android/gms/internal/ads/ri1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/ci1;

    invoke-direct {p1, p3, p3}, Lcom/google/android/gms/internal/ads/ci1;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ui1;)Lcom/google/android/gms/internal/ads/ci1;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    return-object p0
.end method

.method protected static a(IJJ)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ui1;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->d0:Z

    return p1
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/li1;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected static b(I)V
    .locals 0

    return-void
.end method

.method protected static z()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;)I
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qo1;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ui1;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ml1;->a()Lcom/google/android/gms/internal/ads/hl1;

    move-result-object v4

    if-eqz v4, :cond_2

    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1

    .line 5
    :cond_2
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/ml1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/hl1;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 6
    :cond_3
    sget v4, Lcom/google/android/gms/internal/ads/cp1;->a:I

    if-lt v4, v3, :cond_6

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzgq;->w:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/hl1;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgq;->v:I

    if-eq p2, v4, :cond_6

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hl1;->b(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x2

    :goto_2
    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1
.end method

.method public final a()J
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ui1;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/li1;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 50
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ui1;->d0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ui1;->c0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ui1;->c0:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ui1;->d0:Z

    .line 53
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ui1;->c0:J

    return-wide v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;Z)Lcom/google/android/gms/internal/ads/hl1;
    .locals 1

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ui1;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ml1;->a()Lcom/google/android/gms/internal/ads/hl1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->X:Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ui1;->X:Z

    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kl1;->a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/zzgq;Z)Lcom/google/android/gms/internal/ads/hl1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qh1;)Lcom/google/android/gms/internal/ads/qh1;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/li1;->a(Lcom/google/android/gms/internal/ads/qh1;)Lcom/google/android/gms/internal/ads/qh1;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vg1;->a(ILjava/lang/Object;)V

    return-void

    .line 65
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/li1;->a(I)V

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/li1;->a(F)V

    return-void
.end method

.method protected final a(JZ)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kl1;->a(JZ)V

    .line 46
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/li1;->d()V

    .line 47
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ui1;->c0:J

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->d0:Z

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "audio/raw"

    :goto_1
    move-object v3, v1

    if-eqz p1, :cond_2

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    :cond_2
    const-string p1, "channel-count"

    .line 32
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    .line 33
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 34
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Y:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/ads/ui1;->b0:I

    if-ge p2, p1, :cond_3

    .line 35
    new-array p1, p2, [I

    .line 36
    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/ui1;->b0:I

    if-ge v0, p2, :cond_4

    .line 37
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    move-object v8, p1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    iget v6, p0, Lcom/google/android/gms/internal/ads/ui1;->a0:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/li1;->a(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pi1; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/hl1;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgq;Landroid/media/MediaCrypto;)V
    .locals 3

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/hl1;->a:Ljava/lang/String;

    .line 16
    sget p4, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p4, v1, :cond_1

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/cp1;->c:Ljava/lang/String;

    const-string p4, "samsung"

    .line 17
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string p4, "zeroflte"

    .line 18
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/cp1;->b:Ljava/lang/String;

    const-string p4, "heroqlte"

    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Y:Z

    .line 21
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->X:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgq;->b()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgq;->b()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 27
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ui1;->Z:Landroid/media/MediaFormat;

    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ci1;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final a(Z)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/kl1;->a(Z)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ci1;->a(Lcom/google/android/gms/internal/ads/fj1;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->j()Lcom/google/android/gms/internal/ads/rh1;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/rh1;->a:I

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/li1;->b(I)V

    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/li1;->j()V

    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0

    .line 55
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ui1;->X:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    .line 57
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    iget p2, p1, Lcom/google/android/gms/internal/ads/fj1;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/fj1;->e:I

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/li1;->f()V

    return p3

    .line 60
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/li1;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    iget p2, p1, Lcom/google/android/gms/internal/ads/fj1;->d:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/fj1;->d:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/oi1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/ti1; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object p1

    throw p1
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/kl1;->b(Lcom/google/android/gms/internal/ads/zzgq;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ci1;->a(Lcom/google/android/gms/internal/ads/zzgq;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgq;->x:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/ui1;->a0:I

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgq;->v:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/ui1;->b0:I

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/qh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->i()Lcom/google/android/gms/internal/ads/qh1;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->f()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->b()V

    return-void
.end method

.method protected final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->a()V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->g()V

    return-void
.end method

.method protected final h()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ci1;->b(Lcom/google/android/gms/internal/ads/fj1;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ci1;->b(Lcom/google/android/gms/internal/ads/fj1;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ci1;->b(Lcom/google/android/gms/internal/ads/fj1;)V

    .line 10
    throw v0

    :catchall_2
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui1;->V:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl1;->T:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ci1;->b(Lcom/google/android/gms/internal/ads/fj1;)V

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kl1;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/ro1;
    .locals 0

    return-object p0
.end method

.method protected final u()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ui1;->W:Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/li1;->g()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ti1; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vg1;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    throw v0
.end method
