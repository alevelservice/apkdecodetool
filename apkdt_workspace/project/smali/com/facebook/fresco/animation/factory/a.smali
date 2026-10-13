.class public Lcom/facebook/fresco/animation/factory/a;
.super Ljava/lang/Object;
.source "ExperimentalBitmapAnimationDrawableFactory.java"

# interfaces
.implements Le/f/i/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/factory/a$a;
    }
.end annotation


# instance fields
.field private final a:Le/f/i/a/c/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/facebook/common/time/b;

.field private final e:Le/f/i/b/f;

.field private final f:Le/f/i/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/a/c/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/b;Le/f/i/b/f;Le/f/i/c/h;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/a/c/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/b;",
            "Le/f/i/b/f;",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->a:Le/f/i/a/c/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/b;

    .line 6
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/a;->e:Le/f/i/b/f;

    .line 7
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/a;->f:Le/f/i/c/h;

    .line 8
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/j;

    .line 9
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/j;

    return-void
.end method

.method private a(Lcom/facebook/fresco/animation/bitmap/b;)Lcom/facebook/fresco/animation/bitmap/d/b;
    .locals 4

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/d/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->e:Le/f/i/b/f;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/d/c;-><init>(Le/f/i/b/f;Lcom/facebook/fresco/animation/bitmap/b;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private a(Le/f/i/a/a/e;)Le/f/i/a/a/a;
    .locals 4

    .line 3
    invoke-virtual {p1}, Le/f/i/a/a/e;->b()Le/f/i/a/a/c;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {v0}, Le/f/i/a/a/c;->getWidth()I

    move-result v2

    invoke-interface {v0}, Le/f/i/a/a/c;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->a:Le/f/i/a/c/b;

    invoke-interface {v0, p1, v1}, Le/f/i/a/c/b;->a(Le/f/i/a/a/e;Landroid/graphics/Rect;)Le/f/i/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method private b(Le/f/i/a/a/e;)Le/f/i/a/c/c;
    .locals 2

    .line 5
    new-instance v0, Le/f/i/a/c/c;

    new-instance v1, Lcom/facebook/fresco/animation/factory/a$a;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/factory/a$a;-><init>(I)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->f:Le/f/i/c/h;

    invoke-direct {v0, v1, p1}, Le/f/i/a/c/c;-><init>(Le/f/b/a/d;Le/f/i/c/h;)V

    return-object v0
.end method

.method private c(Le/f/i/a/a/e;)Le/f/g/a/a/a;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->a(Le/f/i/a/a/e;)Le/f/i/a/a/a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Le/f/i/a/a/e;)Lcom/facebook/fresco/animation/bitmap/a;

    move-result-object v3

    .line 3
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/e/b;

    invoke-direct {v5, v3, v0}, Lcom/facebook/fresco/animation/bitmap/e/b;-><init>(Lcom/facebook/fresco/animation/bitmap/a;Le/f/i/a/a/a;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/j;

    invoke-interface {p1}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 5
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/d/d;

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/bitmap/d/d;-><init>(I)V

    .line 6
    invoke-direct {p0, v5}, Lcom/facebook/fresco/animation/factory/a;->a(Lcom/facebook/fresco/animation/bitmap/b;)Lcom/facebook/fresco/animation/bitmap/d/b;

    move-result-object p1

    move-object v7, p1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v7, v6

    .line 7
    :goto_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->e:Le/f/i/b/f;

    new-instance v4, Lcom/facebook/fresco/animation/bitmap/e/a;

    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/bitmap/e/a;-><init>(Le/f/i/a/a/a;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Le/f/i/b/f;Lcom/facebook/fresco/animation/bitmap/a;Le/f/g/a/a/d;Lcom/facebook/fresco/animation/bitmap/b;Lcom/facebook/fresco/animation/bitmap/d/a;Lcom/facebook/fresco/animation/bitmap/d/b;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/b;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1}, Le/f/g/a/a/c;->a(Le/f/g/a/a/a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)Le/f/g/a/a/b;

    move-result-object p1

    return-object p1
.end method

.method private d(Le/f/i/a/a/e;)Lcom/facebook/fresco/animation/bitmap/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/j;

    invoke-interface {v0}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/c/c;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/c/c;-><init>()V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/c/b;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/c/b;-><init>()V

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/c/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->b(Le/f/i/a/a/e;)Le/f/i/a/c/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/c/a;-><init>(Le/f/i/a/c/c;Z)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/c/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->b(Le/f/i/a/a/e;)Le/f/i/a/c/c;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/c/a;-><init>(Le/f/i/a/c/c;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Le/f/i/g/c;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/f/i/g/a;

    return p1
.end method

.method public bridge synthetic b(Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->b(Le/f/i/g/c;)Le/f/g/a/b/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/f/i/g/c;)Le/f/g/a/b/a;
    .locals 1

    .line 2
    new-instance v0, Le/f/g/a/b/a;

    check-cast p1, Le/f/i/g/a;

    .line 3
    invoke-virtual {p1}, Le/f/i/g/a;->l()Le/f/i/a/a/e;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Le/f/i/a/a/e;)Le/f/g/a/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Le/f/g/a/b/a;-><init>(Le/f/g/a/a/a;)V

    return-object v0
.end method
