.class public final Lcom/google/android/gms/internal/ads/iv0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/ud;

.field private final c:Lcom/google/android/gms/internal/ads/zf0;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/ads/us0;

.field private final i:Lcom/google/android/gms/common/util/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ud;Lcom/google/android/gms/internal/ads/zf0;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/us0;Lcom/google/android/gms/common/util/e;)V
    .locals 0
    .param p8    # Lcom/google/android/gms/internal/ads/us0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iv0;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iv0;->b:Lcom/google/android/gms/internal/ads/ud;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/iv0;->c:Lcom/google/android/gms/internal/ads/zf0;

    .line 5
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iv0;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/iv0;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/iv0;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/iv0;->g:Landroid/content/Context;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/iv0;->h:Lcom/google/android/gms/internal/ads/us0;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/iv0;->i:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/kd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "fakeForAdDebugLog"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/iv0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;ZLjava/util/List;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzape;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzape;",
            ")V"
        }
    .end annotation

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/iv0;->i:Lcom/google/android/gms/common/util/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 17
    :try_start_0
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzape;->getType()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzape;->getAmount()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iv0;->h:Lcom/google/android/gms/internal/ads/us0;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/us0;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/iv0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/iv0;->h:Lcom/google/android/gms/internal/ads/us0;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/us0;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/iv0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 23
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_userid@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_custom_data@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_tmstmp@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_itm@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "@gw_rwd_amt@"

    .line 27
    invoke-static {v5, v6, p4}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/iv0;->d:Ljava/lang/String;

    const-string v7, "@gw_sdkver@"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/iv0;->g:Landroid/content/Context;

    iget-boolean v7, p2, Lcom/google/android/gms/internal/ads/ns0;->M:Z

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/p9;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/util/List;)V

    :catch_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;ZLjava/util/List;)V
    .locals 4
    .param p2    # Lcom/google/android/gms/internal/ads/ns0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 3
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    const-string v3, "@gw_adlocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@gw_adnetrefresh@"

    .line 5
    invoke-static {v1, v2, p3}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iv0;->d:Ljava/lang/String;

    const-string v3, "@gw_sdkver@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 7
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/ns0;->v:Ljava/lang/String;

    const-string v3, "@gw_qdata@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/ns0;->u:Ljava/lang/String;

    const-string v3, "@gw_adnetid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/ns0;->t:Ljava/lang/String;

    const-string v3, "@gw_allocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iv0;->g:Landroid/content/Context;

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/ns0;->M:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p9;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iv0;->c:Lcom/google/android/gms/internal/ads/zf0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zf0;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_adnetstatus@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iv0;->e:Ljava/lang/String;

    const-string v3, "@gw_seqnum@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iv0;->f:Ljava/lang/String;

    const-string v3, "@gw_sessid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iv0;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/lv0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/lv0;-><init>(Lcom/google/android/gms/internal/ads/iv0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iv0;->b:Lcom/google/android/gms/internal/ads/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ud;->a(Ljava/lang/String;)V

    return-void
.end method
