.class public Lcom/mapbox/android/gestures/m;
.super Lcom/mapbox/android/gestures/i;
.source "SidewaysShoveGestureDetector.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/gestures/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/gestures/i<",
        "Lcom/mapbox/android/gestures/m$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private v:F

.field private w:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mapbox/android/gestures/m;->z:Ljava/util/Set;

    .line 2
    sget-object v0, Lcom/mapbox/android/gestures/m;->z:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/gestures/i;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/m;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/mapbox/android/gestures/m;->w:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/mapbox/android/gestures/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mapbox/android/gestures/m;->v:F

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mapbox/android/gestures/m;->w:F

    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/gestures/m;->c(F)V

    return-void
.end method

.method protected d()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/e;->d()Z

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/m;->q()F

    move-result v0

    iput v0, p0, Lcom/mapbox/android/gestures/m;->y:F

    .line 3
    iget v0, p0, Lcom/mapbox/android/gestures/m;->x:F

    iget v1, p0, Lcom/mapbox/android/gestures/m;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mapbox/android/gestures/m;->x:F

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mapbox/android/gestures/m;->y:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v1, Lcom/mapbox/android/gestures/m$a;

    iget v2, p0, Lcom/mapbox/android/gestures/m;->x:F

    invoke-interface {v1, p0, v0, v2}, Lcom/mapbox/android/gestures/m$a;->b(Lcom/mapbox/android/gestures/m;FF)Z

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xe

    .line 6
    invoke-virtual {p0, v0}, Lcom/mapbox/android/gestures/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/m$a;

    invoke-interface {v0, p0}, Lcom/mapbox/android/gestures/m$a;->a(Lcom/mapbox/android/gestures/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/i;->k()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected i()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/e;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/m;->r()Z

    move-result v0

    if-nez v0, :cond_0

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

.method protected j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/e;->j()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mapbox/android/gestures/m;->x:F

    return-void
.end method

.method protected l()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mapbox/android/gestures/i;->l()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/gestures/a;->h:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/gestures/m$a;

    iget v1, p0, Lcom/mapbox/android/gestures/i;->t:F

    iget v2, p0, Lcom/mapbox/android/gestures/i;->u:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/gestures/m$a;->a(Lcom/mapbox/android/gestures/m;FF)V

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
    sget-object v0, Lcom/mapbox/android/gestures/m;->z:Ljava/util/Set;

    return-object v0
.end method

.method q()F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v4, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v6, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v6, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v2, v0

    return v2
.end method

.method r()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/e;->m:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/gestures/h;

    iget-object v2, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mapbox/android/gestures/e;->l:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v1, v2, v4}, Lcom/mapbox/android/gestures/h;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/gestures/d;

    .line 3
    invoke-virtual {v0}, Lcom/mapbox/android/gestures/d;->c()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/d;->a()F

    move-result v0

    float-to-double v6, v0

    .line 4
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v6

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 6
    iget v2, p0, Lcom/mapbox/android/gestures/m;->v:F

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gtz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
