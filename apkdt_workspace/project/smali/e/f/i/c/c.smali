.class public Le/f/i/c/c;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.java"

# interfaces
.implements Le/f/b/a/d;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/imagepipeline/common/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final d:Lcom/facebook/imagepipeline/common/b;

.field private final e:Le/f/b/a/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/b;Le/f/b/a/d;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Le/f/b/a/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p7, p1

    check-cast p7, Ljava/lang/String;

    iput-object p7, p0, Le/f/i/c/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/f/i/c/c;->b:Lcom/facebook/imagepipeline/common/e;

    .line 4
    iput-object p3, p0, Le/f/i/c/c;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 5
    iput-object p4, p0, Le/f/i/c/c;->d:Lcom/facebook/imagepipeline/common/b;

    .line 6
    iput-object p5, p0, Le/f/i/c/c;->e:Le/f/b/a/d;

    .line 7
    iput-object p6, p0, Le/f/i/c/c;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/common/RotationOptions;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Le/f/i/c/c;->d:Lcom/facebook/imagepipeline/common/b;

    iget-object v4, p0, Le/f/i/c/c;->e:Le/f/b/a/d;

    move-object v5, p6

    .line 11
    invoke-static/range {v0 .. v5}, Le/f/c/j/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Le/f/i/c/c;->g:I

    .line 12
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    return-void

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/common/e;->hashCode()I

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/i/c/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Le/f/i/c/c;

    .line 3
    iget v0, p0, Le/f/i/c/c;->g:I

    iget v2, p1, Le/f/i/c/c;->g:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->a:Ljava/lang/String;

    iget-object v2, p1, Le/f/i/c/c;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->b:Lcom/facebook/imagepipeline/common/e;

    iget-object v2, p1, Le/f/i/c/c;->b:Lcom/facebook/imagepipeline/common/e;

    .line 5
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v2, p1, Le/f/i/c/c;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 6
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->d:Lcom/facebook/imagepipeline/common/b;

    iget-object v2, p1, Le/f/i/c/c;->d:Lcom/facebook/imagepipeline/common/b;

    .line 7
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->e:Le/f/b/a/d;

    iget-object v2, p1, Le/f/i/c/c;->e:Le/f/b/a/d;

    .line 8
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/i/c/c;->f:Ljava/lang/String;

    iget-object p1, p1, Le/f/i/c/c;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0, p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/c/c;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/f/i/c/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/f/i/c/c;->b:Lcom/facebook/imagepipeline/common/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/f/i/c/c;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/f/i/c/c;->d:Lcom/facebook/imagepipeline/common/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/f/i/c/c;->e:Le/f/b/a/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/f/i/c/c;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Le/f/i/c/c;->g:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "%s_%s_%s_%s_%s_%s_%d"

    .line 3
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
