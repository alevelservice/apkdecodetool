.class final Lcom/google/firebase/messaging/z;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "internalQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "internalQueue"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/messaging/z;->f:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/z;->a:Landroid/content/SharedPreferences;

    const-string p1, "topic_operation_queue"

    iput-object p1, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/String;

    const-string p1, ","

    iput-object p1, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/messaging/z;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/z;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance p1, Lcom/google/firebase/messaging/z;

    const-string p2, "topic_operation_queue"

    const-string v0, ","

    .line 6
    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/firebase/messaging/z;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-direct {p1}, Lcom/google/firebase/messaging/z;->d()V

    return-object p1
.end method

.method private a(Z)Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "internalQueue"
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/messaging/z;->f:Z

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/messaging/z;->f()V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private d()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Lcom/google/firebase/messaging/z;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/String;

    const-string v3, ""

    .line 3
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/String;

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 8
    aget-object v4, v1, v3

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private e()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/z;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/messaging/y;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/y;-><init>(Lcom/google/firebase/messaging/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/z;->e()V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 8
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/z;->a(Z)Z

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/z;->a(Z)Z

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "internalQueue"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
