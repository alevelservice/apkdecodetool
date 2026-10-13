.class public Lcom/facebook/imagepipeline/core/b;
.super Ljava/lang/Object;
.source "DiskStorageCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/f;


# instance fields
.field private a:Lcom/facebook/imagepipeline/core/c;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/b;->a:Lcom/facebook/imagepipeline/core/c;

    return-void
.end method

.method public static a(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/core/b;->a(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;
    .locals 11

    .line 2
    new-instance v7, Lcom/facebook/cache/disk/d$c;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->k()J

    move-result-wide v1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->j()J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->f()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/cache/disk/d$c;-><init>(JJJ)V

    .line 6
    new-instance v10, Lcom/facebook/cache/disk/d;

    .line 7
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->h()Lcom/facebook/cache/disk/g;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->d()Le/f/b/a/c;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->c()Le/f/b/a/a;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->g()Le/f/c/a/b;

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->e()Landroid/content/Context;

    move-result-object v8

    .line 12
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->i()Z

    move-result v9

    move-object v0, v10

    move-object v1, p1

    move-object v3, v7

    move-object v7, v8

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/cache/disk/d;-><init>(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/d$c;Le/f/b/a/c;Le/f/b/a/a;Le/f/c/a/b;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V

    return-object v10
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Lcom/facebook/imagepipeline/core/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/core/c;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/b;->a(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;

    move-result-object p1

    return-object p1
.end method
