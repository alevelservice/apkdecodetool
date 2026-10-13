.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$f;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$k;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$j;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$d;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$g;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$h;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$e;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$c;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$b;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$a;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final v:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private a:Lcom/google/android/gms/common/internal/j0;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/internal/h;

.field private final d:Lcom/google/android/gms/common/d;

.field final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field protected i:Lcom/google/android/gms/common/internal/BaseGmsClient$c;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private j:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/BaseGmsClient$g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/BaseGmsClient$i;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private m:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final n:Lcom/google/android/gms/common/internal/BaseGmsClient$a;

.field private final o:Lcom/google/android/gms/common/internal/BaseGmsClient$b;

.field private final p:I

.field private final q:Ljava/lang/String;

.field private r:Lcom/google/android/gms/common/ConnectionResult;

.field private s:Z

.field private volatile t:Lcom/google/android/gms/common/internal/zza;

.field protected u:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 1
    sput-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:[Lcom/google/android/gms/common/Feature;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;Ljava/lang/String;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/h;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/h;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/d;->a()Lcom/google/android/gms/common/d;

    move-result-object v4

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient$a;

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/internal/BaseGmsClient$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/d;ILcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/d;ILcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->r:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:Z

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->t:Lcom/google/android/gms/common/internal/zza;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 17
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/common/internal/h;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->c:Lcom/google/android/gms/common/internal/h;

    const-string p1, "API availability must not be null"

    .line 18
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/common/d;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->d:Lcom/google/android/gms/common/d;

    .line 19
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$h;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$h;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    .line 20
    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->p:I

    .line 21
    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->n:Lcom/google/android/gms/common/internal/BaseGmsClient$a;

    .line 22
    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->o:Lcom/google/android/gms/common/internal/BaseGmsClient$b;

    .line 23
    iput-object p8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->q:Ljava/lang/String;

    return-void
.end method

.method private final A()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final C()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->r:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->h:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    const/16 p1, 0x10

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zza;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/internal/zza;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/internal/zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->t:Lcom/google/android/gms/common/internal/zza;

    return-void
.end method

.method private final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    .line 8
    monitor-exit v0

    return p1

    .line 9
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 10
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final b(ILandroid/os/IInterface;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 1
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/m;->a(Z)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/IInterface;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IInterface;)V

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 6
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x46

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->c:Lcom/google/android/gms/common/internal/h;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->c()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->A()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->b()Z

    move-result v11

    .line 17
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/internal/h;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    :cond_5
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$i;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    .line 20
    iget p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->s()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 21
    new-instance p1, Lcom/google/android/gms/common/internal/j0;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->q()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->s()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0x81

    const/4 v9, 0x0

    move-object v4, p1

    .line 24
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/j0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    .line 25
    :cond_6
    new-instance p1, Lcom/google/android/gms/common/internal/j0;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->x()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->w()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x81

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->y()Z

    move-result v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/j0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 29
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()I

    move-result p1

    const p2, 0x1110e58

    if-ge p1, p2, :cond_8

    .line 32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->c:Lcom/google/android/gms/common/internal/h;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/j0;->c()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->A()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/j0;->b()Z

    move-result v6

    .line 40
    new-instance v7, Lcom/google/android/gms/common/internal/h$a;

    invoke-direct {v7, p2, v0, v2, v6}, Lcom/google/android/gms/common/internal/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/android/gms/common/internal/h;->a(Lcom/google/android/gms/common/internal/h$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unable to connect to service: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 p1, 0x10

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 46
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/Bundle;I)V

    goto :goto_4

    .line 47
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    if-eqz p1, :cond_a

    .line 48
    iget-object v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->c:Lcom/google/android/gms/common/internal/h;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->d()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->c()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->A()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/j0;->b()Z

    move-result v10

    .line 54
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/internal/h;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 55
    iput-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Lcom/google/android/gms/common/internal/BaseGmsClient$i;

    .line 56
    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->C()Z

    move-result p0

    return p0
.end method

.method private final c(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->r:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$a;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->n:Lcom/google/android/gms/common/internal/BaseGmsClient$a;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->o:Lcom/google/android/gms/common/internal/BaseGmsClient$b;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient$g;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient$g;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 21
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->h:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected a(I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected final a(ILandroid/os/Bundle;I)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$j;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    .line 35
    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$k;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 32
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 0
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->j()I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/BaseGmsClient$c;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-string v0, "Connection progress callbacks cannot be null."

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->i:Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/internal/BaseGmsClient$c;ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "Connection progress callbacks cannot be null."

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->i:Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 29
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/BaseGmsClient$e;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$e;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->r()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->p:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Ljava/lang/String;

    .line 41
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->k:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:[Lcom/google/android/gms/common/api/Scope;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->l:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    .line 46
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:Landroid/os/IBinder;

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Landroid/accounts/Account;

    move-result-object p1

    .line 49
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->l:Landroid/accounts/Account;

    .line 50
    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:[Lcom/google/android/gms/common/Feature;

    .line 51
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->m:[Lcom/google/android/gms/common/Feature;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->o()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 53
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->n:[Lcom/google/android/gms/common/Feature;

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->h:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz p2, :cond_4

    .line 56
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->h:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 58
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    .line 59
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/16 p1, 0x8

    .line 60
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_1
    move-exception p1

    .line 63
    throw p1

    :catch_2
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 59
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Lcom/google/android/gms/common/internal/j0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/common/d;->a:I

    return v0
.end method

.method public final i()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->t:Lcom/google/android/gms/common/internal/zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zza;->f:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public j()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->d:Lcom/google/android/gms/common/d;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b(ILandroid/os/IInterface;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$d;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/internal/BaseGmsClient$c;ILandroid/app/PendingIntent;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$d;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/internal/BaseGmsClient$c;)V

    return-void
.end method

.method protected final l()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected m()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public n()Landroid/accounts/Account;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public p()Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected r()Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected t()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final u()Landroid/os/IInterface;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->l()V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/m;->b(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract v()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method protected abstract w()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method protected x()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected y()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
