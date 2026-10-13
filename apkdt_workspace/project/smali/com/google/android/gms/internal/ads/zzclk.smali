.class public final Lcom/google/android/gms/internal/ads/zzclk;
.super Lcom/google/android/gms/internal/ads/zzvd;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/q;
.implements Lcom/google/android/gms/internal/ads/zu;
.implements Lcom/google/android/gms/internal/ads/nr1;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/mk;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/ViewGroup;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lcom/google/android/gms/internal/ads/zzqu;

.field private final j:Lcom/google/android/gms/internal/ads/xi0;

.field private k:Lcom/google/android/gms/internal/ads/eo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/ads/ys0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/ads/qz0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/po;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected zzgbo:Lcom/google/android/gms/internal/ads/po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvd;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/xi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->j:Lcom/google/android/gms/internal/ads/xi0;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ys0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ys0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->l:Lcom/google/android/gms/internal/ads/ys0;

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->g:Landroid/view/ViewGroup;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/ys0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/po;)Lcom/google/android/gms/ads/internal/overlay/zzo;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/po;->k()Z

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->H2:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/n;-><init>()V

    const/16 v2, 0x32

    .line 6
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/n;->d:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/n;->a:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 8
    :goto_1
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/n;->b:I

    .line 9
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/n;->c:I

    .line 10
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/overlay/q;)V

    return-object p1
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/lo;
    .locals 3

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->i()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ws$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ws$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ko;->c(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/ko;

    new-instance p1, Lcom/google/android/gms/internal/ads/hw$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hw$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->j:Lcom/google/android/gms/internal/ads/xi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/ot;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/zu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hw$a;->a()Lcom/google/android/gms/internal/ads/hw;

    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ko;->a(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/ko;

    new-instance p1, Lcom/google/android/gms/internal/ads/qo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->g:Landroid/view/ViewGroup;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/qo;-><init>(Landroid/view/ViewGroup;)V

    .line 28
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ko;->a(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/ko;

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ko;->c()Lcom/google/android/gms/internal/ads/lo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final a()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/po;->j()Lcom/google/android/gms/internal/ads/zzqz;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zzme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->k:Lcom/google/android/gms/internal/ads/eo;

    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->f()Lcom/google/android/gms/internal/ads/rq1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/rq1;->b(Lcom/google/android/gms/internal/ads/sq1;)V

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclk;->destroy()V

    :cond_3
    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/ads/po;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/po;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 4
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private final b()Lcom/google/android/gms/internal/ads/zztw;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/po;->g()Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    return-object v0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/po;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/po;->a(Lcom/google/android/gms/internal/ads/nr1;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclk;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)Lcom/google/android/gms/ads/internal/overlay/zzo;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzclk;->a(Lcom/google/android/gms/internal/ads/po;)Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzclk;->b(Lcom/google/android/gms/internal/ads/po;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzclk;)Lcom/google/android/gms/internal/ads/zztw;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclk;->b()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzclk;)Lcom/google/android/gms/internal/ads/zzqu;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclk;->i:Lcom/google/android/gms/internal/ads/zzqu;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzclk;->c(Lcom/google/android/gms/internal/ads/po;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzand;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanj;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqu;)V
    .locals 1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->i:Lcom/google/android/gms/internal/ads/zzqu;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->j:Lcom/google/android/gms/internal/ads/xi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xi0;->a(Lcom/google/android/gms/internal/ads/zzqu;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztw;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztx;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvm;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 0

    monitor-enter p0

    .line 18
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 0

    monitor-enter p0

    .line 19
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzzn;)V
    .locals 0

    monitor-enter p0

    .line 20
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztp;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zztp;->j:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ct0;->a(Landroid/content/Context;Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->c()Lcom/google/android/gms/internal/ads/ws0;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzclk;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/lo;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lo;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->m:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ti0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ti0;-><init>(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/lo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 13
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzafv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/po;->f()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/eo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/eo;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/e;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->k:Lcom/google/android/gms/internal/ads/eo;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->k:Lcom/google/android/gms/internal/ads/eo;

    new-instance v2, Lcom/google/android/gms/internal/ads/ui0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ui0;-><init>(Lcom/google/android/gms/internal/ads/zzclk;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/eo;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzalb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->e:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/si0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/si0;-><init>(Lcom/google/android/gms/internal/ads/zzclk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzalc()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclk;->a()V

    return-void
.end method

.method public final zzbm(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzjm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->g:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzjn()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzjo()Lcom/google/android/gms/internal/ads/zztw;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/po;->g()Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzjp()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjq()Lcom/google/android/gms/internal/ads/zzvm;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjr()Lcom/google/android/gms/internal/ads/zzur;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclk;->a()V

    return-void
.end method

.method public final zzsk()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclk;->a()V

    return-void
.end method
