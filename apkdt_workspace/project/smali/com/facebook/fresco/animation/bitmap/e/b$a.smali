.class Lcom/facebook/fresco/animation/bitmap/e/b$a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Le/f/i/a/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/bitmap/e/b;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/bitmap/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/b$a;->a:Lcom/facebook/fresco/animation/bitmap/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Le/f/c/g/a;
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

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/b$a;->a:Lcom/facebook/fresco/animation/bitmap/e/b;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/e/b;->a(Lcom/facebook/fresco/animation/bitmap/e/b;)Lcom/facebook/fresco/animation/bitmap/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/bitmap/a;->b(I)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
