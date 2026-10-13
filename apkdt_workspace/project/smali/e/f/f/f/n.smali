.class public abstract Le/f/f/f/n;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"

# interfaces
.implements Le/f/f/f/j;
.implements Le/f/f/f/r;


# instance fields
.field A:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final B:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private C:F

.field private D:Z

.field private E:Z

.field private F:Le/f/f/f/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/graphics/drawable/Drawable;

.field protected f:Z

.field protected g:Z

.field protected h:F

.field protected final i:Landroid/graphics/Path;

.field protected j:Z

.field protected k:I

.field protected final l:Landroid/graphics/Path;

.field private final m:[F

.field final n:[F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field o:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final p:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final q:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final r:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final s:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field t:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final u:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final v:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final w:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final x:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final y:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field z:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/f/f/f/n;->f:Z

    .line 3
    iput-boolean v0, p0, Le/f/f/f/n;->g:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/f/f/f/n;->h:F

    .line 5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Le/f/f/f/n;->j:Z

    .line 7
    iput v0, p0, Le/f/f/f/n;->k:I

    .line 8
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->l:Landroid/graphics/Path;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 9
    iput-object v4, p0, Le/f/f/f/n;->m:[F

    new-array v3, v3, [F

    .line 10
    iput-object v3, p0, Le/f/f/f/n;->n:[F

    .line 11
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    .line 12
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->q:Landroid/graphics/RectF;

    .line 13
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->r:Landroid/graphics/RectF;

    .line 14
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->s:Landroid/graphics/RectF;

    .line 15
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->u:Landroid/graphics/Matrix;

    .line 16
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->v:Landroid/graphics/Matrix;

    .line 17
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    .line 18
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->x:Landroid/graphics/Matrix;

    .line 19
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->y:Landroid/graphics/Matrix;

    .line 20
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Le/f/f/f/n;->B:Landroid/graphics/Matrix;

    .line 21
    iput v1, p0, Le/f/f/f/n;->C:F

    .line 22
    iput-boolean v0, p0, Le/f/f/f/n;->D:Z

    .line 23
    iput-boolean v2, p0, Le/f/f/f/n;->E:Z

    .line 24
    iput-object p1, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 17
    iget v0, p0, Le/f/f/f/n;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 18
    iput p1, p0, Le/f/f/f/n;->C:F

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Le/f/f/f/n;->E:Z

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .line 12
    iget v0, p0, Le/f/f/f/n;->k:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Le/f/f/f/n;->h:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 13
    :cond_0
    iput p1, p0, Le/f/f/f/n;->k:I

    .line 14
    iput p2, p0, Le/f/f/f/n;->h:F

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Le/f/f/f/n;->E:Z

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public a(Le/f/f/f/s;)V
    .locals 0
    .param p1    # Le/f/f/f/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Le/f/f/f/n;->F:Le/f/f/f/s;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/f/f/f/n;->f:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/f/f/n;->E:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a([F)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/f/f/f/n;->m:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    iput-boolean v2, p0, Le/f/f/f/n;->g:Z

    goto :goto_3

    .line 6
    :cond_0
    array-length v3, p1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "radii should have exactly 8 values"

    invoke-static {v3, v5}, Lcom/facebook/common/internal/h;->a(ZLjava/lang/Object;)V

    .line 7
    iget-object v3, p0, Le/f/f/f/n;->m:[F

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-boolean v2, p0, Le/f/f/f/n;->g:Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 9
    iget-boolean v5, p0, Le/f/f/f/n;->g:Z

    aget v6, p1, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Le/f/f/f/n;->g:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_3
    :goto_3
    iput-boolean v1, p0, Le/f/f/f/n;->E:Z

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method a()Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 22
    iget-boolean v0, p0, Le/f/f/f/n;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/f/f/f/n;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Le/f/f/f/n;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected b()V
    .locals 8

    .line 5
    iget-boolean v0, p0, Le/f/f/f/n;->E:Z

    if-eqz v0, :cond_7

    .line 6
    iget-object v0, p0, Le/f/f/f/n;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object v0, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/f/f/f/n;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 8
    iget-boolean v0, p0, Le/f/f/f/n;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 10
    iget-object v3, p0, Le/f/f/f/n;->l:Landroid/graphics/Path;

    iget-object v4, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 12
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Le/f/f/f/n;->n:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 14
    iget-object v4, p0, Le/f/f/f/n;->m:[F

    aget v4, v4, v0

    iget v5, p0, Le/f/f/f/n;->C:F

    add-float/2addr v4, v5

    iget v5, p0, Le/f/f/f/n;->h:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Le/f/f/f/n;->l:Landroid/graphics/Path;

    iget-object v4, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 16
    :goto_1
    iget-object v0, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget v3, p0, Le/f/f/f/n;->h:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 17
    iget-object v0, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 18
    iget v0, p0, Le/f/f/f/n;->C:F

    iget-boolean v3, p0, Le/f/f/f/n;->D:Z

    if-eqz v3, :cond_2

    iget v3, p0, Le/f/f/f/n;->h:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 19
    iget-object v3, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    iget-boolean v3, p0, Le/f/f/f/n;->f:Z

    if-eqz v3, :cond_3

    .line 21
    iget-object v3, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    iget-object v4, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    .line 23
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 25
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 26
    :cond_3
    iget-boolean v2, p0, Le/f/f/f/n;->D:Z

    if-eqz v2, :cond_6

    .line 27
    iget-object v2, p0, Le/f/f/f/n;->o:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 28
    iput-object v2, p0, Le/f/f/f/n;->o:[F

    :cond_4
    const/4 v2, 0x0

    .line 29
    :goto_3
    iget-object v3, p0, Le/f/f/f/n;->n:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 30
    iget-object v3, p0, Le/f/f/f/n;->o:[F

    iget-object v4, p0, Le/f/f/f/n;->m:[F

    aget v4, v4, v2

    iget v5, p0, Le/f/f/f/n;->h:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    :cond_5
    iget-object v2, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    iget-object v3, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget-object v4, p0, Le/f/f/f/n;->o:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 32
    :cond_6
    iget-object v2, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    iget-object v3, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget-object v4, p0, Le/f/f/f/n;->m:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 33
    :goto_4
    iget-object v2, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 34
    iget-object v0, p0, Le/f/f/f/n;->i:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 35
    iput-boolean v1, p0, Le/f/f/f/n;->E:Z

    :cond_7
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/f/f/n;->D:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Le/f/f/f/n;->D:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/f/f/f/n;->E:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->F:Le/f/f/f/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Le/f/f/f/s;->a(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Le/f/f/f/n;->F:Le/f/f/f/s;

    iget-object v1, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Le/f/f/f/s;->a(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object v0, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/f/f/f/n;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Le/f/f/f/n;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Le/f/f/f/n;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Le/f/f/f/n;->s:Landroid/graphics/RectF;

    iget-object v1, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Le/f/f/f/n;->u:Landroid/graphics/Matrix;

    iget-object v1, p0, Le/f/f/f/n;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Le/f/f/f/n;->s:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 9
    iget-boolean v0, p0, Le/f/f/f/n;->D:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Le/f/f/f/n;->t:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Le/f/f/f/n;->t:Landroid/graphics/RectF;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    :goto_1
    iget-object v0, p0, Le/f/f/f/n;->t:Landroid/graphics/RectF;

    iget v1, p0, Le/f/f/f/n;->h:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v0, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    .line 16
    :cond_2
    iget-object v0, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    iget-object v1, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Le/f/f/f/n;->t:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 19
    :cond_4
    :goto_2
    iget-object v0, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    iget-object v1, p0, Le/f/f/f/n;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/f/f/f/n;->u:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->v:Landroid/graphics/Matrix;

    .line 20
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    iget-object v2, p0, Le/f/f/f/n;->A:Landroid/graphics/Matrix;

    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    :cond_5
    iput-boolean v1, p0, Le/f/f/f/n;->j:Z

    .line 23
    iget-object v0, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->y:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 24
    iget-object v0, p0, Le/f/f/f/n;->B:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 25
    iget-boolean v0, p0, Le/f/f/f/n;->D:Z

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Le/f/f/f/n;->B:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 27
    :cond_6
    iget-object v0, p0, Le/f/f/f/n;->B:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 28
    iget-object v0, p0, Le/f/f/f/n;->x:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->w:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 29
    iget-object v0, p0, Le/f/f/f/n;->v:Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 30
    iget-boolean v0, p0, Le/f/f/f/n;->D:Z

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Le/f/f/f/n;->A:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Le/f/f/f/n;->A:Landroid/graphics/Matrix;

    goto :goto_3

    .line 33
    :cond_7
    iget-object v2, p0, Le/f/f/f/n;->z:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 34
    :cond_8
    iget-object v0, p0, Le/f/f/f/n;->A:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 36
    :cond_9
    :goto_3
    iget-object v0, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Le/f/f/f/n;->q:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    iput-boolean v1, p0, Le/f/f/f/n;->E:Z

    .line 38
    iget-object v0, p0, Le/f/f/f/n;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Le/f/f/f/n;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_a
    return-void
.end method

.method public clearColorFilter()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoundedDrawable#draw"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Le/f/f/f/n;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
