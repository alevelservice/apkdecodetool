.class Lcom/mapbox/mapboxsdk/maps/MapView$g;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/maps/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/mapbox/mapboxsdk/maps/b0;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/d;

    invoke-direct {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/d;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$g;->e:Lcom/mapbox/mapboxsdk/maps/d;

    .line 4
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$g;->f:Lcom/mapbox/mapboxsdk/maps/b0;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView$g;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;)V

    return-void
.end method

.method private b()Lcom/mapbox/mapboxsdk/maps/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$g;->f:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a()Lcom/mapbox/mapboxsdk/maps/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$g;->f:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a()Lcom/mapbox/mapboxsdk/maps/d;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$g;->e:Lcom/mapbox/mapboxsdk/maps/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView$g;->b()Lcom/mapbox/mapboxsdk/maps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/d;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView$g;->b()Lcom/mapbox/mapboxsdk/maps/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/d;->onClick(Landroid/view/View;)V

    return-void
.end method
