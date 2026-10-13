.class public Le/b/b/a/b/c/a/b;
.super Ljava/lang/Object;
.source "UserInfoManager.java"


# static fields
.field private static c:Le/b/b/a/b/c/a/b;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/b/b/a/b/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/b/b/a/b/c/a/b;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/b/a/b/c/a/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Le/b/b/a/b/c/a/b;
    .locals 2

    .line 1
    const-class v0, Le/b/b/a/b/c/a/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/b/b/a/b/c/a/b;->c:Le/b/b/a/b/c/a/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le/b/b/a/b/c/a/b;

    invoke-direct {v1}, Le/b/b/a/b/c/a/b;-><init>()V

    sput-object v1, Le/b/b/a/b/c/a/b;->c:Le/b/b/a/b/c/a/b;

    .line 4
    :cond_0
    sget-object v1, Le/b/b/a/b/c/a/b;->c:Le/b/b/a/b/c/a/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Le/b/b/a/b/c/a/a;)V
    .locals 2

    .line 6
    iget-object v0, p0, Le/b/b/a/b/c/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 7
    :try_start_0
    iget-object v1, p0, Le/b/b/a/b/c/a/b;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/b/b/a/b/c/a/b;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Le/b/b/a/b/c/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
