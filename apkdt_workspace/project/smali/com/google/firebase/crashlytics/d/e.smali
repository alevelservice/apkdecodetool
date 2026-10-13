.class public Lcom/google/firebase/crashlytics/d/e;
.super Ljava/lang/Object;
.source "Onboarding.java"


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/j/c;

.field private final b:Lcom/google/firebase/c;

.field private final c:Landroid/content/Context;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/pm/PackageInfo;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/firebase/crashlytics/d/h/y;

.field private m:Lcom/google/firebase/crashlytics/d/h/t;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/h/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/j/c;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/j/c;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/e;->a:Lcom/google/firebase/crashlytics/d/j/c;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/e;->b:Lcom/google/firebase/c;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/e;->l:Lcom/google/firebase/crashlytics/d/h/y;

    .line 6
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/e;->m:Lcom/google/firebase/crashlytics/d/h/t;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/o/i/a;
    .locals 14

    move-object v0, p0

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/e;->a()Landroid/content/Context;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    .line 29
    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/e;->h:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/e;->g:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 30
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 31
    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/e;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/v;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/v;->getId()I

    move-result v11

    .line 32
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/e;->d()Lcom/google/firebase/crashlytics/d/h/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/y;->b()Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v1, Lcom/google/firebase/crashlytics/d/o/i/a;

    iget-object v7, v0, Lcom/google/firebase/crashlytics/d/e;->h:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/crashlytics/d/e;->g:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/firebase/crashlytics/d/e;->j:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/firebase/crashlytics/d/e;->k:Ljava/lang/String;

    const-string v13, "0"

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lcom/google/firebase/crashlytics/d/o/i/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/e;Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/o/d;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/d/e;->a(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/o/d;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/o/d;Ljava/util/concurrent/Executor;Z)V
    .locals 2

    .line 14
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->a:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0, p1, p2, p5}, Lcom/google/firebase/crashlytics/d/e;->a(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    sget-object p1, Lcom/google/firebase/crashlytics/d/o/c;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/d/o/c;

    invoke-virtual {p3, p1, p4}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/c;Ljava/util/concurrent/Executor;)Le/i/b/b/d/h;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Failed to create app with Crashlytics service."

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->a:Ljava/lang/String;

    const-string v1, "configured"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    sget-object p1, Lcom/google/firebase/crashlytics/d/o/c;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/d/o/c;

    invoke-virtual {p3, p1, p4}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/c;Ljava/util/concurrent/Executor;)Le/i/b/b/d/h;

    goto :goto_0

    .line 20
    :cond_2
    iget-boolean p3, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->f:Z

    if-eqz p3, :cond_3

    .line 21
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    const-string p4, "Server says an update is required - forcing a full App update."

    invoke-virtual {p3, p4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p5}, Lcom/google/firebase/crashlytics/d/e;->b(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Z)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Z)Z
    .locals 4

    .line 23
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/crashlytics/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/o/i/a;

    move-result-object p2

    .line 24
    new-instance v0, Lcom/google/firebase/crashlytics/d/o/j/c;

    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/e;->a:Lcom/google/firebase/crashlytics/d/j/c;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/d/o/j/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/c;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/crashlytics/d/o/j/c;->a(Lcom/google/firebase/crashlytics/d/o/i/a;Z)Z

    move-result p1

    return p1
.end method

.method private b(Lcom/google/firebase/crashlytics/d/o/i/b;Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/crashlytics/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/o/i/a;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/o/j/f;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/e;->a:Lcom/google/firebase/crashlytics/d/j/c;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/d/o/j/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/c;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/crashlytics/d/o/j/f;->a(Lcom/google/firebase/crashlytics/d/o/i/a;Z)Z

    move-result p1

    return p1
.end method

.method private d()Lcom/google/firebase/crashlytics/d/h/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/e;->l:Lcom/google/firebase/crashlytics/d/h/y;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/m;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/firebase/c;Ljava/util/concurrent/Executor;)Lcom/google/firebase/crashlytics/d/o/d;
    .locals 8

    .line 8
    invoke-virtual {p2}, Lcom/google/firebase/c;->d()Lcom/google/firebase/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/e;->l:Lcom/google/firebase/crashlytics/d/h/y;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/e;->a:Lcom/google/firebase/crashlytics/d/j/c;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/d/e;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/d/e;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/e;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/crashlytics/d/e;->m:Lcom/google/firebase/crashlytics/d/h/t;

    move-object v0, p1

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/google/firebase/crashlytics/d/o/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/t;)Lcom/google/firebase/crashlytics/d/o/d;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/d/o/d;->a(Ljava/util/concurrent/Executor;)Le/i/b/b/d/h;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/crashlytics/d/e$c;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/e$c;-><init>(Lcom/google/firebase/crashlytics/d/e;)V

    .line 13
    invoke-virtual {p2, p3, v0}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    return-object p1
.end method

.method public a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/o/d;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/e;->b:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->d()Lcom/google/firebase/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->m:Lcom/google/firebase/crashlytics/d/h/t;

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/t;->c()Le/i/b/b/d/h;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/d/e$b;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/crashlytics/d/e$b;-><init>(Lcom/google/firebase/crashlytics/d/e;Lcom/google/firebase/crashlytics/d/o/d;)V

    .line 6
    invoke-virtual {v1, p1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/d/e$a;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/e$a;-><init>(Lcom/google/firebase/crashlytics/d/e;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/o/d;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-virtual {v1, p1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;)Le/i/b/b/d/h;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->l:Lcom/google/firebase/crashlytics/d/h/y;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/y;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->i:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->d:Landroid/content/pm/PackageManager;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->e:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->d:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->f:Landroid/content/pm/PackageInfo;

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->f:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->g:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->f:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->f:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->h:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->d:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->j:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/e;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Failed init"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
