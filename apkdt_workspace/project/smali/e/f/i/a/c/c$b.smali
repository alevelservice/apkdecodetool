.class Le/f/i/a/c/c$b;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Le/f/b/a/d;


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Le/f/b/a/d;

.field private final b:I


# direct methods
.method public constructor <init>(Le/f/b/a/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/a/c/c$b;->a:Le/f/b/a/d;

    .line 3
    iput p2, p0, Le/f/i/a/c/c$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/f/i/a/c/c$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/f/i/a/c/c$b;

    .line 3
    iget v1, p0, Le/f/i/a/c/c$b;->b:I

    iget v3, p1, Le/f/i/a/c/c$b;->b:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Le/f/i/a/c/c$b;->a:Le/f/b/a/d;

    iget-object p1, p1, Le/f/i/a/c/c$b;->a:Le/f/b/a/d;

    .line 4
    invoke-interface {v1, p1}, Le/f/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/i/a/c/c$b;->a:Le/f/b/a/d;

    invoke-interface {v0}, Le/f/b/a/d;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Le/f/i/a/c/c$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Le/f/i/a/c/c$b;->a:Le/f/b/a/d;

    const-string v2, "imageCacheKey"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget v1, p0, Le/f/i/a/c/c$b;->b:I

    const-string v2, "frameIndex"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/g$b;

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
