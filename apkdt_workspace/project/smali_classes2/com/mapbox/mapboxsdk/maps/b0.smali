.class public final Lcom/mapbox/mapboxsdk/maps/b0;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private A:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field B:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field C:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field D:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private E:D

.field private final a:Lcom/mapbox/mapboxsdk/maps/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/mapbox/mapboxsdk/maps/MapView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/mapbox/mapboxsdk/maps/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:[I

.field f:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final g:[I

.field private h:Lcom/mapbox/mapboxsdk/maps/d;

.field i:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final j:[I

.field private final k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:F

.field private z:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/f;FLcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->m:Z

    .line 7
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->n:Z

    .line 8
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->o:Z

    .line 9
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->p:Z

    .line 10
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->q:Z

    .line 11
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->r:Z

    .line 12
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->s:Z

    .line 13
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->t:Z

    .line 14
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->u:Z

    .line 15
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->v:Z

    .line 16
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->w:Z

    .line 17
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->x:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->y:F

    .line 19
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->z:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->B:Z

    .line 21
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->C:Z

    .line 22
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->D:Z

    .line 23
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->c:Lcom/mapbox/mapboxsdk/maps/w;

    .line 24
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/b0;->a:Lcom/mapbox/mapboxsdk/maps/f;

    .line 25
    iput p3, p0, Lcom/mapbox/mapboxsdk/maps/b0;->k:F

    .line 26
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-void
.end method

.method private a(Landroid/content/Context;[I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 37
    aget p1, p2, p1

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget p2, p2, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->a(IIII)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 39
    sget p2, Lcom/mapbox/mapboxsdk/i;->mapbox_four_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 40
    sget v0, Lcom/mapbox/mapboxsdk/i;->mapbox_ninety_two_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 41
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->a(IIII)V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/res/Resources;[I)V
    .locals 3
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 34
    aget p1, p2, p1

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget p2, p2, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->c(IIII)V

    goto :goto_0

    .line 35
    :cond_0
    sget p2, Lcom/mapbox/mapboxsdk/i;->mapbox_four_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 36
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->c(IIII)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/View;[IIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 62
    aput p3, p2, v0

    const/4 v0, 0x1

    .line 63
    aput p4, p2, v0

    const/4 v0, 0x2

    .line 64
    aput p5, p2, v0

    const/4 v0, 0x3

    .line 65
    aput p6, p2, v0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x11

    if-lt p4, p6, :cond_0

    .line 69
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 70
    invoke-virtual {p2, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->r(Z)V

    .line 16
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->p(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->h(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->m(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->q(Z)V

    .line 20
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->f(Z)V

    .line 21
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->l(Z)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V
    .locals 5
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->B:Z

    .line 23
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseCompassView()Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    .line 24
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Z)V

    .line 25
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    .line 26
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k()[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 27
    aget v2, v1, v2

    aget v0, v1, v0

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    goto :goto_0

    .line 28
    :cond_0
    sget v0, Lcom/mapbox/mapboxsdk/i;->mapbox_four_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 29
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(Z)V

    .line 31
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 32
    sget v0, Lcom/mapbox/mapboxsdk/j;->mapbox_compass_icon:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroidx/core/content/res/e;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/graphics/drawable/Drawable;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->C:Z

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Z)V

    .line 15
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(I)V

    .line 16
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->d()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/content/Context;[I)V

    .line 17
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->a(Landroid/content/Context;)I

    move-result p2

    .line 19
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(I)V

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V
    .locals 1
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->D:Z

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->k(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->d(I)V

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t()[I

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/content/res/Resources;[I)V

    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "mapbox_atrrEnabled"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->C:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->C:Z

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Z)V

    const-string v0, "mapbox_attrGravity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(I)V

    const-string v0, "mapbox_attrMarginLeft"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mapbox_attrMarginTop"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mapbox_attrMarginRight"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "mapbox_atrrMarginBottom"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(IIII)V

    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "mapbox_compassEnabled"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->B:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseCompassView()Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->B:Z

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Z)V

    const-string v0, "mapbox_compassGravity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    const-string v0, "mapbox_compassMarginLeft"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mapbox_compassMarginTop"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mapbox_compassMarginRight"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "mapbox_compassMarginBottom"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 11
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    const-string v0, "mapbox_compassFade"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(Z)V

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mapbox_compassImage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "mapbox_deselectMarkerOnTap"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->d(Z)V

    return-void
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "mapbox_userFocalPoint"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mapbox_horizontalScrollEnabled"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->h(Z)V

    const-string v0, "mapbox_zoomEnabled"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->r(Z)V

    const-string v0, "mapbox_scrollEnabled"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->p(Z)V

    const-string v0, "mapbox_rotateEnabled"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->m(Z)V

    const-string v0, "mapbox_tiltEnabled"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->q(Z)V

    const-string v0, "mapbox_doubleTapEnabled"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->f(Z)V

    const-string v0, "mapbox_scaleAnimationEnabled"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->o(Z)V

    const-string v0, "mapbox_rotateAnimationEnabled"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->n(Z)V

    const-string v0, "mapbox_flingAnimationEnabled"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->g(Z)V

    const-string v0, "mapbox_increaseRotateThreshold"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->i(Z)V

    const-string v0, "mapbox_disableRotateWhenScaling"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->e(Z)V

    const-string v0, "mapbox_increaseScaleThreshold"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->j(Z)V

    const-string v0, "mapbox_quickZoom"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->l(Z)V

    const-string v0, "mapbox_zoomRate"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(F)V

    return-void
.end method

.method private h(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "mapbox_logoEnabled"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->D:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->D:Z

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->k(Z)V

    const-string v0, "mapbox_logoGravity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->d(I)V

    const-string v0, "mapbox_logoMarginLeft"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mapbox_logoMarginTop"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mapbox_logoMarginRight"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "mapbox_logoMarginBottom"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->c(IIII)V

    return-void
.end method

.method private i(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->b()I

    move-result v0

    const-string v1, "mapbox_attrGravity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->d()I

    move-result v0

    const-string v1, "mapbox_attrMarginLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->f()I

    move-result v0

    const-string v1, "mapbox_attrMarginTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->e()I

    move-result v0

    const-string v1, "mapbox_attrMarginRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->c()I

    move-result v0

    const-string v1, "mapbox_atrrMarginBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->x()Z

    move-result v0

    const-string v1, "mapbox_atrrEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->y()Z

    move-result v0

    const-string v1, "mapbox_compassEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->g()I

    move-result v0

    const-string v1, "mapbox_compassGravity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->j()I

    move-result v0

    const-string v1, "mapbox_compassMarginLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->l()I

    move-result v0

    const-string v1, "mapbox_compassMarginTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->i()I

    move-result v0

    const-string v1, "mapbox_compassMarginBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->k()I

    move-result v0

    const-string v1, "mapbox_compassMarginRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->z()Z

    move-result v0

    const-string v1, "mapbox_compassFade"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/a;->b(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v0

    const-string v1, "mapbox_compassImage"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method private k(Landroid/os/Bundle;)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->A()Z

    move-result v0

    const-string v1, "mapbox_deselectMarkerOnTap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private l(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->m()Landroid/graphics/PointF;

    move-result-object v0

    const-string v1, "mapbox_userFocalPoint"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private m(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->E()Z

    move-result v0

    const-string v1, "mapbox_horizontalScrollEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result v0

    const-string v1, "mapbox_zoomEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v0

    const-string v1, "mapbox_scrollEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->J()Z

    move-result v0

    const-string v1, "mapbox_rotateEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->N()Z

    move-result v0

    const-string v1, "mapbox_tiltEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->C()Z

    move-result v0

    const-string v1, "mapbox_doubleTapEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->L()Z

    move-result v0

    const-string v1, "mapbox_scaleAnimationEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->K()Z

    move-result v0

    const-string v1, "mapbox_rotateAnimationEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->D()Z

    move-result v0

    const-string v1, "mapbox_flingAnimationEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->F()Z

    move-result v0

    const-string v1, "mapbox_increaseRotateThreshold"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->B()Z

    move-result v0

    const-string v1, "mapbox_disableRotateWhenScaling"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->G()Z

    move-result v0

    const-string v1, "mapbox_increaseScaleThreshold"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->I()Z

    move-result v0

    const-string v1, "mapbox_quickZoom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->v()F

    move-result v0

    const-string v1, "mapbox_zoomRate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private n(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->o()I

    move-result v0

    const-string v1, "mapbox_logoGravity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->q()I

    move-result v0

    const-string v1, "mapbox_logoMarginLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->s()I

    move-result v0

    const-string v1, "mapbox_logoMarginTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->r()I

    move-result v0

    const-string v1, "mapbox_logoMarginRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->p()I

    move-result v0

    const-string v1, "mapbox_logoMarginBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->H()Z

    move-result v0

    const-string v1, "mapbox_logoEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->z:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->w:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->q:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->u:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->p:Z

    return v0
.end method

.method public F()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->v:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->x:Z

    return v0
.end method

.method public H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->r:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->l:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->t:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->s:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->o:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->m:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->n:Z

    return v0
.end method

.method public a()Lcom/mapbox/mapboxsdk/maps/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->h:Lcom/mapbox/mapboxsdk/maps/d;

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 56
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->y:F

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 54
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 3
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p2, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->A:Landroid/graphics/PointF;

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->a:Lcom/mapbox/mapboxsdk/maps/f;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/f;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->g(Landroid/os/Bundle;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->d(Landroid/os/Bundle;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->h(Landroid/os/Bundle;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->c(Landroid/os/Bundle;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->e(Landroid/os/Bundle;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->E:D

    .line 45
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz p1, :cond_0

    .line 46
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->E:D

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->update(D)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->C:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v1, v1, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/h;->mapbox_blue:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 33
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/utils/b;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/utils/b;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public b(IIII)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 25
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v1, :cond_0

    .line 26
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->m(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->j(Landroid/os/Bundle;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->n(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->i(Landroid/os/Bundle;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->k(Landroid/os/Bundle;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 20
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->B:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setEnabled(Z)V

    .line 24
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->E:D

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->update(D)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public c(I)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public c(IIII)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 16
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth(Z)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->z:Z

    return-void
.end method

.method public e()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->w:Z

    return-void
.end method

.method public f()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->g:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->q:Z

    return-void
.end method

.method public g()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public g(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->u:Z

    return-void
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->getCompassImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->p:Z

    return-void
.end method

.method public i()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public i(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->v:Z

    return-void
.end method

.method public j()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public j(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->x:Z

    return-void
.end method

.method public k()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public k(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->D:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/res/Resources;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public l()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->e:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public l(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->r:Z

    return-void
.end method

.method public m()Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->A:Landroid/graphics/PointF;

    return-object v0
.end method

.method public m(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->l:Z

    return-void
.end method

.method public n()F
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->c:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/w;->b()F

    move-result v0

    return v0
.end method

.method public n(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->t:Z

    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public o(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->s:Z

    return-void
.end method

.method public p()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public p(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->o:Z

    return-void
.end method

.method public q()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public q(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->m:Z

    return-void
.end method

.method public r()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public r(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/b0;->n:Z

    return-void
.end method

.method public s()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->j:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->k:F

    return v0
.end method

.method public u()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->c:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/w;->d()F

    move-result v0

    return v0
.end method

.method public v()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->y:F

    return v0
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->r()I

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->p()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/b0;->c(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->j()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->k()I

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->i()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->e()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b0;->c()I

    move-result v3

    .line 6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/b0;->a(IIII)V

    return-void
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b0;->d:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isFadeCompassViewFacingNorth()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
