.class final Lcom/google/android/gms/internal/ads/yl1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rj1;
.implements Lcom/google/android/gms/internal/ads/im1;
.implements Lcom/google/android/gms/internal/ads/vm1;
.implements Lcom/google/android/gms/internal/ads/go1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/rj1;",
        "Lcom/google/android/gms/internal/ads/im1;",
        "Lcom/google/android/gms/internal/ads/vm1;",
        "Lcom/google/android/gms/internal/ads/go1<",
        "Lcom/google/android/gms/internal/ads/fm1;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/google/android/gms/internal/ads/bn1;

.field private C:J

.field private D:[Z

.field private E:[Z

.field private F:Z

.field private G:J

.field private H:J

.field private I:J

.field private J:I

.field private K:Z

.field private L:Z

.field private final e:Landroid/net/Uri;

.field private final f:Lcom/google/android/gms/internal/ads/wn1;

.field private final g:I

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/gms/internal/ads/jm1;

.field private final j:Lcom/google/android/gms/internal/ads/nm1;

.field private final k:Lcom/google/android/gms/internal/ads/un1;

.field private final l:Ljava/lang/String;

.field private final m:J

.field private final n:Lcom/google/android/gms/internal/ads/ho1;

.field private final o:Lcom/google/android/gms/internal/ads/em1;

.field private final p:Lcom/google/android/gms/internal/ads/po1;

.field private final q:Ljava/lang/Runnable;

.field private final r:Ljava/lang/Runnable;

.field private final s:Landroid/os/Handler;

.field private final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/tm1;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/google/android/gms/internal/ads/lm1;

.field private v:Lcom/google/android/gms/internal/ads/zj1;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/wn1;[Lcom/google/android/gms/internal/ads/pj1;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/jm1;Lcom/google/android/gms/internal/ads/nm1;Lcom/google/android/gms/internal/ads/un1;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->e:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yl1;->f:Lcom/google/android/gms/internal/ads/wn1;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/yl1;->g:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/yl1;->h:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/yl1;->i:Lcom/google/android/gms/internal/ads/jm1;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/yl1;->j:Lcom/google/android/gms/internal/ads/nm1;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/yl1;->k:Lcom/google/android/gms/internal/ads/un1;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/yl1;->l:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->m:J

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/ho1;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ho1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/em1;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/em1;-><init>([Lcom/google/android/gms/internal/ads/pj1;Lcom/google/android/gms/internal/ads/rj1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->o:Lcom/google/android/gms/internal/ads/em1;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/po1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/po1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->p:Lcom/google/android/gms/internal/ads/po1;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/bm1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bm1;-><init>(Lcom/google/android/gms/internal/ads/yl1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->q:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/am1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/am1;-><init>(Lcom/google/android/gms/internal/ads/yl1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->r:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->G:J

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/fm1;)V
    .locals 5

    .line 58
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->G:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fm1;->a(Lcom/google/android/gms/internal/ads/fm1;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->G:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/yl1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/yl1;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/yl1;->L:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/yl1;)Lcom/google/android/gms/internal/ads/lm1;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->u:Lcom/google/android/gms/internal/ads/lm1;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/yl1;)Landroid/util/SparseArray;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    return-object p0
.end method

.method private final d()V
    .locals 9

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/fm1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->f:Lcom/google/android/gms/internal/ads/wn1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->o:Lcom/google/android/gms/internal/ads/em1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yl1;->p:Lcom/google/android/gms/internal/ads/po1;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fm1;-><init>(Lcom/google/android/gms/internal/ads/yl1;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/wn1;Lcom/google/android/gms/internal/ads/em1;Lcom/google/android/gms/internal/ads/po1;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 4
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    .line 6
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zj1;->a(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/fm1;->a(JJ)V

    .line 8
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yl1;->J:I

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/yl1;->g:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yl1;->G:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zj1;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 12
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/ho1;->a(Lcom/google/android/gms/internal/ads/io1;Lcom/google/android/gms/internal/ads/go1;I)J

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/yl1;)Lcom/google/android/gms/internal/ads/jm1;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->i:Lcom/google/android/gms/internal/ads/jm1;

    return-object p0
.end method

.method private final e()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->L:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->w:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/tm1;->e()Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->p:Lcom/google/android/gms/internal/ads/po1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/po1;->c()Z

    .line 5
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/cn1;

    .line 6
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->E:[Z

    .line 7
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zj1;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 9
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/tm1;->e()Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v5

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/cn1;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzgq;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/cn1;-><init>([Lcom/google/android/gms/internal/ads/zzgq;)V

    aput-object v6, v2, v3

    .line 11
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgq;->j:Ljava/lang/String;

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/qo1;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/qo1;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 13
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yl1;->E:[Z

    aput-boolean v4, v5, v3

    .line 14
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/yl1;->F:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/yl1;->F:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/bn1;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/bn1;-><init>([Lcom/google/android/gms/internal/ads/cn1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->B:Lcom/google/android/gms/internal/ads/bn1;

    .line 16
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->j:Lcom/google/android/gms/internal/ads/nm1;

    new-instance v1, Lcom/google/android/gms/internal/ads/zm1;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    .line 18
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zj1;->b()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zm1;-><init>(JZ)V

    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nm1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->u:Lcom/google/android/gms/internal/ads/lm1;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/lm1;->a(Lcom/google/android/gms/internal/ads/im1;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final f()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/tm1;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/yl1;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->l:Ljava/lang/String;

    return-object p0
.end method

.method private final g()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/tm1;->b()J

    move-result-wide v4

    .line 4
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/yl1;)J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->m:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/yl1;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final h()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/yl1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final X()Lcom/google/android/gms/internal/ads/bn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->B:Lcom/google/android/gms/internal/ads/bn1;

    return-object v0
.end method

.method public final Y()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yl1;->a0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Z()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->H:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method final a(ILcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;Z)I
    .locals 7

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/tm1;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/yl1;->H:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/tm1;->a(Lcom/google/android/gms/internal/ads/mh1;Lcom/google/android/gms/internal/ads/hj1;ZZJ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x3

    return p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/io1;JJLjava/io/IOException;)I
    .locals 4

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/fm1;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/yl1;->a(Lcom/google/android/gms/internal/ads/fm1;)V

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yl1;->h:Landroid/os/Handler;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yl1;->i:Lcom/google/android/gms/internal/ads/jm1;

    if-eqz p3, :cond_0

    .line 63
    new-instance p3, Lcom/google/android/gms/internal/ads/cm1;

    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/cm1;-><init>(Lcom/google/android/gms/internal/ads/yl1;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_0
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/en1;

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->f()I

    move-result p2

    .line 66
    iget p3, p0, Lcom/google/android/gms/internal/ads/yl1;->J:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 67
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->G:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    if-eqz p3, :cond_3

    .line 68
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zj1;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_7

    :cond_3
    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->H:J

    .line 70
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    .line 71
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 p6, 0x0

    :goto_1
    if-ge p6, p3, :cond_6

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v2, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/tm1;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v3, v3, p6

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/tm1;->a(Z)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    .line 73
    :cond_6
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/android/gms/internal/ads/fm1;->a(JJ)V

    .line 74
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->f()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/yl1;->J:I

    if-eqz p2, :cond_8

    return p4

    :cond_8
    return p5
.end method

.method public final a([Lcom/google/android/gms/internal/ads/on1;[Z[Lcom/google/android/gms/internal/ads/ym1;[ZJ)J
    .locals 5

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 6
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    .line 7
    :cond_0
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/hm1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hm1;->a(Lcom/google/android/gms/internal/ads/hm1;)I

    move-result v2

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 9
    iget v4, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aput-boolean v0, v3, v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tm1;->a()V

    const/4 v2, 0x0

    .line 12
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 13
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 14
    aget-object v2, p3, p2

    if-nez v2, :cond_5

    aget-object v2, p1, p2

    if-eqz v2, :cond_5

    .line 15
    aget-object v1, p1, p2

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/on1;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 17
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/on1;->b(I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->B:Lcom/google/android/gms/internal/ads/bn1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/on1;->a()Lcom/google/android/gms/internal/ads/cn1;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/bn1;->a(Lcom/google/android/gms/internal/ads/cn1;)I

    move-result v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aput-boolean v3, v2, v1

    .line 22
    new-instance v2, Lcom/google/android/gms/internal/ads/hm1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/hm1;-><init>(Lcom/google/android/gms/internal/ads/yl1;I)V

    aput-object v2, p3, p2

    .line 23
    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 24
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/yl1;->y:Z

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_8

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_7

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tm1;->a()V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 28
    :cond_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    if-nez p1, :cond_9

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ho1;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ho1;->b()V

    goto :goto_7

    .line 32
    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/yl1;->y:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_a
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_c

    .line 33
    :goto_5
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/yl1;->b(J)J

    move-result-wide p5

    .line 34
    :goto_6
    array-length p1, p3

    if-ge v0, p1, :cond_c

    .line 35
    aget-object p1, p3, v0

    if-eqz p1, :cond_b

    .line 36
    aput-boolean v3, p4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 37
    :cond_c
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/yl1;->y:Z

    return-wide p5
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/bk1;
    .locals 1

    .line 49
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/tm1;

    if-nez p2, :cond_0

    .line 50
    new-instance p2, Lcom/google/android/gms/internal/ads/tm1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->k:Lcom/google/android/gms/internal/ads/un1;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/tm1;-><init>(Lcom/google/android/gms/internal/ads/un1;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/tm1;->a(Lcom/google/android/gms/internal/ads/vm1;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->w:Z

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(IJ)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/tm1;

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tm1;->b()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tm1;->f()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/tm1;->a(JZ)Z

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/io1;JJ)V
    .locals 0

    .line 81
    check-cast p1, Lcom/google/android/gms/internal/ads/fm1;

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/yl1;->a(Lcom/google/android/gms/internal/ads/fm1;)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    .line 84
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->g()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    .line 86
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->j:Lcom/google/android/gms/internal/ads/nm1;

    new-instance p2, Lcom/google/android/gms/internal/ads/zm1;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/yl1;->C:J

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    .line 88
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zj1;->b()Z

    move-result p5

    invoke-direct {p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zm1;-><init>(JZ)V

    const/4 p3, 0x0

    .line 89
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/nm1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->u:Lcom/google/android/gms/internal/ads/lm1;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/an1;->a(Lcom/google/android/gms/internal/ads/xm1;)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/io1;JJZ)V
    .locals 0

    .line 75
    check-cast p1, Lcom/google/android/gms/internal/ads/fm1;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/yl1;->a(Lcom/google/android/gms/internal/ads/fm1;)V

    if-nez p6, :cond_1

    .line 77
    iget p1, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    if-lez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 79
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/tm1;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/tm1;->a(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->u:Lcom/google/android/gms/internal/ads/lm1;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/an1;->a(Lcom/google/android/gms/internal/ads/xm1;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/lm1;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->u:Lcom/google/android/gms/internal/ads/lm1;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->p:Lcom/google/android/gms/internal/ads/po1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/po1;->b()Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->d()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zj1;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(I)Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tm1;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(J)Z
    .locals 0

    .line 38
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/yl1;->x:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/yl1;->A:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->p:Lcom/google/android/gms/internal/ads/po1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/po1;->b()Z

    move-result p1

    .line 40
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ho1;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->d()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0()J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    return-wide v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->F:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 6
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/yl1;->E:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/tm1;->b()J

    move-result-wide v6

    .line 9
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->g()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yl1;->H:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final b(J)J
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->v:Lcom/google/android/gms/internal/ads/zj1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zj1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 6
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->H:J

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yl1;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/tm1;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/tm1;->a(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yl1;->I:J

    .line 12
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/yl1;->K:Z

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ho1;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ho1;->b()V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yl1;->t:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/tm1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yl1;->D:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/tm1;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/yl1;->z:Z

    return-wide p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->o:Lcom/google/android/gms/internal/ads/em1;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    new-instance v2, Lcom/google/android/gms/internal/ads/dm1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/dm1;-><init>(Lcom/google/android/gms/internal/ads/yl1;Lcom/google/android/gms/internal/ads/em1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ho1;->a(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yl1;->L:Z

    return-void
.end method

.method public final b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho1;->a(I)V

    return-void
.end method

.method final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->n:Lcom/google/android/gms/internal/ads/ho1;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho1;->a(I)V

    return-void
.end method

.method public final c(J)V
    .locals 0

    return-void
.end method
