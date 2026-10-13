.class public final Lcom/google/android/gms/internal/ads/y20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u10;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzajq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzajr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/zzajw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/rt;

.field private final e:Lcom/google/android/gms/internal/ads/it;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ads/ns0;

.field private final h:Lcom/google/android/gms/internal/ads/zzawv;

.field private final i:Lcom/google/android/gms/internal/ads/ws0;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajq;Lcom/google/android/gms/internal/ads/zzajr;Lcom/google/android/gms/internal/ads/zzajw;Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/it;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ws0;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzajq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzajr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzajw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/y20;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/y20;->k:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->d:Lcom/google/android/gms/internal/ads/rt;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/y20;->e:Lcom/google/android/gms/internal/ads/it;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/y20;->f:Landroid/content/Context;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/y20;->h:Lcom/google/android/gms/internal/ads/zzawv;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/y20;->i:Lcom/google/android/gms/internal/ads/ws0;

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    monitor-enter p0

    .line 24
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final b(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajw;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->e:Lcom/google/android/gms/internal/ads/it;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/it;->onAdClicked()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajq;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->e:Lcom/google/android/gms/internal/ads/it;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/it;->onAdClicked()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajr;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajr;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->e:Lcom/google/android/gms/internal/ads/it;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/it;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 36
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/y20;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/ns0;->D:Z

    if-eqz p2, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/y20;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    if-eqz p2, :cond_0

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    if-eqz p2, :cond_1

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    if-eqz p2, :cond_2

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzajr;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 35
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/y20;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ns0;->z:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 44
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/y20;->j:Z

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->m()Lcom/google/android/gms/internal/ads/ub;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/y20;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->h:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ns0;->z:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y20;->i:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    .line 47
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ub;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/y20;->j:Z

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajw;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajw;->recordImpression()V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->d:Lcom/google/android/gms/internal/ads/rt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rt;->g()V

    return-void

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajq;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajq;->recordImpression()V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->d:Lcom/google/android/gms/internal/ads/rt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rt;->g()V

    return-void

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajr;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_3

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajr;->recordImpression()V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y20;->d:Lcom/google/android/gms/internal/ads/rt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rt;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 59
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y20;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/y20;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    if-eqz p4, :cond_0

    .line 5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->c:Lcom/google/android/gms/internal/ads/zzajw;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 8
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 9
    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    if-eqz p4, :cond_1

    .line 10
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 12
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 13
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajq;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->a:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 15
    :cond_1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    if-eqz p4, :cond_2

    .line 16
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 19
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajr;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->b:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzajr;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 38
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/y20;->k:Z

    if-nez p2, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/ns0;->D:Z

    if-nez p2, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/y20;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final cancelUnconfirmedClick()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y20;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ns0;->D:Z

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwb;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzwb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zzqs()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/y20;->k:Z

    return-void
.end method
