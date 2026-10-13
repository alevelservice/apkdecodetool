.class public final Le/a/a/a/m;
.super Ljava/lang/Object;
.source "TBusBuilder.java"


# static fields
.field private static a:Le/a/a/a/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/a/a/a/k;
    .locals 2

    .line 1
    sget-object v0, Le/a/a/a/m;->a:Le/a/a/a/k;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/a/a/m;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/a/a/a/m;->a:Le/a/a/a/k;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/a/a/a/k;

    invoke-direct {v1}, Le/a/a/a/k;-><init>()V

    sput-object v1, Le/a/a/a/m;->a:Le/a/a/a/k;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Le/a/a/a/m;->a:Le/a/a/a/k;

    return-object v0
.end method
