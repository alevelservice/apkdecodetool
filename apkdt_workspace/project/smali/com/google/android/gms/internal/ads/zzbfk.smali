.class public final Lcom/google/android/gms/internal/ads/zzbfk;
.super Lcom/google/android/gms/internal/ads/zzvt;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzawv;

.field private final g:Lcom/google/android/gms/internal/ads/ke0;

.field private final h:Lcom/google/android/gms/internal/ads/ed0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ed0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgt;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/ji0;

.field private final j:Lcom/google/android/gms/internal/ads/e90;

.field private final k:Lcom/google/android/gms/internal/ads/a9;

.field private l:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ke0;Lcom/google/android/gms/internal/ads/ed0;Lcom/google/android/gms/internal/ads/ji0;Lcom/google/android/gms/internal/ads/e90;Lcom/google/android/gms/internal/ads/a9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            "Lcom/google/android/gms/internal/ads/ke0;",
            "Lcom/google/android/gms/internal/ads/ed0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgt;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ji0;",
            "Lcom/google/android/gms/internal/ads/e90;",
            "Lcom/google/android/gms/internal/ads/a9;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfk;->g:Lcom/google/android/gms/internal/ads/ke0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbfk;->h:Lcom/google/android/gms/internal/ads/ed0;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbfk;->i:Lcom/google/android/gms/internal/ads/ji0;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbfk;->j:Lcom/google/android/gms/internal/ads/e90;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbfk;->k:Lcom/google/android/gms/internal/ads/a9;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->l:Z

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/o/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v2, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "^/\\d+~.+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    const-string v2, "Error getting metadata"

    .line 7
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final getVersionString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "Mobile ads is initialized already."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ca;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->i()Lcom/google/android/gms/internal/ads/sr1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sr1;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->l:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->j:Lcom/google/android/gms/internal/ads/e90;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e90;->a()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->i1:Lcom/google/android/gms/internal/ads/pv1;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->i:Lcom/google/android/gms/internal/ads/ji0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ji0;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAppMuted(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mb;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setAppVolume(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mb;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafe;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->j:Lcom/google/android/gms/internal/ads/e90;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e90;->a(Lcom/google/android/gms/internal/ads/zzafe;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->g:Lcom/google/android/gms/internal/ads/ke0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ke0;->a(Lcom/google/android/gms/internal/ads/zzajd;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxw;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->k:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/a9;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxw;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->a2:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 6
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 7
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->Z1:Lcom/google/android/gms/internal/ads/pv1;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->G0:Lcom/google/android/gms/internal/ads/pv1;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/aw1;->G0:Lcom/google/android/gms/internal/ads/pv1;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/fm;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/fm;-><init>(Lcom/google/android/gms/internal/ads/zzbfk;Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->k()Lcom/google/android/gms/ads/internal/e;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/google/android/gms/ads/internal/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized zzby(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->Z1:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->k()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbz(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->i:Lcom/google/android/gms/internal/ads/ji0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ji0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Wrapped context is null. Failed to open debug menu."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "Context is null. Failed to open debug menu."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/pb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/pb;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pb;->d(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pb;->a()V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "Adapters must be initialized on the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ca;->i()Lcom/google/android/gms/internal/ads/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->h()Lcom/google/android/gms/internal/ads/y9;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y9;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Could not initialize rewarded ads."

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->g:Lcom/google/android/gms/internal/ads/ke0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ke0;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/b5;

    .line 11
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/x4;

    .line 12
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/x4;->b:Ljava/lang/String;

    .line 13
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/x4;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v4, :cond_4

    .line 16
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 17
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfk;->h:Lcom/google/android/gms/internal/ads/ed0;

    .line 22
    invoke-interface {v4, v3, v0}, Lcom/google/android/gms/internal/ads/ed0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/bd0;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 23
    :cond_8
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaji;

    .line 24
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaji;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaji;->zzrp()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcgt;

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 27
    invoke-interface {v5, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapz;Ljava/util/List;)V

    const-string v2, "Initialized rewarded video mediation adapter "

    .line 28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize rewarded video mediation adapter \""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    :goto_4
    return-void
.end method

.method public final declared-synchronized zzoo()F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mb;->a()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzop()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mb;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzoq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaex;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->j:Lcom/google/android/gms/internal/ads/e90;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e90;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
