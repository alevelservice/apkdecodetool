.class public Lcom/google/firebase/crashlytics/c;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/h/m;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/d/h/m;)V
    .locals 0
    .param p1    # Lcom/google/firebase/crashlytics/d/h/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    return-void
.end method

.method static a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/k/a/a;)Lcom/google/firebase/crashlytics/c;
    .locals 16
    .param p0    # Lcom/google/firebase/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/installations/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crashlytics/d/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/k/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object v9

    .line 2
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/y;

    move-object/from16 v3, p1

    invoke-direct {v2, v9, v1, v3}, Lcom/google/firebase/crashlytics/d/h/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/g;)V

    .line 4
    new-instance v4, Lcom/google/firebase/crashlytics/d/h/t;

    invoke-direct {v4, v8}, Lcom/google/firebase/crashlytics/d/h/t;-><init>(Lcom/google/firebase/c;)V

    if-nez p2, :cond_0

    .line 5
    new-instance v1, Lcom/google/firebase/crashlytics/d/c;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/d/c;-><init>()V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 6
    :goto_0
    new-instance v11, Lcom/google/firebase/crashlytics/d/e;

    invoke-direct {v11, v8, v9, v2, v4}, Lcom/google/firebase/crashlytics/d/e;-><init>(Lcom/google/firebase/c;Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/h/t;)V

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v5, "Firebase Analytics is available."

    invoke-virtual {v1, v5}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/google/firebase/crashlytics/d/f/e;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/d/f/e;-><init>(Lcom/google/firebase/k/a/a;)V

    .line 9
    new-instance v5, Lcom/google/firebase/crashlytics/a;

    invoke-direct {v5}, Lcom/google/firebase/crashlytics/a;-><init>()V

    .line 10
    invoke-static {v0, v5}, Lcom/google/firebase/crashlytics/c;->a(Lcom/google/firebase/k/a/a;Lcom/google/firebase/crashlytics/a;)Lcom/google/firebase/k/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v6, "Firebase Analytics listener registered successfully."

    invoke-virtual {v0, v6}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/google/firebase/crashlytics/d/f/d;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/f/d;-><init>()V

    .line 13
    new-instance v6, Lcom/google/firebase/crashlytics/d/f/c;

    const/16 v7, 0x1f4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v6, v1, v7, v10}, Lcom/google/firebase/crashlytics/d/f/c;-><init>(Lcom/google/firebase/crashlytics/d/f/e;ILjava/util/concurrent/TimeUnit;)V

    .line 14
    invoke-virtual {v5, v0}, Lcom/google/firebase/crashlytics/a;->a(Lcom/google/firebase/crashlytics/d/f/b;)V

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/a;->b(Lcom/google/firebase/crashlytics/d/f/b;)V

    move-object v1, v6

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v5, "Firebase Analytics listener registration failed."

    invoke-virtual {v0, v5}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/google/firebase/crashlytics/d/g/c;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/g/c;-><init>()V

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Firebase Analytics is unavailable."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/google/firebase/crashlytics/d/g/c;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/g/c;-><init>()V

    .line 20
    new-instance v1, Lcom/google/firebase/crashlytics/d/f/f;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/d/f/f;-><init>()V

    :goto_1
    move-object v5, v0

    move-object v6, v1

    const-string v0, "Crashlytics Exception Handler"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/w;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 22
    new-instance v15, Lcom/google/firebase/crashlytics/d/h/m;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/crashlytics/d/h/m;-><init>(Lcom/google/firebase/c;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/h/t;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/d/f/a;Ljava/util/concurrent/ExecutorService;)V

    .line 23
    invoke-virtual {v11}, Lcom/google/firebase/crashlytics/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Unable to start Crashlytics."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-string v0, "com.google.firebase.crashlytics.startup"

    .line 25
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/w;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 26
    invoke-virtual {v11, v9, v8, v0}, Lcom/google/firebase/crashlytics/d/e;->a(Landroid/content/Context;Lcom/google/firebase/c;Ljava/util/concurrent/Executor;)Lcom/google/firebase/crashlytics/d/o/d;

    move-result-object v13

    .line 27
    invoke-virtual {v15, v13}, Lcom/google/firebase/crashlytics/d/h/m;->b(Lcom/google/firebase/crashlytics/d/o/e;)Z

    move-result v14

    .line 28
    new-instance v1, Lcom/google/firebase/crashlytics/c$a;

    move-object v10, v1

    move-object v12, v0

    move-object v2, v15

    invoke-direct/range {v10 .. v15}, Lcom/google/firebase/crashlytics/c$a;-><init>(Lcom/google/firebase/crashlytics/d/e;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crashlytics/d/o/d;ZLcom/google/firebase/crashlytics/d/h/m;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    .line 29
    new-instance v0, Lcom/google/firebase/crashlytics/c;

    invoke-direct {v0, v2}, Lcom/google/firebase/crashlytics/c;-><init>(Lcom/google/firebase/crashlytics/d/h/m;)V

    return-object v0
.end method

.method private static a(Lcom/google/firebase/k/a/a;Lcom/google/firebase/crashlytics/a;)Lcom/google/firebase/k/a/a$a;
    .locals 2
    .param p0    # Lcom/google/firebase/k/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/crashlytics/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "clx"

    .line 30
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/k/a/a;->a(Ljava/lang/String;Lcom/google/firebase/k/a/a$b;)Lcom/google/firebase/k/a/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const-string v0, "crash"

    .line 33
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/k/a/a;->a(Ljava/lang/String;Lcom/google/firebase/k/a/a$b;)Lcom/google/firebase/k/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static e()Lcom/google/firebase/crashlytics/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/crashlytics/c;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FirebaseCrashlytics component is not present."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Le/i/b/b/d/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/m;->a()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 36
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Crashlytics is ignoring a request to log a null exception."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/m;->b()Le/i/b/b/d/h;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/m;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c;->a:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/m;->g()Le/i/b/b/d/h;

    return-void
.end method
