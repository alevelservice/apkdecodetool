.class public Le/f/b/a/h;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Le/f/b/a/c;


# static fields
.field private static a:Le/f/b/a/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Le/f/b/a/h;
    .locals 2

    const-class v0, Le/f/b/a/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/f/b/a/h;->a:Le/f/b/a/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/f/b/a/h;

    invoke-direct {v1}, Le/f/b/a/h;-><init>()V

    sput-object v1, Le/f/b/a/h;->a:Le/f/b/a/h;

    .line 3
    :cond_0
    sget-object v1, Le/f/b/a/h;->a:Le/f/b/a/h;
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
.method public a(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public b(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public c(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public d(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public e(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public f(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method

.method public g(Le/f/b/a/b;)V
    .locals 0

    return-void
.end method
