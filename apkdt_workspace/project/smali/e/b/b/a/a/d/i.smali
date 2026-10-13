.class public Le/b/b/a/a/d/i;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static a:Le/b/b/a/a/a/f;

.field private static b:Le/b/b/a/a/a/d;

.field private static c:Le/b/b/a/a/d/d/b;

.field private static d:Le/b/b/a/a/d/d/b;


# direct methods
.method public static a()Le/b/b/a/a/a/d;
    .locals 1

    .line 13
    sget-object v0, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/a/d/d/c;

    invoke-direct {v0}, Le/b/b/a/a/d/d/c;-><init>()V

    sput-object v0, Le/b/b/a/a/d/i;->c:Le/b/b/a/a/d/d/b;

    .line 2
    new-instance v0, Le/b/b/a/a/d/d/a;

    invoke-direct {v0}, Le/b/b/a/a/d/d/a;-><init>()V

    sput-object v0, Le/b/b/a/a/d/i;->d:Le/b/b/a/a/d/d/b;

    .line 3
    new-instance v0, Le/b/b/a/a/d/j;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/b/b/a/a/d/i;->a:Le/b/b/a/a/a/f;

    .line 4
    new-instance v0, Le/b/b/a/a/d/c;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    .line 5
    invoke-static {p0}, Le/b/b/a/a/e/h;->a(Landroid/content/Context;)Le/b/b/a/a/e/h;

    .line 6
    invoke-static {}, Le/b/b/a/a/d/a/c;->c()Le/b/b/a/a/d/a/c;

    .line 7
    invoke-static {}, Le/b/b/a/a/c/b;->a()Le/b/b/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/b/b/a/a/c/b;->a(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Le/b/b/a/a/d/c$d;->a()Le/b/b/a/a/d/c$d;

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->e()V

    .line 10
    new-instance v0, Le/b/b/a/a/d/f/a;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    invoke-static {p0}, Le/b/b/a/a/d/i;->b(Landroid/app/Application;)V

    .line 12
    invoke-static {p0}, Le/b/b/a/a/d/h/h;->a(Landroid/content/Context;)Le/b/b/a/a/d/h/h;

    return-void
.end method

.method public static b()Le/b/b/a/a/a/f;
    .locals 1

    .line 6
    sget-object v0, Le/b/b/a/a/d/i;->a:Le/b/b/a/a/a/f;

    return-object v0
.end method

.method private static b(Landroid/app/Application;)V
    .locals 6

    const-string v0, "com.alipay.iap.android.aplog.core.logger.CrashLogBinder"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bind"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "init crashLog fail"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "LoggerFactory"

    invoke-interface {v0, v1, p0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized c()Le/b/b/a/a/d/d/b;
    .locals 2

    const-class v0, Le/b/b/a/a/d/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/b/b/a/a/d/i;->c:Le/b/b/a/a/d/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Le/b/b/a/a/d/d/b;
    .locals 2

    const-class v0, Le/b/b/a/a/d/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/b/b/a/a/d/i;->d:Le/b/b/a/a/d/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static e()V
    .locals 3

    .line 1
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/c;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/c;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "autouserbehavor"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 2
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/f;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/f;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "userbehavor"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 3
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/a;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/a;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "alivereport"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 4
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/h;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/h;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "pageMonitor"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 5
    new-instance v0, Le/b/b/a/a/d/c$b/g;

    sget-object v1, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v0, v1}, Le/b/b/a/a/d/c$b/g;-><init>(Le/b/b/a/a/a/d;)V

    .line 6
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v1

    const-string v2, "performance"

    invoke-virtual {v1, v2, v0}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 7
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v1

    const-string v2, "bizHighAvail"

    invoke-virtual {v1, v2, v0}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 8
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/b;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/b;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "apm"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 9
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/i;

    invoke-direct {v1}, Le/b/b/a/a/d/c$b/i;-><init>()V

    const-string v2, "applog"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    .line 10
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/c$b/d;

    sget-object v2, Le/b/b/a/a/d/i;->b:Le/b/b/a/a/a/d;

    invoke-direct {v1, v2}, Le/b/b/a/a/d/c$b/d;-><init>(Le/b/b/a/a/a/d;)V

    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/a/d/c$d;->a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V

    return-void
.end method
