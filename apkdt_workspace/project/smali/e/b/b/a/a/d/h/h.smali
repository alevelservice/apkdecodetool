.class public Le/b/b/a/a/d/h/h;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"


# static fields
.field private static b:Le/b/b/a/a/d/h/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Le/b/b/a/a/d/h/h;
    .locals 2

    const-class v0, Le/b/b/a/a/d/h/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/b/b/a/a/d/h/h;->b:Le/b/b/a/a/d/h/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/b/b/a/a/d/h/h;

    invoke-direct {v1, p0}, Le/b/b/a/a/d/h/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/b/b/a/a/d/h/h;->b:Le/b/b/a/a/d/h/h;

    .line 3
    sget-object p0, Le/b/b/a/a/d/h/h;->b:Le/b/b/a/a/d/h/h;

    invoke-static {}, Le/b/b/a/a/d/h/e;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/b/b/a/a/d/h/h;->a:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p0, Le/b/b/a/a/d/h/h;->b:Le/b/b/a/a/d/h/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
