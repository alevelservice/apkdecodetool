.class public Le/f/b/a/g;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Le/f/b/a/a;


# static fields
.field private static a:Le/f/b/a/g;
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

.method public static declared-synchronized a()Le/f/b/a/g;
    .locals 2

    const-class v0, Le/f/b/a/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/f/b/a/g;->a:Le/f/b/a/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/f/b/a/g;

    invoke-direct {v1}, Le/f/b/a/g;-><init>()V

    sput-object v1, Le/f/b/a/g;->a:Le/f/b/a/g;

    .line 3
    :cond_0
    sget-object v1, Le/f/b/a/g;->a:Le/f/b/a/g;
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
.method public a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/a$a;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method
