.class public Le/f/i/c/t;
.super Ljava/lang/Object;
.source "NoOpImageCacheStatsTracker.java"

# interfaces
.implements Le/f/i/c/n;


# static fields
.field private static a:Le/f/i/c/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized h()Le/f/i/c/t;
    .locals 2

    const-class v0, Le/f/i/c/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/f/i/c/t;->a:Le/f/i/c/t;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/f/i/c/t;

    invoke-direct {v1}, Le/f/i/c/t;-><init>()V

    sput-object v1, Le/f/i/c/t;->a:Le/f/i/c/t;

    .line 3
    :cond_0
    sget-object v1, Le/f/i/c/t;->a:Le/f/i/c/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Le/f/b/a/d;)V
    .locals 0

    return-void
.end method

.method public a(Le/f/i/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Le/f/b/a/d;)V
    .locals 0

    return-void
.end method

.method public b(Le/f/i/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Le/f/b/a/d;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Le/f/b/a/d;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
