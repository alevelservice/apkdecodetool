.class public Lcom/mapbox/mapboxsdk/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/NativeMapView$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/MapView$g;,
        Lcom/mapbox/mapboxsdk/maps/MapView$k;,
        Lcom/mapbox/mapboxsdk/maps/MapView$i;,
        Lcom/mapbox/mapboxsdk/maps/MapView$j;,
        Lcom/mapbox/mapboxsdk/maps/MapView$h;,
        Lcom/mapbox/mapboxsdk/maps/MapView$o;,
        Lcom/mapbox/mapboxsdk/maps/MapView$w;,
        Lcom/mapbox/mapboxsdk/maps/MapView$v;,
        Lcom/mapbox/mapboxsdk/maps/MapView$s;,
        Lcom/mapbox/mapboxsdk/maps/MapView$p;,
        Lcom/mapbox/mapboxsdk/maps/MapView$u;,
        Lcom/mapbox/mapboxsdk/maps/MapView$z;,
        Lcom/mapbox/mapboxsdk/maps/MapView$t;,
        Lcom/mapbox/mapboxsdk/maps/MapView$y;,
        Lcom/mapbox/mapboxsdk/maps/MapView$q;,
        Lcom/mapbox/mapboxsdk/maps/MapView$r;,
        Lcom/mapbox/mapboxsdk/maps/MapView$x;,
        Lcom/mapbox/mapboxsdk/maps/MapView$l;,
        Lcom/mapbox/mapboxsdk/maps/MapView$m;,
        Lcom/mapbox/mapboxsdk/maps/MapView$n;
    }
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/maps/k;

.field private final f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

.field private final g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

.field private h:Lcom/mapbox/mapboxsdk/maps/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/mapbox/mapboxsdk/maps/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Lcom/mapbox/mapboxsdk/maps/MapView$g;

.field private l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

.field private m:Z

.field mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

.field private n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/graphics/PointF;

.field private final p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

.field private final q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

.field private final r:Lcom/mapbox/mapboxsdk/maps/e;

.field private s:Lcom/mapbox/mapboxsdk/maps/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/mapbox/mapboxsdk/maps/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/k;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/k;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$j;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$h;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$i;

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/e;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    .line 8
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/k;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/k;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    .line 11
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    .line 12
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$j;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

    .line 13
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$h;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    .line 14
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$i;

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

    .line 15
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/e;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    .line 16
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/k;

    invoke-direct {p3}, Lcom/mapbox/mapboxsdk/maps/k;-><init>()V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    .line 19
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-direct {p3, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    .line 20
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$j;

    invoke-direct {p3, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

    .line 21
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$h;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapView$h;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    .line 22
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$i;

    invoke-direct {p3, p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapView$i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

    .line 23
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {p3}, Lcom/mapbox/mapboxsdk/maps/e;-><init>()V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    .line 24
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/k;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/k;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    .line 27
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    .line 28
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$j;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

    .line 29
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$h;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    .line 30
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$i;

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

    .line 31
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/e;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    if-nez p2, :cond_0

    .line 32
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method private a()Lcom/mapbox/mapboxsdk/maps/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$a;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    return-object v0
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/e;)Lcom/mapbox/mapboxsdk/maps/n$g;
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$b;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$b;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/e;)V

    return-object v0
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 8

    .line 3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 5
    new-instance v7, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G()Z

    move-result v5

    .line 7
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/MapView$d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/MapView$d;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    .line 8
    invoke-virtual {p0, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 9
    iput-object v7, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->j:Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 12
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, v4}, Lcom/mapbox/mapboxsdk/maps/MapView$e;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    .line 13
    invoke-virtual {p0, p1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 14
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->j:Landroid/view/View;

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l()Z

    move-result v3

    .line 16
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/NativeMapView;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getPixelRatio()F

    move-result v2

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;-><init>(Landroid/content/Context;FZLcom/mapbox/mapboxsdk/maps/NativeMapView$c;Lcom/mapbox/mapboxsdk/maps/NativeMapView$a;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    return-void
.end method

.method static synthetic access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/maps/MapView;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->o:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->o:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->d()V

    return-void
.end method

.method static synthetic access$700(Lcom/mapbox/mapboxsdk/maps/MapView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->m:Z

    return p0
.end method

.method static synthetic access$800(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->b()V

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/e;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$c;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$c;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/e;)V

    return-object v0
.end method

.method private b()V
    .locals 19

    move-object/from16 v9, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 2
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    invoke-direct/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->a()Lcom/mapbox/mapboxsdk/maps/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView$h;->a(Lcom/mapbox/mapboxsdk/maps/f;)V

    .line 3
    new-instance v15, Lcom/mapbox/mapboxsdk/maps/w;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v15, v0, v9}, Lcom/mapbox/mapboxsdk/maps/w;-><init>(Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/MapView;)V

    .line 4
    new-instance v14, Lcom/mapbox/mapboxsdk/maps/b0;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->p:Lcom/mapbox/mapboxsdk/maps/MapView$h;

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getPixelRatio()F

    move-result v1

    invoke-direct {v14, v15, v0, v1, v9}, Lcom/mapbox/mapboxsdk/maps/b0;-><init>(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/f;FLcom/mapbox/mapboxsdk/maps/MapView;)V

    .line 5
    new-instance v2, La/e/d;

    invoke-direct {v2}, La/e/d;-><init>()V

    .line 6
    new-instance v3, Lcom/mapbox/mapboxsdk/maps/g;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v3, v0}, Lcom/mapbox/mapboxsdk/maps/g;-><init>(Lcom/mapbox/mapboxsdk/maps/q;)V

    .line 7
    new-instance v4, Lcom/mapbox/mapboxsdk/maps/a;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v4, v0, v2}, Lcom/mapbox/mapboxsdk/maps/a;-><init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V

    .line 8
    new-instance v5, Lcom/mapbox/mapboxsdk/maps/o;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v5, v0, v2, v3}, Lcom/mapbox/mapboxsdk/maps/o;-><init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;Lcom/mapbox/mapboxsdk/maps/g;)V

    .line 9
    new-instance v6, Lcom/mapbox/mapboxsdk/maps/s;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v6, v0, v2}, Lcom/mapbox/mapboxsdk/maps/s;-><init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V

    .line 10
    new-instance v7, Lcom/mapbox/mapboxsdk/maps/u;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v7, v0, v2}, Lcom/mapbox/mapboxsdk/maps/u;-><init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V

    .line 11
    new-instance v8, Lcom/mapbox/mapboxsdk/maps/x;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-direct {v8, v0, v2}, Lcom/mapbox/mapboxsdk/maps/x;-><init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V

    .line 12
    new-instance v13, Lcom/mapbox/mapboxsdk/maps/b;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/b;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;La/e/d;Lcom/mapbox/mapboxsdk/maps/g;Lcom/mapbox/mapboxsdk/maps/c;Lcom/mapbox/mapboxsdk/maps/p;Lcom/mapbox/mapboxsdk/maps/t;Lcom/mapbox/mapboxsdk/maps/v;Lcom/mapbox/mapboxsdk/maps/y;)V

    .line 13
    new-instance v7, Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {v7, v9, v0, v1}, Lcom/mapbox/mapboxsdk/maps/a0;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/e;)V

    .line 14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v12, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->q:Lcom/mapbox/mapboxsdk/maps/MapView$i;

    iget-object v2, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    move-object v11, v0

    move-object v5, v13

    move-object v13, v7

    move-object v6, v14

    move-object v3, v15

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v8

    invoke-direct/range {v11 .. v18}, Lcom/mapbox/mapboxsdk/maps/n;-><init>(Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/n$k;Lcom/mapbox/mapboxsdk/maps/e;Ljava/util/List;)V

    iput-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    .line 16
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, v5}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/b;)V

    .line 17
    new-instance v11, Lcom/mapbox/mapboxsdk/maps/l;

    iget-object v12, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    move-object v0, v11

    move-object v1, v10

    move-object v2, v7

    move-object v4, v6

    move-object v13, v6

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/l;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/b;Lcom/mapbox/mapboxsdk/maps/e;)V

    iput-object v11, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    .line 18
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/m;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {v0, v7, v13, v1}, Lcom/mapbox/mapboxsdk/maps/m;-><init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/l;)V

    iput-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->t:Lcom/mapbox/mapboxsdk/maps/m;

    .line 19
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/location/k;

    invoke-direct {v1, v0, v7, v8}, Lcom/mapbox/mapboxsdk/location/k;-><init>(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/a0;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/location/k;)V

    const/4 v0, 0x1

    .line 20
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 21
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 22
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 23
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 24
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->isConnected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Z)V

    .line 26
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->u:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, v10, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/os/Bundle;)V

    .line 29
    :goto_0
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;->d()V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$f;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$f;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setMapStrictModeEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/d;->a(Z)V

    return-void
.end method


# virtual methods
.method public addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    return-void
.end method

.method public addOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$m;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$m;)V

    return-void
.end method

.method public addOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$n;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$n;)V

    return-void
.end method

.method public addOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$o;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$o;)V

    return-void
.end method

.method public addOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$p;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$p;)V

    return-void
.end method

.method public addOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$q;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$q;)V

    return-void
.end method

.method public addOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$r;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$r;)V

    return-void
.end method

.method public addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V

    return-void
.end method

.method public addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V

    return-void
.end method

.method public addOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$u;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$u;)V

    return-void
.end method

.method public addOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$v;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$v;)V

    return-void
.end method

.method public addOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$w;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$w;)V

    return-void
.end method

.method public addOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$x;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$x;)V

    return-void
.end method

.method public addOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$y;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$y;)V

    return-void
.end method

.method public addOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$z;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->a(Lcom/mapbox/mapboxsdk/maps/MapView$z;)V

    return-void
.end method

.method public getMapAsync(Lcom/mapbox/mapboxsdk/maps/r;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$k;->a(Lcom/mapbox/mapboxsdk/maps/r;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/r;->a(Lcom/mapbox/mapboxsdk/maps/n;)V

    :goto_0
    return-void
.end method

.method getMapboxMap()Lcom/mapbox/mapboxsdk/maps/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    return-object v0
.end method

.method public getPixelRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getPixelRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    :cond_0
    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->j:Landroid/view/View;

    return-object v0
.end method

.method public getViewContent()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected initialiseAttributionView()Landroid/widget/ImageView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "attrView"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mapbox/mapboxsdk/m;->mapbox_attributionsIconContentDescription:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mapbox/mapboxsdk/j;->mapbox_info_bg_selector:I

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance v1, Lcom/mapbox/mapboxsdk/maps/MapView$g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/maps/MapView$g;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->k:Lcom/mapbox/mapboxsdk/maps/MapView$g;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected initialiseCompassView()Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
    .locals 3

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    const-string v1, "compassView"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mapbox/mapboxsdk/m;->mapbox_compassContentDescription:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->a(Lcom/mapbox/mapboxsdk/maps/e;)Lcom/mapbox/mapboxsdk/maps/n$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->injectCompassAnimationListener(Lcom/mapbox/mapboxsdk/maps/n$g;)V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->r:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->b(Lcom/mapbox/mapboxsdk/maps/e;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    return-object v0
.end method

.method protected initialiseLogoView()Landroid/widget/ImageView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "logoView"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mapbox/mapboxsdk/j;->mapbox_logo_icon:I

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 5
    sget v0, Lcom/mapbox/mapboxsdk/m;->mapbox_mapActionDescription:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 7
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void

    .line 8
    :cond_1
    new-instance p1, Lcom/mapbox/mapboxsdk/r/d;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/r/d;-><init>()V

    throw p1
.end method

.method public isDestroyed()Z
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->m:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getTelemetry()Lcom/mapbox/mapboxsdk/maps/z;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/maps/z;->onAppUserTurnstileEvent()V

    goto :goto_0

    :cond_0
    const-string v0, "mapbox_savedState"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->u:Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->m:Z

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/k;->h()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->f:Lcom/mapbox/mapboxsdk/maps/MapView$k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$k;->e()V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->g:Lcom/mapbox/mapboxsdk/maps/MapView$j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;->a(Lcom/mapbox/mapboxsdk/maps/MapView$j;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->n:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->r()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->destroy()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onDestroy()V

    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->t:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/m;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->t:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/m;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->t:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/m;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLowMemory()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->m:Z

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "mapbox_savedState"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->h:Lcom/mapbox/mapboxsdk/maps/q;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(II)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->v:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->activate()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->d(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->activate()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->v:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->w()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onStart()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->k:Lcom/mapbox/mapboxsdk/maps/MapView$g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$g;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/l;->a()V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->x()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onStop()V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->v:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->deactivate()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->d(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->v:Z

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->s:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->t:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/m;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRendererScheduler;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling MapView#queueEvent before mapRenderer is created."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    return-void
.end method

.method public removeOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$m;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$m;)V

    return-void
.end method

.method public removeOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$n;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$n;)V

    return-void
.end method

.method public removeOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$o;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$o;)V

    return-void
.end method

.method public removeOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$p;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$p;)V

    return-void
.end method

.method public removeOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$q;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$q;)V

    return-void
.end method

.method public removeOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$r;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$r;)V

    return-void
.end method

.method public removeOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V

    return-void
.end method

.method public removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V

    return-void
.end method

.method public removeOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$u;)V

    return-void
.end method

.method public removeOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$v;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$v;)V

    return-void
.end method

.method public removeOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$w;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$w;)V

    return-void
.end method

.method public removeOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$x;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$x;)V

    return-void
.end method

.method public removeOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$y;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$y;)V

    return-void
.end method

.method public removeOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$z;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->e:Lcom/mapbox/mapboxsdk/maps/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/k;->b(Lcom/mapbox/mapboxsdk/maps/MapView$z;)V

    return-void
.end method

.method setMapboxMap(Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->i:Lcom/mapbox/mapboxsdk/maps/n;

    return-void
.end method

.method public setMaximumFps(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->l:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->setMaximumFps(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling MapView#setMaximumFps before mapRenderer is created."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
