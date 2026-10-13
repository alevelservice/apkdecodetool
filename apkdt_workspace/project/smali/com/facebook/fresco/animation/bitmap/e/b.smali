.class public Lcom/facebook/fresco/animation/bitmap/e/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/b;


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
.field private final a:Lcom/facebook/fresco/animation/bitmap/a;

.field private b:Le/f/i/a/a/a;

.field private c:Le/f/i/a/c/d;

.field private final d:Le/f/i/a/c/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/e/b;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/e/b;->e:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/bitmap/a;Le/f/i/a/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/e/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/bitmap/e/b$a;-><init>(Lcom/facebook/fresco/animation/bitmap/e/b;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->d:Le/f/i/a/c/d$b;

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->a:Lcom/facebook/fresco/animation/bitmap/a;

    .line 4
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    .line 5
    new-instance p1, Le/f/i/a/c/d;

    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->d:Le/f/i/a/c/d$b;

    invoke-direct {p1, p2, v0}, Le/f/i/a/c/d;-><init>(Le/f/i/a/a/a;Le/f/i/a/c/d$b;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->c:Le/f/i/a/c/d;

    return-void
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/bitmap/e/b;)Lcom/facebook/fresco/animation/bitmap/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->a:Lcom/facebook/fresco/animation/bitmap/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    invoke-interface {v0, p1}, Le/f/i/a/a/a;->a(Landroid/graphics/Rect;)Le/f/i/a/a/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    if-eq p1, v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    .line 5
    new-instance p1, Le/f/i/a/c/d;

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->d:Le/f/i/a/c/d$b;

    invoke-direct {p1, v0, v1}, Le/f/i/a/c/d;-><init>(Le/f/i/a/a/a;Le/f/i/a/c/d$b;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->c:Le/f/i/a/c/d;

    :cond_0
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->c:Le/f/i/a/c/d;

    invoke-virtual {v1, p1, p2}, Le/f/i/a/c/d;->a(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    .line 7
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/e/b;->e:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Rendering of frame unsuccessful. Frame number: %d"

    invoke-static {v1, p2, p1, v0}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    invoke-interface {v0}, Le/f/i/a/a/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b;->b:Le/f/i/a/a/a;

    invoke-interface {v0}, Le/f/i/a/a/a;->getWidth()I

    move-result v0

    return v0
.end method
