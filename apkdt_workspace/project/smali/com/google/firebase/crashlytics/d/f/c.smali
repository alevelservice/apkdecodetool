.class public Lcom/google/firebase/crashlytics/d/f/c;
.super Ljava/lang/Object;
.source "BlockingAnalyticsEventLogger.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/f/b;
.implements Lcom/google/firebase/crashlytics/d/f/a;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/f/e;

.field private final b:I

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/d/f/e;ILjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/d/f/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/f/c;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/f/c;->a:Lcom/google/firebase/crashlytics/d/f/e;

    .line 4
    iput p2, p0, Lcom/google/firebase/crashlytics/d/f/c;->b:I

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/f/c;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/f/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Logging Crashlytics event to Firebase"

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/f/c;->e:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/f/c;->a:Lcom/google/firebase/crashlytics/d/f/e;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/crashlytics/d/f/e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Awaiting app exception callback from FA..."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/f/c;->e:Ljava/util/concurrent/CountDownLatch;

    iget p2, p0, Lcom/google/firebase/crashlytics/d/f/c;->b:I

    int-to-long v1, p2

    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/f/c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "App exception callback received from FA listener."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Timeout exceeded while awaiting app exception callback from FA listener."

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Interrupted while awaiting app exception callback from FA listener."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/f/c;->e:Ljava/util/concurrent/CountDownLatch;

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
