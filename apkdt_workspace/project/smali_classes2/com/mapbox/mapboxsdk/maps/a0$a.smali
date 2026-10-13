.class Lcom/mapbox/mapboxsdk/maps/a0$a;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/a0;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0$a;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0$a;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/a0;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0$a;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/a0;->b(Lcom/mapbox/mapboxsdk/maps/a0;)Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    :cond_0
    return-void
.end method
