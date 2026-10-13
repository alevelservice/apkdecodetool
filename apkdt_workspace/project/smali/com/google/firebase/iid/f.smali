.class public Lcom/google/firebase/iid/f;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/google/firebase/iid/d0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/f;->a:Landroid/content/Context;

    sget-object p1, Lcom/google/firebase/iid/a;->e:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/iid/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/d0;
    .locals 2

    const-string p1, "com.google.firebase.MESSAGING_EVENT"

    sget-object v0, Lcom/google/firebase/iid/f;->c:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/f;->d:Lcom/google/firebase/iid/d0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/d0;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/d0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/f;->d:Lcom/google/firebase/iid/d0;

    :cond_0
    sget-object p0, Lcom/google/firebase/iid/f;->d:Lcom/google/firebase/iid/d0;

    .line 3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static final synthetic a(Landroid/content/Context;Landroid/content/Intent;Le/i/b/b/d/h;)Le/i/b/b/d/h;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/firebase/iid/f;->b(Landroid/content/Context;Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p0

    invoke-static {}, Lcom/google/firebase/iid/h;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/iid/e;->a:Le/i/b/b/d/a;

    invoke-virtual {p0, p1, p2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method static final synthetic a(Le/i/b/b/d/h;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 2
    invoke-static {p0, v0}, Lcom/google/firebase/iid/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/d0;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/d0;->a(Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p0

    invoke-static {}, Lcom/google/firebase/iid/h;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/firebase/iid/d;->a:Le/i/b/b/d/a;

    invoke-virtual {p0, p1, v0}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic b(Le/i/b/b/d/h;)Ljava/lang/Integer;
    .locals 0

    const/16 p0, 0x193

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic c(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/iid/w;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/o;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1, p2}, Lcom/google/firebase/iid/f;->b(Landroid/content/Context;Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/f;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/iid/b;

    .line 13
    invoke-direct {v1, p1, p2}, Lcom/google/firebase/iid/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/f;->b:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v2, Lcom/google/firebase/iid/c;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/iid/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->b(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/f;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/f;->a(Landroid/content/Context;Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
