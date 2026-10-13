.class public final Lcom/google/android/gms/internal/location/i;
.super Lcom/google/android/gms/internal/location/r;


# instance fields
.field private final B:Lcom/google/android/gms/internal/location/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Lcom/google/android/gms/common/internal/c;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/common/internal/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/location/r;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Lcom/google/android/gms/common/internal/c;)V

    new-instance p2, Lcom/google/android/gms/internal/location/e;

    iget-object p3, p0, Lcom/google/android/gms/internal/location/r;->A:Lcom/google/android/gms/internal/location/m;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/location/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/m;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    return-void
.end method


# virtual methods
.method public final B()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/e;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/e;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/e;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/location/e;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/k$a;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/k$a<",
            "Lcom/google/android/gms/location/d;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzaj;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/location/e;->a(Lcom/google/android/gms/common/api/internal/k$a;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/location/zzbd;",
            "Lcom/google/android/gms/common/api/internal/k<",
            "Lcom/google/android/gms/location/d;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzaj;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/location/e;->a(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/internal/location/zzaj;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/i;->B:Lcom/google/android/gms/internal/location/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/location/e;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/common/api/internal/e;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/common/api/internal/e<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->l()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->a(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzbc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/location/zzbc;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->u()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/location/zzao;

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/location/zzao;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/location/zzaq;Ljava/lang/String;)V

    return-void
.end method
