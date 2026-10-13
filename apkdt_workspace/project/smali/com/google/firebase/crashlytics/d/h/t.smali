.class public Lcom/google/firebase/crashlytics/d/h/t;
.super Ljava/lang/Object;
.source "DataCollectionArbiter.java"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/google/firebase/c;

.field private final c:Ljava/lang/Object;

.field d:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private f:Z

.field private g:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Le/i/b/b/d/i;

    invoke-direct {v0}, Le/i/b/b/d/i;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->d:Le/i/b/b/d/i;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    .line 6
    new-instance v0, Le/i/b/b/d/i;

    invoke-direct {v0}, Le/i/b/b/d/i;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->h:Le/i/b/b/d/i;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object v0

    .line 8
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->b:Lcom/google/firebase/c;

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->a:Landroid/content/SharedPreferences;

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/t;->d()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/t;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->g:Ljava/lang/Boolean;

    .line 13
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->d:Le/i/b/b/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    .line 17
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/t;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "firebase_crashlytics_collection_enabled"

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "firebase_crashlytics_collection_enabled"

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 11
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Unable to get PackageManager. Falling through"

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string p1, "DISABLED"

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "global Firebase setting"

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_1

    :cond_2
    const-string v0, "API"

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Crashlytics automatic data collection %s by %s."

    .line 7
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->a:Landroid/content/SharedPreferences;

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->f:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->b:Lcom/google/firebase/c;

    invoke-virtual {v1}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/d/h/t;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->g:Ljava/lang/Boolean;

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->a:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/d/h/t;->a(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    .line 9
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/t;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->d:Le/i/b/b/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    goto :goto_2

    .line 14
    :cond_2
    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    if-eqz v1, :cond_3

    .line 15
    new-instance v1, Le/i/b/b/d/i;

    invoke-direct {v1}, Le/i/b/b/d/i;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->d:Le/i/b/b/d/i;

    .line 16
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->e:Z

    .line 17
    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/t;->h:Le/i/b/b/d/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An invalid data collection token was used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->b:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->f()Z

    move-result v0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/t;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/t;->d:Le/i/b/b/d/i;

    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v1

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

.method public c()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/t;->h:Le/i/b/b/d/i;

    .line 2
    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/t;->b()Le/i/b/b/d/h;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Le/i/b/b/d/h;Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
