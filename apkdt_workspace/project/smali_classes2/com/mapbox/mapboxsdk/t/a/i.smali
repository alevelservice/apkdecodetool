.class final Lcom/mapbox/mapboxsdk/t/a/i;
.super Ljava/lang/Object;
.source "DraggableAnnotationController.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/t/a/i$b;
    }
.end annotation


# static fields
.field private static j:Lcom/mapbox/mapboxsdk/t/a/i;


# instance fields
.field private a:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private b:Lcom/mapbox/mapboxsdk/maps/n;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/t/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Lcom/mapbox/mapboxsdk/t/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/mapbox/mapboxsdk/t/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/t/a/i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/android/gestures/AndroidGesturesManager;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/android/gestures/AndroidGesturesManager;IIII)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->c:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 7
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/i;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 8
    iput p4, p0, Lcom/mapbox/mapboxsdk/t/a/i;->d:I

    .line 9
    iput p5, p0, Lcom/mapbox/mapboxsdk/t/a/i;->e:I

    .line 10
    iput p6, p0, Lcom/mapbox/mapboxsdk/t/a/i;->f:I

    .line 11
    iput p7, p0, Lcom/mapbox/mapboxsdk/t/a/i;->g:I

    .line 12
    new-instance p2, Lcom/mapbox/mapboxsdk/t/a/i$b;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/mapbox/mapboxsdk/t/a/i$b;-><init>(Lcom/mapbox/mapboxsdk/t/a/i;Lcom/mapbox/mapboxsdk/t/a/i$a;)V

    invoke-virtual {p3, p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/c$a;)V

    .line 13
    new-instance p2, Lcom/mapbox/mapboxsdk/t/a/i$a;

    invoke-direct {p2, p0, p3}, Lcom/mapbox/mapboxsdk/t/a/i$a;-><init>(Lcom/mapbox/mapboxsdk/t/a/i;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/t/a/i;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    return-object p0
.end method

.method public static a(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/t/a/i;
    .locals 2

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/t/a/i;->j:Lcom/mapbox/mapboxsdk/t/a/i;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mapbox/mapboxsdk/t/a/i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    if-ne v1, p0, :cond_0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/t/a/i;->b:Lcom/mapbox/mapboxsdk/maps/n;

    if-eq v0, p1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/t/a/i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/t/a/i;->j:Lcom/mapbox/mapboxsdk/t/a/i;

    .line 4
    :cond_1
    sget-object p0, Lcom/mapbox/mapboxsdk/t/a/i;->j:Lcom/mapbox/mapboxsdk/t/a/i;

    return-object p0
.end method

.method private static c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/t/a/i;->j:Lcom/mapbox/mapboxsdk/t/a/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/t/a/i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 3
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/t/a/i;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 4
    sput-object v1, Lcom/mapbox/mapboxsdk/t/a/i;->j:Lcom/mapbox/mapboxsdk/t/a/i;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/t/a/b;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/android/gestures/c;)Z
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->g()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)V

    return v1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p1, v2}, Lcom/mapbox/android/gestures/c;->c(I)Lcom/mapbox/android/gestures/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/b;->a()F

    move-result v0

    iget v3, p0, Lcom/mapbox/mapboxsdk/t/a/i;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/b;->b()F

    move-result v3

    iget v4, p0, Lcom/mapbox/mapboxsdk/t/a/i;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 12
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v5, v0, v3

    if-ltz v5, :cond_4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/mapbox/mapboxsdk/t/a/i;->f:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->g:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/t/a/i;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 15
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v3

    iget v4, p0, Lcom/mapbox/mapboxsdk/t/a/i;->d:I

    int-to-float v4, v4

    iget v5, p0, Lcom/mapbox/mapboxsdk/t/a/i;->e:I

    int-to-float v5, v5

    .line 16
    invoke-virtual {v0, v3, p1, v4, v5}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/android/gestures/b;FF)Lcom/mapbox/geojson/Geometry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/mapbox/geojson/Geometry;)V

    .line 18
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/b;->d()V

    .line 19
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/s;

    .line 20
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    invoke-interface {v0, v2}, Lcom/mapbox/mapboxsdk/t/a/s;->a(Lcom/mapbox/mapboxsdk/t/a/a;)V

    goto :goto_0

    :cond_3
    return v1

    .line 21
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)V

    return v1

    :cond_5
    return v2
.end method

.method a(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)Z
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/t/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/t/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/t/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/t/a/s;

    .line 25
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/t/a/s;->c(Lcom/mapbox/mapboxsdk/t/a/a;)V

    goto :goto_0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    .line 27
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)V

    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/t/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/t/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/t/a/b;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/s;

    .line 10
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/s;->b(Lcom/mapbox/mapboxsdk/t/a/a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->h:Lcom/mapbox/mapboxsdk/t/a/a;

    .line 12
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->i:Lcom/mapbox/mapboxsdk/t/a/b;

    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/t/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/mapbox/mapboxsdk/t/a/i;->c()V

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/android/gestures/c;)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/t/a/b;

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->g()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0, v2, v1}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/t/a/a;Lcom/mapbox/mapboxsdk/t/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
