.class public final Lcom/google/android/gms/internal/ads/mg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/yg1;
.implements Lcom/google/android/gms/internal/ads/jm1;
.implements Lcom/google/android/gms/internal/ads/ko1;
.implements Lcom/google/android/gms/internal/ads/np1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/yg1;",
        "Lcom/google/android/gms/internal/ads/jm1;",
        "Lcom/google/android/gms/internal/ads/ko1<",
        "Lcom/google/android/gms/internal/ads/wn1;",
        ">;",
        "Lcom/google/android/gms/internal/ads/np1;"
    }
.end annotation


# static fields
.field private static q:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static r:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/ng;

.field private final g:Lcom/google/android/gms/internal/ads/ph1;

.field private final h:Lcom/google/android/gms/internal/ads/ph1;

.field private final i:Lcom/google/android/gms/internal/ads/jn1;

.field private final j:Lcom/google/android/gms/internal/ads/qf;

.field private k:Lcom/google/android/gms/internal/ads/zg1;

.field private l:Ljava/nio/ByteBuffer;

.field private m:Z

.field private n:Lcom/google/android/gms/internal/ads/ug;

.field private o:I

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/jg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qf;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->p:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/ng;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ng;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->f:Lcom/google/android/gms/internal/ads/ng;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/hp1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->e:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/ml1;

    sget-object v5, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/hp1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ml1;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/np1;I)V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->g:Lcom/google/android/gms/internal/ads/ph1;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/ui1;

    sget-object p2, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/ml1;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ui1;-><init>(Lcom/google/android/gms/internal/ads/ml1;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->h:Lcom/google/android/gms/internal/ads/ph1;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/in1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/in1;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->i:Lcom/google/android/gms/internal/ads/jn1;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/na;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "ExoPlayerAdapter initialize "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 14
    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/mg;->q:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    sput p1, Lcom/google/android/gms/internal/ads/mg;->q:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/ph1;

    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->h:Lcom/google/android/gms/internal/ads/ph1;

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->g:Lcom/google/android/gms/internal/ads/ph1;

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->i:Lcom/google/android/gms/internal/ads/jn1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->f:Lcom/google/android/gms/internal/ads/ng;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dh1;->a([Lcom/google/android/gms/internal/ads/ph1;Lcom/google/android/gms/internal/ads/pn1;Lcom/google/android/gms/internal/ads/oh1;)Lcom/google/android/gms/internal/ads/zg1;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zg1;->b(Lcom/google/android/gms/internal/ads/yg1;)V

    return-void
.end method

.method private final a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/km1;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 33
    new-instance v9, Lcom/google/android/gms/internal/ads/gm1;

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mg;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/pg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/pg;-><init>([B)V

    move-object v2, v0

    goto :goto_2

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/qf;->i:I

    if-lez v0, :cond_1

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/og;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/og;-><init>(Lcom/google/android/gms/internal/ads/mg;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/rg;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/rg;-><init>(Lcom/google/android/gms/internal/ads/mg;Ljava/lang/String;)V

    .line 41
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/qf;->j:Z

    if-eqz p2, :cond_2

    .line 42
    new-instance p2, Lcom/google/android/gms/internal/ads/qg;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/qg;-><init>(Lcom/google/android/gms/internal/ads/mg;Lcom/google/android/gms/internal/ads/zn1;)V

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    new-instance v1, Lcom/google/android/gms/internal/ads/tg;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/ads/tg;-><init>(Lcom/google/android/gms/internal/ads/zn1;[B)V

    move-object p2, v1

    :cond_3
    move-object v2, p2

    .line 47
    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/ads/sg;->a:Lcom/google/android/gms/internal/ads/uj1;

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget v4, p2, Lcom/google/android/gms/internal/ads/qf;->k:I

    sget-object v5, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    const/4 v7, 0x0

    iget v8, p2, Lcom/google/android/gms/internal/ads/qf;->g:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/gm1;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zn1;Lcom/google/android/gms/internal/ads/uj1;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/jm1;Ljava/lang/String;I)V

    return-object v9
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/mg;->q:I

    return v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/mg;->r:I

    return v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/wn1;
    .locals 3

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/lg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->e:Landroid/content/Context;

    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zn1;->a()Lcom/google/android/gms/internal/ads/wn1;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/vg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/vg;-><init>(Lcom/google/android/gms/internal/ads/mg;)V

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/google/android/gms/internal/ads/lg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/wn1;Lcom/google/android/gms/internal/ads/ko1;Lcom/google/android/gms/internal/ads/kg;)V

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wn1;
    .locals 9

    .line 55
    new-instance v8, Lcom/google/android/gms/internal/ads/do1;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qf;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget v4, v0, Lcom/google/android/gms/internal/ads/qf;->d:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/qf;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/do1;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/xo1;Lcom/google/android/gms/internal/ads/ko1;IIZLcom/google/android/gms/internal/ads/eo1;)V

    return-object v8
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method final a(FZ)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ah1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->h:Lcom/google/android/gms/internal/ads/ph1;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/ah1;-><init>(Lcom/google/android/gms/internal/ads/bh1;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/ah1;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zg1;->b([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/ah1;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zg1;->a([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/jg;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jg;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    if-eqz p3, :cond_0

    .line 17
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/ug;->zzm(II)V

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method final a(Landroid/view/Surface;Z)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ah1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->g:Lcom/google/android/gms/internal/ads/ph1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/ah1;-><init>(Lcom/google/android/gms/internal/ads/bh1;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/ah1;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zg1;->b([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/ah1;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zg1;->a([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bn1;Lcom/google/android/gms/internal/ads/qn1;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fj1;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qh1;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ug;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wg1;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    .line 21
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ug;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    if-eqz v0, :cond_0

    const-string v1, "onLoadError"

    .line 15
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ug;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 49
    iget p1, p0, Lcom/google/android/gms/internal/ads/mg;->o:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/mg;->o:I

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bo1;)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/gms/internal/ads/mg;->o:I

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a(ZI)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ug;->zzcy(I)V

    :cond_0
    return-void
.end method

.method final synthetic a(ZJ)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->n:Lcom/google/android/gms/internal/ads/ug;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ug;->zzb(ZJ)V

    :cond_0
    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/mg;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mg;->l:Ljava/nio/ByteBuffer;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/mg;->m:Z

    .line 6
    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 7
    aget-object p1, p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mg;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/km1;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/gms/internal/ads/km1;

    .line 9
    :goto_0
    array-length v1, p1

    if-ge p4, v1, :cond_2

    .line 10
    aget-object v1, p1, p4

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/mg;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/km1;

    move-result-object v1

    aput-object v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/pm1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/pm1;-><init>([Lcom/google/android/gms/internal/ads/km1;)V

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zg1;->a(Lcom/google/android/gms/internal/ads/km1;)V

    .line 13
    sget p1, Lcom/google/android/gms/internal/ads/mg;->r:I

    add-int/2addr p1, v0

    sput p1, Lcom/google/android/gms/internal/ads/mg;->r:I

    return-void
.end method

.method public final b()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/mg;->o:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final synthetic b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wn1;
    .locals 7

    .line 5
    new-instance v6, Lcom/google/android/gms/internal/ads/jg;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qf;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->j:Lcom/google/android/gms/internal/ads/qf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/qf;->d:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/qf;->f:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/qf;->i:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/jg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko1;III)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->p:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final b(Lcom/google/android/gms/internal/ads/fj1;)V
    .locals 0

    return-void
.end method

.method final b(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zg1;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->i:Lcom/google/android/gms/internal/ads/jn1;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/jn1;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zg1;->a(Lcom/google/android/gms/internal/ads/yg1;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zg1;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/mg;->r:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/mg;->r:I

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zg1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->k:Lcom/google/android/gms/internal/ads/zg1;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/ng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->f:Lcom/google/android/gms/internal/ads/ng;

    return-object v0
.end method

.method public final finalize()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/mg;->q:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/mg;->q:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/na;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
