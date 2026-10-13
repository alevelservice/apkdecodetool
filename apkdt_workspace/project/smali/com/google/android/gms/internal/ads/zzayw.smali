.class public final Lcom/google/android/gms/internal/ads/zzayw;
.super Lcom/google/android/gms/internal/ads/zzaya;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/ug;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/tf;

.field private final f:Lcom/google/android/gms/internal/ads/sf;

.field private final g:Z

.field private final h:Lcom/google/android/gms/internal/ads/qf;

.field private i:Lcom/google/android/gms/internal/ads/cf;

.field private j:Landroid/view/Surface;

.field private k:Lcom/google/android/gms/internal/ads/mg;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:Lcom/google/android/gms/internal/ads/rf;

.field private final q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/tf;ZZLcom/google/android/gms/internal/ads/qf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzayw;->g:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzayw;->q:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    .line 8
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/sf;->a(Lcom/google/android/gms/internal/ads/zzaya;)V

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/mg;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/tf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/mg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qf;)V

    return-object v0
.end method

.method private final a(FZ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/mg;->a(FZ)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initalized."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final a(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->x:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->x:F

    .line 10
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/Surface;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/mg;->a(Landroid/view/Surface;Z)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initalized."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/tf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/tf;->zzxp()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final d()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "cache:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/tf;->zzez(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/jh;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/uh;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/uh;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uh;->c()Lcom/google/android/gms/internal/ads/mg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    goto/16 :goto_2

    .line 8
    :cond_2
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/vh;

    if-eqz v2, :cond_4

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/vh;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->b()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh;->e()Z

    move-result v4

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Stream cache URL is null."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->a()Lcom/google/android/gms/internal/ads/mg;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/mg;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_2

    :cond_4
    const-string v0, "Stream cache miss: "

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->a()Lcom/google/android/gms/internal/ads/mg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->b()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->m:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 21
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzayw;->m:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 22
    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/mg;->a([Landroid/net/Uri;Ljava/lang/String;)V

    .line 24
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/mg;->a(Lcom/google/android/gms/internal/ads/ug;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->a(Landroid/view/Surface;Z)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->getPlaybackState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->f()V

    :cond_8
    :goto_3
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->r:Z

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/yf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzwq()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf;->b()V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->s:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayw;->play()V

    :cond_1
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->t:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->u:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->a(II)V

    return-void
.end method

.method private final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mg;->b(Z)V

    :cond_0
    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mg;->b(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->b()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->u:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->t:I

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->x:F

    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rf;->a(II)V

    .line 9
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->v:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->w:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->g:Z

    if-eqz v0, :cond_8

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 15
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayw;->a(FZ)V

    .line 16
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zg1;->a(Z)V

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->b()J

    move-result-wide v1

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    .line 19
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->b()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_7

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    :cond_7
    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zg1;->a(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzwq()V

    .line 23
    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->v:I

    .line 24
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->w:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->q:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/rf;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/rf;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rf;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rf;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-nez p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->e()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->a(Landroid/view/Surface;Z)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/qf;->a:Z

    if-nez p1, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->h()V

    .line 15
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->t:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->u:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->g()V

    goto :goto_3

    .line 17
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzayw;->a(II)V

    .line 18
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/cg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayw;->pause()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rf;->a()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->i()V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->j:Landroid/view/Surface;

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->a(Landroid/view/Surface;Z)V

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/eg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/rf;->a(II)V

    .line 3
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/fg;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/fg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/sf;->b(Lcom/google/android/gms/internal/ads/zzaya;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxk:Lcom/google/android/gms/internal/ads/kf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/kf;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/cf;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qf;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->i()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zg1;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf;->d()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->c()V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final play()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qf;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->h()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zg1;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf;->c()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->b()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxk:Lcom/google/android/gms/internal/ads/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kf;->a()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ag;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ag;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->s:Z

    return-void
.end method

.method public final seekTo(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zg1;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->l:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->m:[Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->e()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->d()Lcom/google/android/gms/internal/ads/zg1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->stop()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->a(Landroid/view/Surface;Z)V

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/mg;->a(Lcom/google/android/gms/internal/ads/ug;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mg;->c()V

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    .line 9
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->n:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->r:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->s:Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf;->d()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->c()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf;->a()V

    return-void
.end method

.method public final zza(FF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->p:Lcom/google/android/gms/internal/ads/rf;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rf;->a(FF)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/cf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->n:Z

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/qf;->a:Z

    if-eqz p2, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->i()V

    .line 9
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/bg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzayw;->setVideoPath(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->l:Ljava/lang/String;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->m:[Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->e()V

    :cond_1
    return-void
.end method

.method public final zzb(ZJ)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/gg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/gg;-><init>(Lcom/google/android/gms/internal/ads/zzayw;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final synthetic zzc(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->e:Lcom/google/android/gms/internal/ads/tf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/tf;->zza(ZJ)V

    return-void
.end method

.method public final zzct(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->e()Lcom/google/android/gms/internal/ads/ng;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ng;->c(I)V

    :cond_0
    return-void
.end method

.method public final zzcu(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->e()Lcom/google/android/gms/internal/ads/ng;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ng;->d(I)V

    :cond_0
    return-void
.end method

.method public final zzcv(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->e()Lcom/google/android/gms/internal/ads/ng;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ng;->a(I)V

    :cond_0
    return-void
.end method

.method public final zzcw(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mg;->e()Lcom/google/android/gms/internal/ads/ng;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ng;->b(I)V

    :cond_0
    return-void
.end method

.method public final zzcx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->k:Lcom/google/android/gms/internal/ads/mg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mg;->a(I)V

    :cond_0
    return-void
.end method

.method public final zzcy(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    if-eq v0, p1, :cond_3

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->o:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->h:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/qf;->a:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->i()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->f:Lcom/google/android/gms/internal/ads/sf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sf;->d()V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uf;->c()V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xf;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic zzcz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cf;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzfa(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cf;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzm(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->t:I

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->u:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->g()V

    return-void
.end method

.method final synthetic zzo(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cf;->zzj(II)V

    :cond_0
    return-void
.end method

.method public final zzwm()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->q:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ExoPlayer/3"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzwq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->a()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->a(FZ)V

    return-void
.end method

.method final synthetic zzye()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzwu()V

    :cond_0
    return-void
.end method

.method final synthetic zzyf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzwr()V

    :cond_0
    return-void
.end method

.method final synthetic zzyg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->onPaused()V

    :cond_0
    return-void
.end method

.method final synthetic zzyh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzws()V

    :cond_0
    return-void
.end method

.method final synthetic zzyi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzwt()V

    :cond_0
    return-void
.end method

.method final synthetic zzyj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->i:Lcom/google/android/gms/internal/ads/cf;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzei()V

    :cond_0
    return-void
.end method
