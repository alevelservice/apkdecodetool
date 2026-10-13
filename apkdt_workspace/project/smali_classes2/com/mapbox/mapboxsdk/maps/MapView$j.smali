.class Lcom/mapbox/mapboxsdk/maps/MapView$j;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/mapbox/mapboxsdk/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/MapView$j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView$j;->a()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->a:I

    .line 3
    iget p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$j;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$t;)V

    :cond_0
    return-void
.end method
