.class public Lcom/facebook/fresco/animation/bitmap/c/b;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/a;


# instance fields
.field private a:I

.field private b:Lcom/facebook/fresco/animation/bitmap/a$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    if-eq v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    invoke-interface {v0, p0, v2}, Lcom/facebook/fresco/animation/bitmap/a$a;->a(Lcom/facebook/fresco/animation/bitmap/a;I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    .line 11
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/c/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/c/b;->a()V

    .line 5
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILe/f/c/g/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized a(I)Z
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ILe/f/c/g/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {p3}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 8
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 9
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I

    invoke-interface {p3, p0, v0}, Lcom/facebook/fresco/animation/bitmap/a$a;->a(Lcom/facebook/fresco/animation/bitmap/a;I)V

    .line 10
    :cond_1
    invoke-static {p2}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    .line 11
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->b:Lcom/facebook/fresco/animation/bitmap/a$a;

    invoke-interface {p2, p0, p1}, Lcom/facebook/fresco/animation/bitmap/a$a;->b(Lcom/facebook/fresco/animation/bitmap/a;I)V

    .line 13
    :cond_2
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
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
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/c/b;->c:Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

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
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/c/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
