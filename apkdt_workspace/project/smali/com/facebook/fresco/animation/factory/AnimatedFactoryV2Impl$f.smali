.class Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Le/f/i/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a()Le/f/i/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/a/a/e;Landroid/graphics/Rect;)Le/f/i/a/a/a;
    .locals 3

    .line 1
    new-instance v0, Le/f/i/a/c/a;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 2
    invoke-static {v1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Le/f/i/a/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 3
    invoke-static {v2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Le/f/i/a/c/a;-><init>(Le/f/i/a/d/a;Le/f/i/a/a/e;Landroid/graphics/Rect;Z)V

    return-object v0
.end method
