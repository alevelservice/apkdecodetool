.class public Lcom/facebook/fresco/animation/bitmap/c/a;
.super Ljava/lang/Object;
.source "FrescoFrameCache.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/a;


# static fields
.field private static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Le/f/i/a/c/c;

.field private final b:Z

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/c/a;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/c/a;->e:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/f/i/a/c/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    .line 3
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->b:Z

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static a(Le/f/c/g/a;)Le/f/c/g/a;
    .locals 1
    .param p0    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 22
    :try_start_0
    invoke-static {p0}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Le/f/i/g/d;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/g/d;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Le/f/i/g/d;->l()Le/f/c/g/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {p0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 27
    throw v0
.end method

.method private static b(Le/f/c/g/a;)Le/f/c/g/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 11
    new-instance v0, Le/f/i/g/d;

    sget-object v1, Le/f/i/g/g;->d:Le/f/i/g/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Le/f/i/g/d;-><init>(Le/f/c/g/a;Le/f/i/g/h;I)V

    .line 12
    invoke-static {v0}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/g/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 5
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/c/a;->e:Ljava/lang/Class;

    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    .line 7
    invoke-static {v0, v1, p1, v2}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(III)Le/f/c/g/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    invoke-virtual {p1}, Le/f/i/a/c/c;->a()Le/f/c/g/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/c/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILe/f/c/g/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    .line 6
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/bitmap/c/a;->b(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_0

    .line 7
    :try_start_2
    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    .line 10
    invoke-virtual {p2, p1, p3}, Le/f/i/a/c/c;->a(ILe/f/c/g/a;)Le/f/c/g/a;

    move-result-object p2

    .line 11
    invoke-static {p2}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/g/a;

    .line 13
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 14
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/c/a;->e:Ljava/lang/Class;

    const-string v0, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    .line 17
    invoke-static {p2, v0, p1, v1}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :cond_1
    :try_start_4
    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_5
    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 21
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(I)Z
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    invoke-virtual {v0, p1}, Le/f/i/a/c/c;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    invoke-virtual {v0, p1}, Le/f/i/a/c/c;->b(I)Le/f/c/g/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/c/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ILe/f/c/g/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/c/a;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/bitmap/c/a;->b(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->d:Le/f/c/g/a;

    invoke-static {p2}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 6
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->a:Le/f/i/a/c/c;

    invoke-virtual {p2, p1, p3}, Le/f/i/a/c/c;->a(ILe/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->d:Le/f/c/g/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :try_start_2
    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 10
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(I)Le/f/c/g/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->d:Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/c/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->d:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->d:Le/f/c/g/a;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/c/g/a;

    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
