.class public Le/f/c/f/d;
.super Ljava/lang/Object;
.source "NoOpMemoryTrimmableRegistry.java"

# interfaces
.implements Le/f/c/f/c;


# static fields
.field private static a:Le/f/c/f/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Le/f/c/f/d;
    .locals 2

    const-class v0, Le/f/c/f/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/f/c/f/d;->a:Le/f/c/f/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/f/c/f/d;

    invoke-direct {v1}, Le/f/c/f/d;-><init>()V

    sput-object v1, Le/f/c/f/d;->a:Le/f/c/f/d;

    .line 3
    :cond_0
    sget-object v1, Le/f/c/f/d;->a:Le/f/c/f/d;
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
.method public a(Le/f/c/f/b;)V
    .locals 0

    return-void
.end method
