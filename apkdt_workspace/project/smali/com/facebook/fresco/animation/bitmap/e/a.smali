.class public Lcom/facebook/fresco/animation/bitmap/e/a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendAnimationInformation.java"

# interfaces
.implements Le/f/g/a/a/d;


# instance fields
.field private final a:Le/f/i/a/a/a;


# direct methods
.method public constructor <init>(Le/f/i/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/e/a;->a:Le/f/i/a/a/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/a;->a:Le/f/i/a/a/a;

    invoke-interface {v0}, Le/f/i/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/a;->a:Le/f/i/a/a/a;

    invoke-interface {v0, p1}, Le/f/i/a/a/a;->b(I)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/e/a;->a:Le/f/i/a/a/a;

    invoke-interface {v0}, Le/f/i/a/a/a;->b()I

    move-result v0

    return v0
.end method
