.class public Lcom/mapbox/android/gestures/c;
.super Lcom/mapbox/android/gestures/i;
.source "MoveGestureDetector.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/gestures/c$b;,
        Lcom/mapbox/android/gestures/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/gestures/i<",
        "Lcom/mapbox/android/gestures/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mapbox/android/gestures/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/graphics/PointF;

.field private w:Z

.field x:F

.field y:F

.field private z:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mapbox/android/gestures/c;->C:Ljava/util/Set;

    .line 2
    sget-object v0, Lcom/mapbox/android/gestures/c;->C:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/gestures/i;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    return-void
.end method

.method private t()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/gestures/b;

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 5
    invoke-virtual {v2, v3, v1}, Lcom/mapbox/android/gestures/b;->a(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iput-object p1, p0, Lcom/mapbox/android/gestures/c;->z:Landroid/graphics/RectF;

    return-void
.end method

.method protected a(I)Z
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/mapbox/android/gestures/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/c;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/mapbox/android/gestures/c;->w:Z

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 6
    :cond_3
    iput-boolean v1, p0, Lcom/mapbox/android/gestures/c;->w:Z

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mapbox/android/gestures/b;

    invoke-direct {v4, v0, v1}, Lcom/mapbox/android/gestures/b;-><init>(FF)V

    .line 11
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    invoke-super {p0, p1}, Lcom/mapbox/android/gestures/i;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mapbox/android/gestures/c;->A:F

    return-void
.end method

.method public c(I)Lcom/mapbox/android/gestures/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/e;->g()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    iget-object v1, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/gestures/b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected d()Z
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/e;->d()Z

    .line 2
    invoke-direct {p0}, Lcom/mapbox/android/gestures/c;->t()V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/mapbox/android/gestures/c;->v:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mapbox/android/gestures/c;->x:F

    .line 6
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mapbox/android/gestures/c;->y:F

    .line 7
    iput-object v0, p0, Lcom/mapbox/android/gestures/c;->v:Landroid/graphics/PointF;

    .line 8
    iget-boolean v0, p0, Lcom/mapbox/android/gestures/c;->w:Z

    if-eqz v0, :cond_0

    .line 9
    iput-boolean v1, p0, Lcom/mapbox/android/gestures/c;->w:Z

    .line 10
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/c$a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/mapbox/android/gestures/c$a;->b(Lcom/mapbox/android/gestures/c;FF)Z

    move-result v0

    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/c$a;

    iget v1, p0, Lcom/mapbox/android/gestures/c;->x:F

    iget v2, p0, Lcom/mapbox/android/gestures/c;->y:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/gestures/c$a;->b(Lcom/mapbox/android/gestures/c;FF)Z

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 12
    invoke-virtual {p0, v0}, Lcom/mapbox/android/gestures/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/c$a;

    invoke-interface {v0, p0}, Lcom/mapbox/android/gestures/c$a;->a(Lcom/mapbox/android/gestures/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/i;->k()V

    .line 15
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/gestures/c;->v:Landroid/graphics/PointF;

    .line 16
    iput-boolean v1, p0, Lcom/mapbox/android/gestures/c;->w:Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/e;->j()V

    return-void
.end method

.method protected l()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/i;->l()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/c$a;

    iget v1, p0, Lcom/mapbox/android/gestures/i;->t:F

    iget v2, p0, Lcom/mapbox/android/gestures/i;->u:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/gestures/c$a;->a(Lcom/mapbox/android/gestures/c;FF)V

    return-void
.end method

.method protected p()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mapbox/android/gestures/c;->C:Ljava/util/Set;

    return-object v0
.end method

.method q()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/gestures/b;

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/android/gestures/b;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/mapbox/android/gestures/c;->A:F

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/mapbox/android/gestures/b;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/mapbox/android/gestures/c;->A:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/mapbox/android/gestures/c;->z:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public r()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/c;->A:F

    return v0
.end method

.method public s()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/c;->z:Landroid/graphics/RectF;

    return-object v0
.end method
