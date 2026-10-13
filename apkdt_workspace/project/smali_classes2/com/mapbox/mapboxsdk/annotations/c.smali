.class Lcom/mapbox/mapboxsdk/annotations/c;
.super Landroid/graphics/drawable/Drawable;
.source "Bubble.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/annotations/b;FFFFIFI)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/annotations/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->f:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->j:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    .line 5
    iput p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    .line 6
    iput p4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    .line 7
    iput p5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    .line 8
    iput p6, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    .line 9
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iput p8, p0, Lcom/mapbox/mapboxsdk/annotations/c;->g:F

    const/4 p1, 0x0

    cmpl-float p3, p8, p1

    if-lez p3, :cond_0

    .line 11
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->h:Landroid/graphics/Paint;

    .line 12
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p3, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->i:Landroid/graphics/Path;

    .line 14
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->j:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p8}, Lcom/mapbox/mapboxsdk/annotations/c;->a(Lcom/mapbox/mapboxsdk/annotations/b;Landroid/graphics/Path;F)V

    .line 15
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->i:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/annotations/c;->a(Lcom/mapbox/mapboxsdk/annotations/b;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->j:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/annotations/c;->a(Lcom/mapbox/mapboxsdk/annotations/b;Landroid/graphics/Path;F)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 8
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float v5, v4, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 21
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v4, v2, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    iget v6, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v3, v6

    sub-float/2addr v2, p3

    sub-float/2addr v5, v6

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 23
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v0, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, p3

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    div-float/2addr v4, v2

    add-float/2addr v0, v4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v6, v4, v5

    iget v7, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v2

    sub-float/2addr v4, v7

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 28
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v4

    add-float/2addr v4, p1

    invoke-direct {v0, v3, p3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/annotations/b;Landroid/graphics/Path;F)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/b;->a()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->b(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto/16 :goto_0

    :cond_1
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->b(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->a(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->h(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    :cond_4
    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->h(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->g(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 10
    :cond_6
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->f(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    :cond_7
    cmpl-float v0, p3, v0

    if-lez v0, :cond_8

    cmpl-float p1, p3, p1

    if-lez p1, :cond_8

    .line 12
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->f(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->e(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 14
    :cond_9
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 15
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->d(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    :cond_a
    cmpl-float v0, p3, v0

    if-lez v0, :cond_b

    cmpl-float p1, p3, p1

    if-lez p1, :cond_b

    .line 16
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->d(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    goto :goto_0

    .line 17
    :cond_b
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/c;->c(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    sub-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 8
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float v5, v4, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v4, v2, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    sub-float/2addr v2, p3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float v4, v2, v3

    add-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v7, v5, v6

    add-float/2addr v6, v2

    add-float/2addr v6, v3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v7, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float v4, v2, v3

    add-float/2addr v4, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v5

    add-float/2addr v2, v3

    add-float/2addr v5, p1

    invoke-direct {v0, v4, p3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private d(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private e(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v3, v1, v2

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float v6, v5, p3

    sub-float/2addr v1, v4

    sub-float/2addr v1, p3

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v4, v2, v3

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v4, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v6, v3

    sub-float/2addr v2, v5

    sub-float/2addr v2, p3

    sub-float/2addr v6, p3

    invoke-direct {v0, v4, v3, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v6, v4, v5

    add-float/2addr v5, v2

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v4

    add-float/2addr v4, p1

    invoke-direct {v0, v3, p3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private f(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private g(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float v6, v4, v5

    add-float/2addr v6, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v4, v2, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    sub-float/2addr v2, p3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    sub-float v6, v4, v5

    add-float/2addr v5, v2

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 11
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v2, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float v5, p1, v4

    add-float/2addr v5, p3

    iget p3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->e:F

    add-float/2addr v2, p3

    add-float/2addr p3, p1

    add-float/2addr p3, v4

    invoke-direct {v0, v3, v5, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private h(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->b:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->d:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->c:F

    add-float/2addr p1, v1

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
