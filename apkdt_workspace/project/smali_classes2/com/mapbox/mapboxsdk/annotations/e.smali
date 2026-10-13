.class public Lcom/mapbox/mapboxsdk/annotations/e;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mapbox/mapboxsdk/maps/n;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Landroid/graphics/PointF;

.field private i:Z

.field private j:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/e$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/annotations/e$c;-><init>(Lcom/mapbox/mapboxsdk/annotations/e;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V

    return-void
.end method

.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;ILcom/mapbox/mapboxsdk/maps/n;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/e$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/annotations/e$c;-><init>(Lcom/mapbox/mapboxsdk/annotations/e;)V

    .line 3
    iput p2, p0, Lcom/mapbox/mapboxsdk/annotations/e;->j:I

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/annotations/e;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->g:F

    return p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/annotations/e;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/annotations/e;->i:Z

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/annotations/e;->c:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance p2, Lcom/mapbox/mapboxsdk/annotations/e$a;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/annotations/e$a;-><init>(Lcom/mapbox/mapboxsdk/annotations/e;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p2, Lcom/mapbox/mapboxsdk/annotations/e$b;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/annotations/e$b;-><init>(Lcom/mapbox/mapboxsdk/annotations/e;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/annotations/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/e;->d()V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/annotations/e;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->d:F

    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/maps/n;

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/e;->a()Lcom/mapbox/mapboxsdk/annotations/e;

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/maps/n;

    .line 38
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->i:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->i:Z

    .line 40
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/e;->b()Lcom/mapbox/mapboxsdk/annotations/Marker;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->j()Lcom/mapbox/mapboxsdk/maps/n$m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n$m;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    :cond_1
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Lcom/mapbox/mapboxsdk/annotations/e;

    :cond_2
    return-object p0
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/annotations/Marker;Lcom/mapbox/mapboxsdk/geometry/LatLng;II)Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 18
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p5

    .line 8
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Lcom/mapbox/mapboxsdk/annotations/e;

    .line 9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/maps/n;

    .line 11
    iget-object v5, v0, Lcom/mapbox/mapboxsdk/annotations/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v5, v6, v6}, Landroid/view/View;->measure(II)V

    int-to-float v7, v3

    .line 13
    iput v7, v0, Lcom/mapbox/mapboxsdk/annotations/e;->d:F

    neg-int v8, v1

    int-to-float v8, v8

    .line 14
    iput v8, v0, Lcom/mapbox/mapboxsdk/annotations/e;->e:F

    .line 15
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v4

    move-object/from16 v8, p3

    invoke-virtual {v4, v8}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v4

    iput-object v4, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    .line 16
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v4, v8

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 17
    iget-object v8, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    add-float/2addr v8, v7

    .line 18
    instance-of v7, v5, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v11

    int-to-float v11, v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v12

    int-to-float v12, v12

    .line 23
    sget v13, Lcom/mapbox/mapboxsdk/i;->mapbox_infowindow_margin:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 24
    sget v14, Lcom/mapbox/mapboxsdk/i;->mapbox_infowindow_tipview_width:I

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v7, v14

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v14, v7

    .line 26
    iget-object v15, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    const/16 v16, 0x0

    cmpl-float v17, v15, v16

    if-ltz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v15, v6

    if-gtz v6, :cond_4

    iget-object v6, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v15, v6, v16

    if-ltz v15, :cond_4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v6, v6, v15

    if-gtz v6, :cond_4

    cmpl-float v6, v10, v11

    if-lez v6, :cond_0

    sub-float/2addr v10, v11

    sub-float v6, v4, v10

    add-float/2addr v10, v7

    add-float/2addr v14, v10

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    move v15, v10

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    move v15, v10

    const/4 v10, 0x0

    :goto_0
    cmpg-float v16, v4, v12

    if-gez v16, :cond_1

    sub-float v4, v12, v4

    add-float/2addr v6, v4

    add-float/2addr v4, v7

    sub-float/2addr v14, v4

    move v4, v6

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v10, :cond_2

    sub-float/2addr v11, v15

    cmpg-float v10, v11, v13

    if-gez v10, :cond_2

    sub-float v4, v13, v11

    sub-float/2addr v6, v4

    sub-float/2addr v4, v7

    add-float/2addr v14, v4

    move v4, v6

    :cond_2
    if-eqz v16, :cond_3

    sub-float/2addr v4, v12

    cmpg-float v10, v4, v13

    if-gez v10, :cond_3

    sub-float/2addr v13, v4

    add-float/2addr v6, v13

    sub-float/2addr v13, v7

    sub-float/2addr v14, v13

    :cond_3
    move v4, v6

    .line 29
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;

    invoke-virtual {v6, v14}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->setArrowPosition(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;

    .line 30
    :cond_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setX(F)V

    .line 31
    invoke-virtual {v5, v8}, Landroid/view/View;->setY(F)V

    .line 32
    iget-object v6, v0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    sub-float/2addr v4, v1

    iput v4, v0, Lcom/mapbox/mapboxsdk/annotations/e;->f:F

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Lcom/mapbox/mapboxsdk/annotations/e;->g:F

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/annotations/e;->a()Lcom/mapbox/mapboxsdk/annotations/e;

    move-object/from16 v1, p1

    .line 35
    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iput-boolean v9, v0, Lcom/mapbox/mapboxsdk/annotations/e;->i:Z

    :cond_6
    return-object v0
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Marker;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/e;->j:I

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0, p2}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V

    .line 50
    :cond_0
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->f()Ljava/lang/String;

    move-result-object p2

    .line 52
    sget p3, Lcom/mapbox/mapboxsdk/k;->infowindow_title:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_1

    .line 54
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->e()Ljava/lang/String;

    move-result-object p1

    .line 58
    sget p2, Lcom/mapbox/mapboxsdk/k;->infowindow_description:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 60
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method b()Lcom/mapbox/mapboxsdk/annotations/Marker;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/annotations/Marker;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/maps/n;

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/annotations/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->d()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    .line 6
    instance-of v0, v2, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->f:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/e;->g:F

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    :cond_1
    return-void
.end method
