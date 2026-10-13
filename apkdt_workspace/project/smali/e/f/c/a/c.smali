.class public Le/f/c/a/c;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Le/f/c/a/b;


# static fields
.field private static a:Le/f/c/a/c;
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

.method public static declared-synchronized a()Le/f/c/a/c;
    .locals 2

    const-class v0, Le/f/c/a/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/f/c/a/c;->a:Le/f/c/a/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/f/c/a/c;

    invoke-direct {v1}, Le/f/c/a/c;-><init>()V

    sput-object v1, Le/f/c/a/c;->a:Le/f/c/a/c;

    .line 3
    :cond_0
    sget-object v1, Le/f/c/a/c;->a:Le/f/c/a/c;
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
.method public a(Le/f/c/a/a;)V
    .locals 0

    return-void
.end method
