.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field static g:Le/i/b/a/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FirebaseUnknownNullness"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/c;

.field private final c:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Le/i/b/b/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/messaging/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/c;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/p/b;Lcom/google/firebase/p/b;Lcom/google/firebase/installations/g;Le/i/b/a/g;Lcom/google/firebase/n/d;)V
    .locals 8
    .param p6    # Le/i/b/a/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lcom/google/firebase/p/b<",
            "Lcom/google/firebase/r/i;",
            ">;",
            "Lcom/google/firebase/p/b<",
            "Lcom/google/firebase/o/f;",
            ">;",
            "Lcom/google/firebase/installations/g;",
            "Le/i/b/a/g;",
            "Lcom/google/firebase/n/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sput-object p6, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Le/i/b/a/g;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/google/firebase/c;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/iid/FirebaseInstanceId;

    new-instance p6, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 3
    invoke-direct {p6, p0, p7}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/n/d;)V

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/g;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p6

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Ljava/util/concurrent/Executor;

    iget-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Ljava/util/concurrent/Executor;

    new-instance p7, Lcom/google/firebase/messaging/h;

    .line 6
    invoke-direct {p7, p0, p2}, Lcom/google/firebase/messaging/h;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {p6, p7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    new-instance v2, Lcom/google/firebase/iid/r;

    iget-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    invoke-direct {v2, p6}, Lcom/google/firebase/iid/r;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/google/firebase/messaging/g;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/google/firebase/messaging/d0;->a(Lcom/google/firebase/c;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/p/b;Lcom/google/firebase/p/b;Lcom/google/firebase/installations/g;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Le/i/b/b/d/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/i/b/b/d/h;

    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/i/b/b/d/h;

    .line 10
    invoke-static {}, Lcom/google/firebase/messaging/g;->e()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/google/firebase/messaging/i;

    invoke-direct {p3, p0}, Lcom/google/firebase/messaging/i;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 11
    invoke-virtual {p1, p2, p3}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/e;)Le/i/b/b/d/h;

    return-void

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseMessaging and FirebaseInstanceId versions not compatible. Update to latest version of firebase-messaging."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/c;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/google/firebase/c;

    return-object p0
.end method

.method static final synthetic a(Ljava/lang/String;Lcom/google/firebase/messaging/d0;)Le/i/b/b/d/h;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/d0;->a(Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static final synthetic b(Ljava/lang/String;Lcom/google/firebase/messaging/d0;)Le/i/b/b/d/h;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/d0;->b(Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method public static c()Le/i/b/a/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Le/i/b/a/g;

    return-object v0
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .param p0    # Lcom/google/firebase/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/i/b/b/d/h;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/i/b/b/d/h;

    .line 14
    new-instance v1, Lcom/google/firebase/messaging/j;

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/i/b/b/d/h;->a(Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gcm.intent.SEND"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;->a(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing \'to\'"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic a(Lcom/google/firebase/messaging/d0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/d0;->c()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Le/i/b/b/d/h;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/i/b/b/d/h;

    .line 2
    new-instance v1, Lcom/google/firebase/messaging/k;

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/i/b/b/d/h;->a(Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
