.class public final Lcom/google/android/gms/internal/ads/p;
.super Lcom/google/android/gms/ads/formats/h;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzacq;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/j;

.field private final d:Lcom/google/android/gms/ads/j;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacq;)V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/h;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/p;->b:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/j;

    invoke-direct {v1}, Lcom/google/android/gms/ads/j;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/p;->d:Lcom/google/android/gms/ads/j;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/p;->e:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    const/4 p1, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    .line 9
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 10
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 11
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzaas;

    if-eqz v4, :cond_1

    .line 12
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaas;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaau;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_0

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/j;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/j;-><init>(Lcom/google/android/gms/internal/ads/zzaas;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_5

    .line 19
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwe;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_4

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p;->e:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/pu1;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/pu1;-><init>(Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzqj()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/ads/j;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/j;-><init>(Lcom/google/android/gms/internal/ads/zzaas;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p;->c:Lcom/google/android/gms/internal/ads/j;

    .line 26
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacq;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/i;-><init>(Lcom/google/android/gms/internal/ads/zzaak;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private final m()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/formats/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->c:Lcom/google/android/gms/internal/ads/j;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->b:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/j;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->d:Lcom/google/android/gms/ads/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/zzwk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->d:Lcom/google/android/gms/ads/j;

    return-object v0
.end method

.method protected final synthetic k()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p;->m()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p;->a:Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacq;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
