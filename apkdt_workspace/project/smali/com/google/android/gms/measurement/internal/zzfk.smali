.class public final Lcom/google/android/gms/measurement/internal/zzfk;
.super Lcom/google/android/gms/measurement/internal/zzdw;


# instance fields
.field private final e:Lcom/google/android/gms/measurement/internal/g8;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g8;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/g8;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/g8;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdw;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->g:Ljava/lang/String;

    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->q()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/r8;->d(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->f:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9
    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/t;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)Lcom/google/android/gms/common/i;

    move-result-object p2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 12
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->f:Ljava/lang/Boolean;

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->f:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->g:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 17
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->g:Ljava/lang/String;

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 20
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    throw p2

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 29
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfk;)Lcom/google/android/gms/measurement/internal/g8;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzjn;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/a5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/a5;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 48
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/o8;

    if-nez p2, :cond_1

    .line 51
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/r8;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/o8;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 53
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user attributes. appId"

    .line 57
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/r4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 103
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzjn;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/s4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/s4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 88
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 89
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/o8;

    if-nez p4, :cond_1

    .line 91
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/r8;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/o8;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 93
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 94
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p3

    .line 95
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p3

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user attributes. appId"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzjn;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/p4;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/p4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 73
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/o8;

    if-nez p3, :cond_1

    .line 76
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/r8;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/o8;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 78
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 79
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 81
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to get user attributes. appId"

    .line 82
    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 60
    new-instance v7, Lcom/google/android/gms/measurement/internal/c5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/c5;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/w4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/w4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 7
    new-instance p3, Lcom/google/android/gms/measurement/internal/v4;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/v4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/google/android/gms/measurement/internal/x4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/x4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/b5;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 59
    new-instance v0, Lcom/google/android/gms/measurement/internal/d5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/d5;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 64
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 65
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 66
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lcom/google/android/gms/measurement/internal/l4;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/l4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void

    .line 68
    :cond_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/o4;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/o4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)[B
    .locals 9
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g8;->p()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 17
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/y4;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/y4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d4;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 20
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 25
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/g8;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/g8;->p()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 32
    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g8;->p()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 38
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzai;
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzah;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "referrer broadcast"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "referrer API"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/z8;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzai;->h:J

    const-string v3, "_cmpx"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/m4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/m4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/measurement/internal/n4;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/n4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :cond_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/q4;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/q4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/g8;->d(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/u4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/u4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/g8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Z)V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/t4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/t4;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Runnable;)V

    return-void
.end method
